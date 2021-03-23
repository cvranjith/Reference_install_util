create or replace package body pkg_install_util_misc is
function fn_resource_val(p_prop_name in varchar2,p_service_name in varchar2, p_component_code in varchar2, p_installid in varchar2,p_service_type in varchar2)
return varchar2 is
    l_retval varchar2(2000);
begin
        begin
            select prop_val
            into    l_retval
            from    VW_PRODUCT_COMPONENT_SERVICE_PROPS
            where   COMPONENT_CODE =p_COMPONENT_CODE
            and     SERVICE_NAME = p_SERVICE_NAME 
            and     prop_name = p_prop_name;
        exception
            when no_data_found
            then
                begin
                    select  prop_val
                    into    l_retval
                    from    tb_install_props b
                    where   b.install_id = p_installid
                    and     b.prop_name = 'docker-dep.'||p_service_type||'.'||p_prop_name;
                exception
                    when no_data_found
                    then
                    null;
                end;
        end;
        return l_retval;
 end;

FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2
IS
BEGIN
RETURN PKG_INSTALL_UTIL.FN_REPLACE(P_TXT,P_INSTALL_ID);
END;
procedure pr_k8s_yaml(p_install_id in varchar2, p_component_code in varchar2 := null,p_service_name in varchar2:=null)
is
   b                boolean;
   l_net            varchar2(2000);
   l_install_name   varchar2(2000);
   l_limit          varchar2(2000);
   l_reservation    varchar2(2000);

begin
    owa_util.mime_header('text/plain',true);
    l_net := PKG_INSTALL_UTIL.prop_val(p_install_id,'network.name');
    l_install_name := PKG_INSTALL_UTIL.prop_val(p_install_id,'install.name');

    for i in 
    (
        select a.*,b.image_name,b.war_file,b.APP_CONTEXT_PATH, b.FLYWAY_DATA_SOURCES, b.DATA_SOURCES
        from    tb_install_service_hosts a,
                tm_product_component_services b,
                (select min(c.ord) ord, c.component_code from tm_product_components c group by c.component_code) c
        where   a.install_id = p_install_id
        and     a.required = 'Y'
        and     a.component_code = b.component_code
        and     a.SERVICE_NAME = b.service_name
        and     b.stack_yaml = 'Y'
        and     a.component_code = c.component_code
        and     b.component_code = nvl(p_component_code,b.component_code)
        and     b.service_name = nvl(p_service_name,b.service_name)
        and     b.component_code in (select d.component_code from tb_install_hosts d where d.install_id = a.install_id)
        order by c.ord,a.ord
    )
    loop
HTP.P('apiVersion: v1
kind: Service
metadata:
  name: '||i.SERVICE_NAME||'
  namespace: plato
spec:
  ports:
  - name: http 
    port: '||nvl(i.port_forward,'7001')||'
    targetPort: http
  selector:
    app: '||i.SERVICE_NAME||'
  type: NodePort
---
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: '||i.SERVICE_NAME||'
  namespace: plato
spec:
  replicas: 1 
  revisionHistoryLimit: 2
  selector:
    matchLabels:
      app: '||i.SERVICE_NAME||'
  template:
    metadata:
      annotations:
        version: v1.0
      labels:
        app: '||i.SERVICE_NAME||'
      name: '||i.SERVICE_NAME||'
      namespace: plato
    spec:
      containers:
        - image: "'||i.image_name||'"
          imagePullPolicy: Always
          name: '||i.SERVICE_NAME||'
          command: ["/opt/scripts/tomcatconfig.sh"]
          env:');
        for j in (
            select b.*, substr(prop_name,12) prop_name1
            from tb_install_props b where b.install_id = p_install_id
            and b.prop_name like 'docker-env.%'
            and substr(prop_name,12) not in (select c.prop_name from VW_PRODUCT_COMPONENT_SERVICE_PROPS c 
            where  c.COMPONENT_CODE = i.COMPONENT_CODE
            and    c.SERVICE_NAME = i.SERVICE_NAME 
            and    c.prop_type = 'env') 
            order by ord
            )
        loop
            j.prop_val := fn_replace(j.prop_val,p_install_id);
            htp.p('          - name: '||j.prop_name1||'
            value: "'|| j.prop_val ||'"');

        end loop;
        for j in
            (
            select prop_name,prop_val
            from   VW_PRODUCT_COMPONENT_SERVICE_PROPS
            where  COMPONENT_CODE = i.COMPONENT_CODE
            and    SERVICE_NAME = i.SERVICE_NAME 
            and    prop_type = 'env'
            )
        loop
            j.prop_val := fn_replace(j.prop_val,p_install_id);
            htp.p('          - name: '||j.prop_name||'
            value: "'|| j.prop_val ||'"');
        end loop;
htp.p('
          envFrom:
            - configMapRef:
                name: environment
          volumeMounts:   
            - name: plato-volume
              mountPath: "/scratch/share/k8" 
                     
          resources:
            limits:
              cpu: 100m
              memory: 1024Mi
            requests:
              cpu: 10m
              memory: 512Mi
  
          ports:
            - containerPort: '||nvl(i.port_forward,'7001')||'
              name: http 
          
      volumes:
        - name: plato-volume
          persistentVolumeClaim:
            claimName:  datadir-obx ');
    end loop;

end;

procedure pr_docker_stack_yaml(p_install_id in varchar2, p_component_code in varchar2 := null,p_service_name in varchar2:=null)
is
   l_net            varchar2(2000);
   l_install_name   varchar2(2000);
   l_limit          varchar2(2000);
   l_reservation    varchar2(2000);
   l_war_location   varchar2(2000);
   l_default_war_location varchar2(2000);
   l_component_code varchar2(2000) := p_component_code;
   l_part  number := 1;
   l_tmp   varchar2(2000);
   l_split number :=9999;
   type ty_props is table of varchar2(4000) index by varchar2(4000);
   tb_envs  ty_props;
   tb_ports ty_props;
   tb_vols  ty_props;
   l_prop   varchar2(4000);
   l_image_type varchar2(4000);
begin
    owa_util.mime_header('text/plain',true);
    htp.p('version: ''3.5''');
    htp.p('');
    htp.p('services:');
    l_net := PKG_INSTALL_UTIL.prop_val(p_install_id,'network.name');
    l_install_name := PKG_INSTALL_UTIL.prop_val(p_install_id,'install.name');
	l_default_war_location := PKG_INSTALL_UTIL.prop_val(p_install_id,'PLATO_WAR_LOCATION');
    l_image_type := PKG_INSTALL_UTIL.prop_val(p_install_id,'plato.image');
    if p_component_code like '%_part_%_of_%_by_%'
    then
        l_component_code := substr(p_component_code,1, (instr(p_component_code,'_part_')-1));
        l_tmp := substr(p_component_code,instr(p_component_code,'_part_')+6);
        l_tmp := substr(l_tmp,1,instr(l_tmp,'_of_')-1);
        l_split := substr(p_component_code,instr(p_component_code,'_by_')+4);
        l_part := l_tmp;
    end if;
    for i in 
    (
        select a.* from
        (
        select a.*, ceil((rownum / l_split)) part_no
        from
        (
        select a.*,b.image_name,b.war_file,b.APP_CONTEXT_PATH, 
                b.FLYWAY_DATA_SOURCES, b.DATA_SOURCES, b.service_type
        from    tb_install_service_hosts a,
                tm_product_component_services b,
                (select min(c.ord) ord, c.component_code from tm_product_components c group by c.component_code) c
        where   a.install_id = p_install_id
        and     a.required = 'Y'
        and     a.component_code = b.component_code
        and     a.SERVICE_NAME = b.service_name
        and     b.stack_yaml = 'Y'
        and     a.component_code = c.component_code
        and     b.component_code = nvl(l_component_code,b.component_code)
        and     b.service_name = nvl(p_service_name,b.service_name)
        and     b.component_code in (select d.component_code from tb_install_hosts d where d.install_id = a.install_id)
        order by c.ord,a.ord,b.service_name
        )a
        )a where part_no = l_part
    )
    loop
        tb_envs.delete;
        tb_ports.delete;
        tb_vols.delete;
        for j in
            (
            select prop_val, 
            case when (b.prop_name like 'docker-env.'||i.service_type||'.%') then substr(prop_name,(13+length(i.service_type)))
                when   (b.prop_name like 'docker-env.'||i.service_type||'-'||l_image_type||'.%') then substr(prop_name,(14+length(i.service_type)+length(l_image_type) ))
                end prop_name1
            from tb_install_props b where b.install_id = p_install_id
            and ((b.prop_name like 'docker-env.'||i.service_type||'.%') or
                (b.prop_name like 'docker-env.'||i.service_type||'-'||l_image_type||'.%'))
            )
        loop
            tb_envs(j.prop_name1) := fn_replace(j.prop_val,p_install_id);
        end loop;
        if i.service_type = 'plato'
        then
            l_war_location := l_default_war_location;
            if i.war_file = '{latest}'
            then
                for w in (
                select  *
                from    tm_obma_wars
                where   service_name = i.service_name
                and     install_name = l_install_name
                and     patchset_no in (select b.patchset_no from tm_obma_patchsets b where ri_qualified = 'Y')
                order by patchset_no desc
                )
                loop
                i.war_file := w.war_file;
                for wl in (select * from tm_obma_patchsets where patchset_no = w.patchset_no and install_name = l_install_name)
                loop
                    l_war_location := wl.WAR_FILE_PATH;
                end loop;
                exit;
                end loop;
            end if;
            tb_envs('PLATO_SERVICE_NAME') := i.service_name;
            tb_envs('PLATO_WAR_FILE') := i.war_file;
            tb_envs('PLATO_WAR_LOCATION') := l_war_location;
            tb_envs('ADMIN_LISTEN_PORT') := nvl(i.port_forward,'7001');
            tb_envs('HTTP_PORT') := nvl(i.port_forward,'7001');
            tb_envs('APP_CONTEXT_PATH') := nvl(i.APP_CONTEXT_PATH,i.service_name);
            tb_envs('PLATO_FLYWAY_DATA_SOURCES') := i.FLYWAY_DATA_SOURCES;
            tb_envs('PLATO_DATA_SOURCES') := i.DATA_SOURCES;
            tb_envs('PLATO_COMPONENT_CODE') := i.component_code;
        end if;
        if i.port_forward is not null
        then
            tb_ports(i.port_forward) := i.port_forward;
        end if;
        for j in 
            (
                select  distinct prop_val
                from    TM_INSTALL_PROPS b
                where   b.prop_name like 'docker-vol.'||i.service_type||'.%'
                and     editable ='N'
                and     install_name = l_install_name
            )
        loop
            j.prop_val := fn_replace(j.prop_val,p_install_id);
            tb_vols(substr(j.prop_val,1,instr(j.prop_val,':')-1)) := substr(j.prop_val,instr(j.prop_val,':')+1);
        end loop;
        for j in
            (
            select b.*
            from vw_install_component_service_props b
            where b.install_id = p_install_id
            and   b.SERVICE_NAME = i.service_name
            )
        loop
            j.prop_name := fn_replace(j.prop_name,p_install_id);
            j.prop_val := fn_replace(j.prop_val,p_install_id);
            if j.PROP_TYPE = 'env'
            then
                tb_envs(j.prop_name) := j.prop_val;
            elsif j.prop_type ='por'
            then
                tb_ports(j.prop_name) := j.prop_val;
            elsif j.prop_type = 'vol'
            then
                tb_vols(j.prop_name) := j.prop_val;
            end if;
        end loop;

        htp.p('  '||i.SERVICE_NAME||':');
        if i.image_name = '{plato.image}'
        then
            i.image_name := '{plato.image.'||PKG_INSTALL_UTIL.prop_val(p_install_id,'plato.image')||'}';
        end if;
        htp.p('    image: '||fn_replace(i.image_name,p_install_id));
        if tb_vols.count > 0
        then
            htp.p('    volumes:');
            l_prop := tb_vols.first;
            while l_prop is not null
            loop
                htp.p('      - '||l_prop||':'||tb_vols(l_prop));
                l_prop := tb_vols.next(l_prop);
            end loop;
        end if;
        if tb_envs.count > 0
        then
            htp.p('    environment:');
            l_prop := tb_envs.first;
            while l_prop is not null
            loop
                htp.p('      - '||l_prop||'='||tb_envs(l_prop));
                l_prop := tb_envs.next(l_prop);
            end loop;
        end if;
        if tb_ports.count > 0
        then
            htp.p('    ports:');
            l_prop := tb_ports.first;
            while l_prop is not null
            loop
                htp.p('      - '||l_prop||':'||tb_ports(l_prop));
                l_prop := tb_ports.next(l_prop);
            end loop;
        end if;
        htp.p('    networks:');
        htp.p('      - '||l_net);
        htp.p('    deploy:');
        htp.p('      replicas: '||nvl(i.num_scale,1));
        l_limit := null; l_reservation := null;
        l_limit := fn_resource_val('resources.limits.memory',i.service_name, i.component_code, p_install_id,i.service_type);
        l_reservation := fn_resource_val('resources.reservations.memory',i.service_name, i.component_code, p_install_id,i.service_type);
        if l_limit is not null or l_reservation is not null --or i.deployment_selector is not null
        then
            htp.p('      resources:');
            if l_limit is not null
            then
                htp.p('        limits:');
                htp.p('          memory: '||l_limit);
            end if;
            if l_reservation is not null
            then
                htp.p('        reservations:');
                htp.p('          memory: '||l_reservation);
            end if;
        end if;
        if i.deployment_selector is not null
        then
            htp.p('      placement:');
            htp.p('        constraints: '||i.deployment_selector);
        end if;
    end loop;
htp.p('networks:');
htp.p('  '||l_net||':');
htp.p('    external: true');
end;

procedure pr_get_components(p_install_id in varchar2, p_split in varchar2 := '10')
is
l_cnt number;
l_split number;
l_part number;
l_tot_parts  number;
begin
if lower(p_split) = 'none'
then
l_split := 9999;
else
begin
    l_split := nvl(p_split,10);
exception when value_error then l_split := 10; end;
end if;
if l_split < 1 then l_split := 1; end if;
owa_util.mime_header('text/plain',true);
for i in 
(
select a.component_code,
    (select min(c.ord) from tm_product_components c where c.component_code = a.component_code) ord
    from (  select distinct component_code
            from tb_install_service_hosts
            where install_id = p_install_id
            and required='Y'
             ) a
order by 2
)
loop
    select count(1)
    into   l_cnt
        from    tb_install_service_hosts a,
                tm_product_component_services b,
                (select min(c.ord) ord, c.component_code from tm_product_components c group by c.component_code) c
        where   a.install_id = p_install_id
        and     a.required = 'Y'
        and     a.component_code = b.component_code
        and     a.SERVICE_NAME = b.service_name
        and     b.stack_yaml = 'Y'
        and     a.component_code = c.component_code
        and     b.component_code = i.component_code
        --and     b.service_name = nvl(p_service_name,b.service_name)
        and     b.component_code in (select d.component_code from tb_install_hosts d where d.install_id = a.install_id);
        l_part := 0;
        l_tot_parts := ceil(l_cnt/l_split);
        for q in 1..100
        loop
            l_part := l_part + 1;
            if l_part > l_tot_parts
            then
               exit;
            end if;
            htp.p(i.component_code||'_part_'||l_part||'_of_'||l_tot_parts||'_by_'||l_split);
        end loop;
end loop;
end;

procedure pr_run_chart_b(p_install_id in varchar2)
is
l_install_name varchar2(2000);
l_num number := 0;
l_host_name varchar2(2000);
l_scp_host varchar2(2000);
begin
l_install_name := pkg_install_util.prop_val(p_install_id,'install.name');
l_host_name := pkg_install_util.prop_val(p_install_id,'host.name');
l_scp_host:=pkg_install_util.FN_PARAM('scp_url');
l_scp_host := substr(l_scp_host, instr(l_scp_host,'//')+2);
l_scp_host := substr(l_scp_host, 1, instr(l_scp_host,':')-1);
htp.p('<html>');
htp.p('<h3> Install id : '||p_install_id||'</h3><br>');
htp.p('<h3> Install Name :'||l_install_name||'</h3><br>');

htp.p('<ul>');

for i in (
    select ord,script,descr,0,'N',SCRIPT_TYPE,scp_file,
    case when nvl(target_host,'{default-host}') ='{default-host}' then l_host_name
         when target_host like '{%}' then 
            (
                select  host_name 
                from    tb_install_hosts
                where   install_id = p_install_id
                and     '{'||component_code||'}' = target_host
            )
        when target_host is not null then target_host
        end t_host
    from   tm_install_steps
    where  install_name = l_install_name
    and    lower(script_type) in ('ssh','scp')
    order by ord
)
loop
l_num := l_num+1;
htp.p('<li>');
htp.p('<b>{"step": '||l_num||',"ord": '||i.ord||',"host": "'||i.t_host||'","type": "'||i.script_type||'","descr": "'||i.descr||'"}</b><br><pre>');
if i.script_type ='ssh'
then
htp.p(fn_replace(i.script,p_install_id));
else
if i.scp_file = '#properties.file#'
then
    htp.p('echo "');
    for j in (select * from tb_install_props where install_id = p_install_id and prop_name != 'host.pass')
    loop
         htp.p(j.prop_name||'='||fn_replace(j.prop_val,p_install_id));
    end loop;
    htp.p('" > '||fn_replace(i.script,p_install_id));
--end if;
else
htp.p('scp '||l_scp_host||':'||fn_replace(i.scp_file,p_install_id) ||' '||fn_replace(i.script,p_install_id));
end if;
end if;
htp.p('</pre></li>');
end loop;
htp.p('</ul>');
htp.p('</html>');
end;


procedure pr_run_chart(p_install_id in varchar2)
is
l_install_name varchar2(2000);
l_num number := 0;
l_host_name varchar2(2000);
l_scp_host varchar2(2000);
begin
l_install_name := pkg_install_util.prop_val(p_install_id,'install.name');
l_host_name := pkg_install_util.prop_val(p_install_id,'host.name');
l_scp_host:=pkg_install_util.FN_PARAM('scp_url');
l_scp_host := substr(l_scp_host, instr(l_scp_host,'//')+2);
l_scp_host := substr(l_scp_host, 1, instr(l_scp_host,':')-1);
htp.p('<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
');
htp.p('<h3> Install id : '||p_install_id||'</h3><br>');
htp.p('<h3> Install Name :'||l_install_name||'</h3><br>');

htp.p('<table><tr>
  <th>Step</th>
  <th>Ord</th>
  <th>Type</th>
  <th>Cmd</th>
  <th>Descr</th>
  </tr>');

for i in (
    select ord,script,descr,0,'N',SCRIPT_TYPE,scp_file,
    case when nvl(target_host,'{default-host}') ='{default-host}' then l_host_name
         when target_host like '{%}' then 
            (
                select  host_name 
                from    tb_install_hosts
                where   install_id = p_install_id
                and     '{'||component_code||'}' = target_host
            )
        when target_host is not null then target_host
        end t_host
    from   tm_install_steps
    where  install_name = l_install_name
    and    lower(script_type) in ('ssh','scp')
    order by ord
)
loop
l_num := l_num+1;
htp.p('<tr>');
htp.p('<td>'||l_num||'</td><td>'||i.ord||'</td><td>'||i.script_type);--'cr": "'||i.descr||'"}</b><br><pre>');
htp.p('<td><pre>');
if i.script_type ='ssh'
then
htp.p(fn_replace(i.script,p_install_id));
else
if i.scp_file = '#properties.file#'
then
    htp.p('echo "');
    for j in (select * from tb_install_props where install_id = p_install_id and prop_name != 'host.pass')
    loop
         htp.p(j.prop_name||'='||fn_replace(j.prop_val,p_install_id));
    end loop;
    htp.p('" > '||fn_replace(i.script,p_install_id));
--end if;
else
htp.p('scp '||l_scp_host||':'||fn_replace(i.scp_file,p_install_id) ||' '||fn_replace(i.script,p_install_id));
end if;
end if;
htp.p('</pre></td><td>'||i.descr||'</td></tr>');
end loop;
htp.p('</table>');
htp.p('</html>');
end;

procedure pr_list_wars(p_install_name in varchar2,p_patchset in varchar2,p_ri_qualified_only in varchar2) is
l_patchset number;
l_install_name varchar2(2000) := nvl(p_install_name,'plato-products-14.4-weblogic');
begin
if nvl(p_patchset,'latest') = 'latest' then
    select max(patchset_no) into l_patchset from tm_obma_patchsets where install_name = l_install_name;
else
    l_patchset := p_patchset;
end if;
for i in (select distinct service_name from tm_obma_wars where install_name = l_install_name order by 1)
loop
    for j in (select * from tm_obma_wars b where b.install_name = l_install_name and b.service_name = i.service_name and b.patchset_no <= l_patchset
    and 
    (
        (nvl(upper(p_ri_qualified_only),'N') != 'Y')
    or (upper(p_ri_qualified_only) = 'Y' and b.patchset_no in (select c.patchset_no from tm_obma_patchsets c where c.ri_qualified = 'Y'))
    )
     order by patchset_no desc)
    loop
        for k in (select * from tm_obma_patchsets a where a.install_name = l_install_name and a.patchset_no = j.patchset_no)
        loop
          htp.p(j.service_name||'|'||k.war_file_path||'|'||j.war_file||'|'||k.patchset_no);
        end loop;
        exit;
    end loop;
end loop;
end;
procedure pr_parse_war_dir(p_install_name in varchar2,p_url in varchar2)
is
l_clob clob;
l_xml xmltype;
l_title varchar2(2000);
l_svc varchar2(2000);
l_img varchar2(2000);
l_war_dir_upload tb_war_dir_upload%rowtype;
begin
l_clob := apex_web_service.make_rest_request (p_url => p_url , p_http_method  => 'GET');
l_xml := xmltype(substr(l_clob,instr(l_clob,'<html>')));
begin
select xt.a
into l_title
from 
XMLTABLE('/html/head'
         PASSING l_xml
         COLUMNS 
           a     VARCHAR2(1000)  PATH 'title'
         ) xt where rownum = 1;
exception when no_data_found then null;end;
l_title := replace(l_title,
        pkg_install_util.fn_param('replace.simple.http.header'),
        pkg_install_util.fn_param('war.file.base.dir')
        );
l_title := rtrim(l_title,'/')||'/';
delete tb_war_dir_upload where user_id = v('APP_USER');
delete tb_war_file_upload_detected where user_id = v('APP_USER');
delete tb_war_file_upload_undetected where user_id = v('APP_USER');

l_war_dir_upload.user_id := v('APP_USER');
l_war_dir_upload.install_name := p_install_name;
l_war_dir_upload.url := p_url;
l_war_dir_upload.war_file_dir := l_title;
begin
    select  patchset_no,
            friendly_name
    into    l_war_dir_upload.patchset_no,
            l_war_dir_upload.friendly_name
    from    tm_obma_patchsets
    where   WAR_FILE_PATH = l_war_dir_upload.war_file_dir
    and     rownum = 1;
exception when no_data_found then null;
end;
insert into tb_war_dir_upload values l_war_dir_upload;

begin
    select  '{'||prop_name||'}'
    into    l_img 
    from    tm_install_props where prop_name like 'plato.%.image'
    and     install_name = p_install_name
    and     rownum = 1;
exception when no_data_found then null;
end;
for i in (
select trim(xt.a) a
from 
XMLTABLE('/html/body/ul/li'
         PASSING l_xml
         COLUMNS 
           a     VARCHAR2(1000)  PATH 'a'
         ) xt 
)
loop
    if i.a like '%.war'
    then
        begin
            select service_name
            into    l_svc
            from    tm_product_component_services
            where   service_name = substr(i.a, 1, instr(i.a,'-',-1)-1)
            and     component_code in (select b.component_code from tm_product_components b
            where b.install_name = p_install_name);
        exception when no_data_found then l_svc := null;
        when too_many_rows then l_svc := null;
        end;

        dbms_output.put_line(':'||i.a||':#'||l_svc||'#:');

        if l_svc is null
        then
            begin
                select  service_name
                into    l_svc
                from    tm_obma_wars
                where   substr(war_file,1, length(war_file)-9) = substr(i.a, 1, length(i.a)-9)
                and     install_name = p_install_name
                and     rownum =1;
            exception when no_data_found then l_svc := null;
            end;
        end if;
        if l_svc is not null
        then
            insert into tb_war_file_upload_detected (user_id,install_name,war_file,service_name)
            values (v('APP_USER'),p_install_name,i.a,l_svc);
        else
            insert into tb_war_file_upload_undetected 
            (user_id,install_name,war_file,service_name,image_name,mandatory,stack_yaml,APP_CONTEXT_PATH)
            values (v('APP_USER'),p_install_name,i.a,substr(i.a, 1, instr(i.a,'-',-1)-1)
            ,l_img,'Y','Y', (substr(i.a, 1, instr(i.a,'-',-1)-1)) );
        end if;
    end if;
end loop;
commit;
end;
procedure pr_upload_patshset_definition
is
e_err exception;
begin
apex_util.set_session_state('P22_ERRM', 'Error Occurred');
--raise e_err;
end;
procedure pr_docker_stack_yaml_odt_db(p_install_id in varchar2)
is
   function val(p_prop in varchar2) return varchar2
   is
   begin
      return PKG_INSTALL_UTIL.prop_val(p_install_id,p_prop);
   end;
begin
    owa_util.mime_header('text/plain',true);
    htp.p('version: ''3.5''');
    htp.p('');
    htp.p('services:');
    htp.p('  '||val('docker.db.container.name')||':');
    htp.p('    image: '||val('docker.db.image.name'));
    htp.p('    volumes:');
    htp.p('      - '|| val('docker.db.volume.name')||':'||val('docker.db.volume.mount'));
    for i in (
        select replace(prop_name,'.mapped','.internal') prop,
            prop_val
        from   tb_install_props p
        where  p.install_id = p_install_id
        and prop_name like 'docker.db.%.mount.mapped'
        )
    loop
    htp.p('      - '||i.prop_val||':'||val(i.prop));
    end loop;
    htp.p('    environment:');
    htp.p('      - ORACLE_SID='||val('oracle.db.sid'));
    htp.p('      - ORACLE_PDB='||val('oracle.db.pdb'));
    htp.p('      - ORACLE_CHARACTERSET='||val('oracle.db.characterset'));

    htp.p('    ports:');
    for i in (
        select replace(prop_name,'.mapped','.internal') prop,
               prop_val
        from   tb_install_props p
        where  p.install_id = p_install_id
        and prop_name like 'docker.db.%.port.mapped'
        )
    loop
    htp.p('      - "'||i.prop_val||':'||val(i.prop)||'"');
    end loop;
    htp.p('    networks:');
    htp.p('      - '||val('docker.network.name'));
    htp.p('    deploy:');
    htp.p('      replicas: 1');
    htp.p('      placement:');
    if val('docker.swarm.node.label') is not null
    then
       htp.p('        constraints: [node.labels.'||(val('docker.swarm.node.label'))||']');
    else
       htp.p('        constraints: [node.role==manager]');
    end if;
    htp.p('networks:');
    htp.p('  '||val('docker.network.name')||':');
    htp.p('    external: true');
end;

procedure pr_docker_stack_yaml_odt_wls(p_install_id in varchar2)
is
   function val(p_prop in varchar2) return varchar2
   is
   begin
      return PKG_INSTALL_UTIL.prop_val(p_install_id,p_prop);
   end;
begin
    owa_util.mime_header('text/plain',true);
    htp.p('version: ''3.5''');
    htp.p('');
    htp.p('services:');
    htp.p('  '||val('docker.wls.container.name')||':');
    htp.p('    image: '||val('docker.wls.image.name'));
    htp.p('    volumes:');
    
    for i in (
        select replace(prop_name,'.mapped','.internal') prop,
            prop_val
        from   tb_install_props p
        where  p.install_id = p_install_id
        and prop_name like 'docker.wls.%.mount.mapped'
        )
    loop
    htp.p('      - '||i.prop_val||':'||val(i.prop));
    end loop;
    htp.p('    environment:');
    htp.p('      - DOMAIN_NAME='||val('docker.wls.domain.name'));
    htp.p('      - ADMINISTRATION_PORT_ENABLED=false');
    htp.p('      - DERBY_FLAG=false');
    htp.p('      - PRODUCTION_MODE=true');
    htp.p('      - APP_HOME='||val('docker.wls.app_home'));
    htp.p('    ports:');
    for i in (
        select replace(prop_name,'.mapped','.internal') prop,
               prop_val
        from   tb_install_props p
        where  p.install_id = p_install_id
        and prop_name like 'docker.wls.%.port.mapped'
        )
    loop
    htp.p('      - "'||i.prop_val||':'||val(i.prop)||'"');
    end loop;
    htp.p('    networks:');
    htp.p('      - '||val('docker.network.name'));
    htp.p('    deploy:');
    htp.p('      replicas: 1');
    htp.p('      placement:');
    if val('docker.swarm.node.label') is not null
    then
       htp.p('        constraints: [node.labels.'||(val('docker.swarm.node.label'))||']');
    else
       htp.p('        constraints: [node.role==manager]');
    end if;
    htp.p('networks:');
    htp.p('  '||val('docker.network.name')||':');
    htp.p('    external: true');
end;

procedure pr_install_props(p_install_id in varchar2, p_format in varchar2 :=null,p_consol_sql in varchar2 := null, p_load_proc in varchar2 := null, p_run_proc in varchar2 := null)
is
l_consol_sql boolean := (p_format = 'sql' and nvl(p_consol_sql,'true') = 'true');
l_sep varchar2(1);
begin
if l_consol_sql
then
    htp.p('begin');
end if;
if p_format='json'
then
OWA_UTIL.mime_header('application/json',true); 
htp.p('{');
else
owa_util.mime_header('text/plain',true);
end if;
for i in (
    select prop_name,prop_val from tb_install_props where install_id = p_install_id and prop_name != 'host.pass'
    union all
    select service_name||'.docker-'||prop_type||'.'||prop_name prop_name, prop_val
    from vw_install_component_service_props a
    where install_id = p_install_id
    union all
    select distinct 'product-installed.'||product_code, 'true' from tb_install_hosts where install_id = p_install_id
    union all
    select 'component-host.'||component_code,host_name from tb_install_hosts where install_id = p_install_id and required = 'Y'
    union all
    select 'service.'||service_name, required from tb_install_service_hosts where install_id = p_install_id
    union all
    select 'service-port.'||service_name, to_char(PORT_FORWARD) from tb_install_service_hosts where install_id = p_install_id and PORT_FORWARD is not null
    order by 1
    )
loop
    i.prop_name := fn_replace(i.prop_name,p_install_id);
    i.prop_val := fn_replace(i.prop_val,p_install_id);

    if nvl(p_format,'props') = 'props'
    then
        htp.p(i.prop_name||'='||i.prop_val);
    elsif p_format='json'
    then
        htp.p(l_sep||'"'||i.prop_name||'":"'||replace(i.prop_val,'"','/"')||'"');
    elsif p_format = 'sql'
    then
        if not l_consol_sql then 
            htp.p('begin');
        end if;
        htp.p( nvl(p_load_proc,'load_prop') || '(''' ||i.prop_name||''','''||i.prop_val||''');');
        if not l_consol_sql then 
            htp.p('end;');
            htp.p('/');
        end if;
    end if;
    l_sep := ',';
end loop;
if l_consol_sql
then
    htp.p('end;');
    htp.p('/');
end if;
if p_format = 'sql'
then
    htp.p('begin');
    htp.p(nvl(p_run_proc,'pr_install_updates')||';');
    htp.p('end;');
    htp.p('/');
    htp.p('exit;');
elsif p_format='json'
then
    htp.p('}');
end if;
end;
end;
