CREATE TABLE  "HTMLDB_PLAN_TABLE" 
   (	"STATEMENT_ID" VARCHAR2(30), 
	"PLAN_ID" NUMBER, 
	"TIMESTAMP" DATE, 
	"REMARKS" VARCHAR2(4000), 
	"OPERATION" VARCHAR2(30), 
	"OPTIONS" VARCHAR2(255), 
	"OBJECT_NODE" VARCHAR2(128), 
	"OBJECT_OWNER" VARCHAR2(128), 
	"OBJECT_NAME" VARCHAR2(128), 
	"OBJECT_ALIAS" VARCHAR2(261), 
	"OBJECT_INSTANCE" NUMBER(*,0), 
	"OBJECT_TYPE" VARCHAR2(128), 
	"OPTIMIZER" VARCHAR2(255), 
	"SEARCH_COLUMNS" NUMBER, 
	"ID" NUMBER(*,0), 
	"PARENT_ID" NUMBER(*,0), 
	"DEPTH" NUMBER(*,0), 
	"POSITION" NUMBER(*,0), 
	"COST" NUMBER(*,0), 
	"CARDINALITY" NUMBER(*,0), 
	"BYTES" NUMBER(*,0), 
	"OTHER_TAG" VARCHAR2(255), 
	"PARTITION_START" VARCHAR2(255), 
	"PARTITION_STOP" VARCHAR2(255), 
	"PARTITION_ID" NUMBER(*,0), 
	"OTHER" LONG, 
	"DISTRIBUTION" VARCHAR2(30), 
	"CPU_COST" NUMBER(*,0), 
	"IO_COST" NUMBER(*,0), 
	"TEMP_SPACE" NUMBER(*,0), 
	"ACCESS_PREDICATES" VARCHAR2(4000), 
	"FILTER_PREDICATES" VARCHAR2(4000), 
	"PROJECTION" VARCHAR2(4000), 
	"TIME" NUMBER(*,0), 
	"QBLOCK_NAME" VARCHAR2(128)
   )
/
CREATE TABLE  "TM_INSTALL_PARAMS" 
   (	"PARAM_NAME" VARCHAR2(100), 
	"PARAM_VAL" VARCHAR2(1000), 
	"INSTALL_NAME" VARCHAR2(100)
   )
/
CREATE TABLE  "TM_INSTALL_STEPS" 
   (	"INSTALL_NAME" VARCHAR2(100), 
	"ORD" NUMBER, 
	"SCRIPT" VARCHAR2(2000), 
	"DESCR" VARCHAR2(1000), 
	"SCRIPT_TYPE" VARCHAR2(3), 
	"SCP_FILE" VARCHAR2(200)
   )
/
CREATE TABLE  "APEX$TEAM_DEV_FILES" 
   (	"ID" NUMBER, 
	"ROW_VERSION_NUMBER" NUMBER, 
	"COMPONENT_ID" NUMBER NOT NULL ENABLE, 
	"COMPONENT_TYPE" VARCHAR2(30) NOT NULL ENABLE, 
	"FILENAME" VARCHAR2(4000) NOT NULL ENABLE, 
	"FILE_MIMETYPE" VARCHAR2(512), 
	"FILE_CHARSET" VARCHAR2(512), 
	"FILE_BLOB" BLOB, 
	"FILE_COMMENTS" VARCHAR2(4000), 
	"TAGS" VARCHAR2(4000), 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"CREATED_BY" VARCHAR2(255), 
	"UPDATED" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"UPDATED_BY" VARCHAR2(255), 
	 CONSTRAINT "WWV_VALID_ATDF_COMP_TY" CHECK (component_type in ('MILESTONE','FEATURE','BUG','FEEDBACK','TODO')) ENABLE, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "TB_INSTALL_PROGRESS" 
   (	"ID" VARCHAR2(100), 
	"INSTALL_ID" VARCHAR2(100), 
	"ORD" NUMBER, 
	"SCRIPT" VARCHAR2(2000), 
	"DESCR" VARCHAR2(1000), 
	"PROGRESS" NUMBER, 
	"STATUS" VARCHAR2(1), 
	"ERR" VARCHAR2(1000), 
	"START_TIME" TIMESTAMP (6), 
	"END_TIME" TIMESTAMP (6), 
	"LAST_STATUS_TIME" TIMESTAMP (6), 
	"LOG_TEXT" CLOB, 
	"SCRIPT_TYPE" VARCHAR2(3), 
	"SCP_FILE" VARCHAR2(200)
   )
/
CREATE TABLE  "TM_INSTALL_SUMMARY" 
   (	"INSTALL_NAME" VARCHAR2(100), 
	"PROP_NAME" VARCHAR2(100), 
	"PROP_VAL" VARCHAR2(1000), 
	"ORD" NUMBER, 
	"INITIALS" VARCHAR2(10), 
	"ICON" VARCHAR2(50), 
	"DESCR" VARCHAR2(250)
   )
/
CREATE TABLE  "TB_INSTALL_PROPS" 
   (	"ID" VARCHAR2(100), 
	"ORD" NUMBER, 
	"PROP_NAME" VARCHAR2(100), 
	"PROP_DESCR" VARCHAR2(4000), 
	"PROP_VAL" VARCHAR2(1000), 
	"PROP_TYPE" VARCHAR2(1), 
	"EDITABLE" VARCHAR2(1), 
	"INSTALL_ID" VARCHAR2(100)
   )
/
CREATE TABLE  "TM_INSTALLS" 
   (	"INSTALL_NAME" VARCHAR2(100), 
	"CARD_INITIALS" VARCHAR2(2), 
	"CARD_TEXT" VARCHAR2(200), 
	"CARD_SUBTITLE" VARCHAR2(200), 
	"CARD_COLOR" VARCHAR2(20), 
	"CARD_ICON" VARCHAR2(20), 
	"CARD_SUBTEXT" VARCHAR2(200), 
	"ORD" NUMBER, 
	"CARD_IMG" BLOB, 
	"CARD_MIME_TYPE" VARCHAR2(100)
   )
/
CREATE TABLE  "TM_INSTALL_PROPS" 
   (	"INSTALL_NAME" VARCHAR2(100), 
	"ORD" NUMBER, 
	"PROP_NAME" VARCHAR2(100), 
	"PROP_DESCR" VARCHAR2(4000), 
	"PROP_VAL" VARCHAR2(1000), 
	"PROP_TYPE" VARCHAR2(1), 
	"EDITABLE" VARCHAR2(1)
   )
/
CREATE TABLE  "TM_INSTALL_ADMIN_USERS" 
   (	"USER_ID" VARCHAR2(100)
   )
/
CREATE INDEX  "IND_TB_INSTALL_PROGRESS_1" ON  "TB_INSTALL_PROGRESS" ("INSTALL_ID")
/
CREATE INDEX  "IND_TB_INSTALL_PROGRESS_2" ON  "TB_INSTALL_PROGRESS" ("ID")
/
CREATE INDEX  "IND_TB_INSTALL_PROPS_1" ON  "TB_INSTALL_PROPS" ("INSTALL_ID")
/
CREATE INDEX  "IND_TB_INSTALL_PROPS_2" ON  "TB_INSTALL_PROPS" ("ID")
/
CREATE INDEX  "IND_TM_INSTALL_PROPS" ON  "TM_INSTALL_PROPS" ("INSTALL_NAME", "PROP_NAME")
/
CREATE INDEX  "IND_TM_INSTALL_PROPS_2" ON  "TM_INSTALL_PROPS" ("INSTALL_NAME")
/
CREATE INDEX  "IND_TM_INSTALL_STEPS_2" ON  "TM_INSTALL_STEPS" ("INSTALL_NAME")
/
CREATE INDEX  "IND_TM_INSTALL_SUMMARY_1" ON  "TM_INSTALL_SUMMARY" ("INSTALL_NAME")
/
CREATE OR REPLACE EDITIONABLE PACKAGE  "PKG_INSTALL_UTIL" 
IS
PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2);
PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2);
PROCEDURE PR_TASK(p_task_id in varchar2);
PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2);
FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2;
FUNCTION FN_PARAM(p_param in varchar2,p_install_name in varchar2:=null) return varchar2 result_cache;
END;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY  "PKG_INSTALL_UTIL" 
IS
e_error exception;
PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)
IS
  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)
  is
  begin
    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)
    values (sys_guid(),p_id,0,p_prop,p_prop_val);
  end;
BEGIN
  delete tb_install_props where install_id = p_id;
  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) 
  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS
  where install_name = p_install_name;
  pr_ins('install.name',P_INSTALL_NAME);
  pr_ins('host.name',P_HOST_NAME);
  pr_ins('host.user',P_USER_ID);
  pr_ins('host.pass',P_PASS);
  pr_ins('install.id',p_id);
  
  --dbms_session.sleep(20);
  commit;
  if p_user_id = 'cvr'
  then
    apex_util.set_session_state('P2_ERRM', 'Error Occurred');
    raise e_error;
  end if;
END;

function fn_status(p_task_id in varchar2) return varchar2
is
l_stat varchar2(1);
begin
   select status
   into   l_stat
   from   tb_install_progress
   where  id = p_task_id;
   return l_stat;
end;

PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)
is
l_jobname  varchar2(255);
l_cnt      number;
begin
  for i in
    (
    select count(1) c,
           ord
    from   tb_install_progress a
    where  install_id = p_install_id
    and    lower(script_type) in ('ssh','scp')
    and    nvl(status,'N') = 'N'
    group by ord
    order by ord
    )
  loop
      for j in 
        (
        select id from tb_install_progress
        where  install_id = p_install_id
        and    lower(script_type) in ('ssh','scp')
        and    nvl(status,'N') = 'N'
        and    ord = i.ord
        )
      loop
        if i.c = 1
        then
              PR_TASK(p_task_id => j.id);
              if fn_status(j.id) = 'E'
              then
                  raise e_error;
              end if;
        else
              update tb_install_progress
              set    status = 'S'
              where  id = j.id;
              l_jobname := dbms_scheduler.generate_job_name('RI_');
              dbms_scheduler.create_job(
                job_name            => l_jobname,
                job_type            => 'PLSQL_BLOCK',
                job_action          => 'begin PKG_INSTALL_UTIL.PR_TASK('''||j.id||'''); end;',
                enabled             => true);
              commit;
        end if;
    end loop;
    
    if i.c != 1
    then
      for j in 1..3000
      loop
        if j >= 2000
        then
          --time out..
          raise e_error;
        end if;
        select count(1)
        into   l_cnt
        from   tb_install_progress
        where  install_id = p_install_id
        and    ord = i.ord
        and    lower(script_type) in ('ssh','scp')
        and    status in ('Y','E');
        if l_cnt = i.c
        then
          exit;
        end if;
        sleep(2);
        --dbms_session.sleep(20);
      end loop;
        select count(1)
        into   l_cnt
        from   tb_install_progress
        where  install_id = p_install_id
        and    lower(script_type) in ('ssh','scp')
        and    ord = i.ord
        and    status in ('E');
        if l_cnt > 0
        then
          raise e_error;
        end if;
    end if;
  end loop;
exception
  when e_error
  then
    null;
end;
PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)
is
l_jobname  varchar2(255);
begin
  delete tb_install_progress where install_id = p_id;
  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_file)
  select sys_guid(),p_id,ord,script,descr,0,'N',SCRIPT_TYPE,scp_file
  from   tm_install_steps
  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = 'install.name');
  commit;
  l_jobname := dbms_scheduler.generate_job_name('RI_');
  dbms_scheduler.create_job(
    job_name            => l_jobname,
    job_type            => 'PLSQL_BLOCK',
    --job_action          => 'begin PKG_INSTALL_UTIL.PR_RUN_TASKS('''||P_ID||'''); end;',
    job_action          => 'begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL('''||P_ID||'''); end;',
    enabled             => true);
  commit;
exception when others
  then
        rollback;
        apex_util.set_session_state('P3_ERRM', 'Error Occurred');
        raise e_error;
end;
PROCEDURE PR_TASK(p_task_id in varchar2)
is
  l_req  varchar2(32767);
  l_resp clob;
  type ty is table of varchar2(1000) index by varchar2(255);
  l_tb ty;
  l_prop varchar2(32767);
  l_stat number;
  l_err  varchar2(32767);
  l_install_name varchar2(100);
begin
  for i in (select a.rowid rid, a.* from tb_install_progress a where id = p_task_id)
  loop
    update tb_install_progress set status = 'W' where rowid = i.rid;
    commit;
    select prop_val
    into   l_install_name
    from   tb_install_props p
    where  p.install_id = i.install_id 
    and    p.prop_name = 'install.name';
    i.script := fn_replace(i.script,i.install_id);
    for j in (select * from tb_install_props where install_id = i.install_id)
    loop
      l_tb(j.prop_name) := j.prop_val;
      if i.scp_file = '#properties.file#' and j.prop_name != 'host.pass'
      then
         l_prop := l_prop||j.prop_name||'='||j.prop_val||'\n';
      end if;
    end loop;
    case lower(i.script_type)
      when 'ssh'
      then
        l_req :=  '{"port":22,'
              ||  '"hostName": "'||l_tb('host.name')||'",'
              ||  '"usr": "'||l_tb('host.user')||'",'
              ||  '"pwd": "'||l_tb('host.pass')||'",'
              ||  '"command": "'||i.script||'"}';
      when 'scp'
      then
         if i.scp_file = '#properties.file#'
         then
           i.scp_file := '/tmp/'||i.install_id||'.properties';
         end if;
         i.scp_file := fn_replace(i.scp_file,i.install_id);
         l_req :=  '{"port":22,'
              ||  '"hostName": "'||l_tb('host.name')||'",'
              ||  '"usr": "'||l_tb('host.user')||'",'
              ||  '"pwd": "'||l_tb('host.pass')||'",'
              ||  '"localfileName": "'||i.scp_file||'",'
              ||  '"remotefileName": "'||i.script||'",'
              ||  '"doNotOverWrite": true,'
              ||  '"fileContent": "'||l_prop||'"}';
      end case;
      apex_web_service.g_request_headers(1).name := 'Content-Type';  
      apex_web_service.g_request_headers(1).value := 'application/json';
      l_resp := apex_web_service.make_rest_request
      (p_url => FN_PARAM(lower(i.script_type)||'_url',l_install_name),
      p_http_method  => 'POST', p_body =>l_req,p_transfer_timeout => 3600);
      
      begin
        select json_value(l_resp, '$.exitStatus') exitStatus, json_value(l_resp, '$.err') err
        into   l_stat,l_err
        FROM   dual;
        if l_stat = 0 and l_err like '%Auth fail'
        then
          l_stat := 1;
        end if;
      exception when others
        then
          l_stat := 1;
          l_err := 'Unknown Json Format';
      end;
      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then 'Y' else 'E' end, 
      err = l_err where rowid = i.rid;
      commit;
   end loop;
exception
  when others
    then
      l_err := substr(sqlerrm||chr(10)||dbms_utility.format_error_backtrace,1,4000);
      update tb_install_progress 
      set    status = 'E', 
             err = l_err 
      where  id = p_task_id;
      commit;
end;
FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2
IS
  L_RETVAL VARCHAR2(32767) := P_TXT;
BEGIN
    for j in (select * from tb_install_props where install_id = P_install_id)
    loop
      if instr(L_RETVAL,'{'||j.prop_name||'}') > 0
      then
        L_RETVAL := replace(L_RETVAL,'{'||j.prop_name||'}',j.prop_val);
      end if;
    end loop;
    return l_retval;
END;
FUNCTION FN_PARAM(p_param in varchar2,p_install_name in varchar2:=null) return varchar2 result_cache
is
begin
  for i in 
    (
    select param_val
    from   tm_install_params
    where  param_name = p_param 
    and    (install_name = p_install_name or install_name is null)
    order by decode(install_name,null,1,0)
    )
  loop
    return i.param_val;
  end loop;
  return null;
end;
END;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "SLEEP" (p_sec in number)
is
begin
  dbms_session.sleep(p_sec);
end;
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "APEX$TEAM_DEV_FILES_BIU" 
          before insert or update on apex$team_dev_files
          for each row
        declare
           l_filesize_quota number := 15728640;
           l_filesize_mb    number;
        begin
          for c1 in
          (
              select
                  team_dev_fs_limit
              from
                  apex_workspaces
              where
                  workspace_id = v( 'APP_SECURITY_GROUP_ID' )
          )
          loop
            l_filesize_quota := c1.team_dev_fs_limit;
            l_filesize_mb    := l_filesize_quota/1048576;
          end loop;
          if :new."ID" is null then
            select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from sys.dual;
          end if;
          if inserting then
           :new.created := localtimestamp;
           :new.created_by := nvl(wwv_flow.g_user,user);
           :new.updated := localtimestamp;
           :new.updated_by := nvl(wwv_flow.g_user,user);
           :new.row_version_number := 1;
         elsif updating then
           :new.row_version_number := nvl(:old.row_version_number,1) + 1;
         end if;
         if (inserting or updating) and nvl(sys.dbms_lob.getlength(:new.file_blob),0) > l_filesize_quota then
           raise_application_error(-20000, wwv_flow_lang.system_message('FILE_TOO_LARGE', trunc(l_filesize_mb)));
         end if;
         if inserting or updating then
           :new.updated := localtimestamp;
           :new.updated_by := nvl(wwv_flow.g_user,user);
         end if;
        end;
        
/
ALTER TRIGGER  "APEX$TEAM_DEV_FILES_BIU" ENABLE
/
