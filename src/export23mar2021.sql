CREATE TABLE  "DEPT" 
   (	"DEPTNO" NUMBER(2,0), 
	"DNAME" VARCHAR2(14), 
	"LOC" VARCHAR2(13), 
	 PRIMARY KEY ("DEPTNO")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "EMP" 
   (	"EMPNO" NUMBER(4,0) NOT NULL ENABLE, 
	"ENAME" VARCHAR2(10), 
	"JOB" VARCHAR2(9), 
	"MGR" NUMBER(4,0), 
	"HIREDATE" DATE, 
	"SAL" NUMBER(7,2), 
	"COMM" NUMBER(7,2), 
	"DEPTNO" NUMBER(2,0), 
	 PRIMARY KEY ("EMPNO")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "TB_WAR_FILE_UPLOAD_DETECTED" 
   (	"USER_ID" VARCHAR2(2000), 
	"INSTALL_NAME" VARCHAR2(2000), 
	"WAR_FILE" VARCHAR2(2000), 
	"SERVICE_NAME" VARCHAR2(2000)
   )
/
CREATE TABLE  "TMP_SAML" 
   (	"REQ" CLOB
   )
/
CREATE TABLE  "TM_PRODUCT_COMPONENT_SERVICES_ERR$" 
   (	"ORA_ERR_NUMBER$" NUMBER, 
	"ORA_ERR_MESG$" VARCHAR2(2000), 
	"ORA_ERR_ROWID$" UROWID (4000), 
	"ORA_ERR_OPTYP$" VARCHAR2(2), 
	"ORA_ERR_TAG$" VARCHAR2(2000), 
	"COMPONENT_CODE" VARCHAR2(4000), 
	"SERVICE_NAME" VARCHAR2(4000), 
	"ORD" VARCHAR2(4000), 
	"MANDATORY" VARCHAR2(4000), 
	"CPU" VARCHAR2(4000), 
	"MEM" VARCHAR2(4000), 
	"DEFAULT_SCALE" VARCHAR2(4000), 
	"PORT_FORWARD" VARCHAR2(4000), 
	"STACK_YAML" VARCHAR2(4000), 
	"IMAGE_NAME" VARCHAR2(4000), 
	"WAR_FILE" VARCHAR2(4000), 
	"DATA_SOURCES" VARCHAR2(4000), 
	"APP_CONTEXT_PATH" VARCHAR2(4000), 
	"ADDL_PROPS" VARCHAR2(4000), 
	"FLYWAY_DATA_SOURCES" VARCHAR2(4000)
   )
/
CREATE TABLE  "TB_AJAX_JOBS" 
   (	"INSTALL_ID" VARCHAR2(200), 
	"THREAD_NUMBER" NUMBER, 
	"LAST_ACTIVE_TIME" TIMESTAMP (6), 
	"CURRENT_PROCESS" VARCHAR2(4000)
   )
/
CREATE TABLE  "TB_RI_INSTALL_LOG" 
   (	"INSTALL_ID" VARCHAR2(200), 
	"INSTALL_NAME" VARCHAR2(200), 
	"USER_ID" VARCHAR2(200), 
	"TARGET_HOSTS" VARCHAR2(2000), 
	"NETWORK_NAME" VARCHAR2(2000), 
	"START_TIME" DATE, 
	"END_TIME" DATE, 
	"INSTALL_STAT" VARCHAR2(20), 
	"PURGE_STAT" VARCHAR2(20), 
	"PURGE_TIME" DATE, 
	"ENV_CODE" VARCHAR2(4)
   )
/
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
CREATE TABLE  "TB_AJAX_JOBS_LOCK" 
   (	"TASK_ID" VARCHAR2(300), 
	 PRIMARY KEY ("TASK_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "TB_INSTALL_HOSTS" 
   (	"INSTALL_ID" VARCHAR2(200), 
	"PRODUCT_CODE" VARCHAR2(200), 
	"COMPONENT_CODE" VARCHAR2(200), 
	"HOST_NAME" VARCHAR2(200), 
	"REQUIRED" VARCHAR2(1), 
	"ORD" NUMBER
   )
/
CREATE TABLE  "TM_INSTALL_PARAMS" 
   (	"PARAM_NAME" VARCHAR2(100), 
	"PARAM_VAL" VARCHAR2(1000), 
	"INSTALL_NAME" VARCHAR2(100)
   )
/
CREATE TABLE  "TM_RI_ENV_COMPONENTS_ERR$2" 
   (	"ORA_ERR_NUMBER$" NUMBER, 
	"ORA_ERR_MESG$" VARCHAR2(2000), 
	"ORA_ERR_ROWID$" UROWID (4000), 
	"ORA_ERR_OPTYP$" VARCHAR2(2), 
	"ORA_ERR_TAG$" VARCHAR2(2000), 
	"COMPONENT_ID" VARCHAR2(4000), 
	"INSTALL_NAME" VARCHAR2(4000), 
	"COMPONENT_TYPE" VARCHAR2(4000), 
	"ORD" VARCHAR2(4000), 
	"COMPONENT_NAME" VARCHAR2(4000), 
	"COMPONENT_ATTRIBUTE_1" VARCHAR2(4000), 
	"COMPONENT_ATTRIBUTE_2" VARCHAR2(4000), 
	"MIME_TYPE" VARCHAR2(4000)
   )
/
CREATE TABLE  "TM_PRODUCT_COMPONENT_SERVICES_14DEC20" 
   (	"COMPONENT_CODE" VARCHAR2(200), 
	"SERVICE_NAME" VARCHAR2(200), 
	"ORD" NUMBER, 
	"MANDATORY" VARCHAR2(1), 
	"CPU" NUMBER, 
	"MEM" NUMBER, 
	"DEFAULT_SCALE" NUMBER, 
	"PORT_FORWARD" NUMBER, 
	"STACK_YAML" VARCHAR2(1), 
	"IMAGE_NAME" VARCHAR2(200), 
	"WAR_FILE" VARCHAR2(200), 
	"DATA_SOURCES" VARCHAR2(2000), 
	"APP_CONTEXT_PATH" VARCHAR2(200), 
	"ADDL_PROPS" VARCHAR2(4000), 
	"FLYWAY_DATA_SOURCES" VARCHAR2(4000)
   )
/
CREATE TABLE  "TB_INSTALL_SERVICE_HOSTS" 
   (	"INSTALL_ID" VARCHAR2(200), 
	"PRODUCT_CODE" VARCHAR2(200), 
	"COMPONENT_CODE" VARCHAR2(200), 
	"SERVICE_NAME" VARCHAR2(200), 
	"HOST_NAME" VARCHAR2(200), 
	"REQUIRED" VARCHAR2(1), 
	"ORD" NUMBER, 
	"NUM_SCALE" NUMBER, 
	"PORT_FORWARD" NUMBER, 
	"ADDL_PROPS" VARCHAR2(4000), 
	"DEPLOYMENT_SELECTOR" VARCHAR2(200)
   )
/
CREATE TABLE  "TM_INSTALL_PROPS_22MAR" 
   (	"INSTALL_NAME" VARCHAR2(100), 
	"ORD" NUMBER, 
	"PROP_NAME" VARCHAR2(100), 
	"PROP_DESCR" VARCHAR2(4000), 
	"PROP_VAL" VARCHAR2(1000), 
	"PROP_TYPE" VARCHAR2(1), 
	"EDITABLE" VARCHAR2(1)
   )
/
CREATE TABLE  "TM_INSTALL_STEPS" 
   (	"INSTALL_NAME" VARCHAR2(100), 
	"ORD" NUMBER, 
	"SCRIPT" VARCHAR2(2000), 
	"DESCR" VARCHAR2(1000), 
	"SCRIPT_TYPE" VARCHAR2(3), 
	"SCP_FILE" VARCHAR2(200), 
	"TARGET_HOST" VARCHAR2(200)
   )
/
CREATE TABLE  "TM_RI_ENV_COMPONENTS_ERR$" 
   (	"ORA_ERR_NUMBER$" NUMBER, 
	"ORA_ERR_MESG$" VARCHAR2(2000), 
	"ORA_ERR_ROWID$" UROWID (4000), 
	"ORA_ERR_OPTYP$" VARCHAR2(2), 
	"ORA_ERR_TAG$" VARCHAR2(2000), 
	"COMPONENT_ID" VARCHAR2(4000), 
	"INSTALL_NAME" VARCHAR2(4000), 
	"COMPONENT_TYPE" VARCHAR2(4000), 
	"ORD" VARCHAR2(4000), 
	"COMPONENT_NAME" VARCHAR2(4000), 
	"COMPONENT_ATTRIBUTE_1" VARCHAR2(4000), 
	"COMPONENT_ATTRIBUTE_2" VARCHAR2(4000), 
	"MIME_TYPE" VARCHAR2(4000)
   )
/
CREATE TABLE  "TM_OBMA_WARS" 
   (	"PATCHSET_NO" NUMBER, 
	"SERVICE_NAME" VARCHAR2(200), 
	"WAR_FILE" VARCHAR2(2000), 
	"INSTALL_NAME" VARCHAR2(200)
   )
/
CREATE TABLE  "TM_PRODUCT_COMPONENTS_22MAR" 
   (	"PRODUCT_CODE" VARCHAR2(200), 
	"COMPONENT_CODE" VARCHAR2(200), 
	"ORD" NUMBER, 
	"INSTALL_NAME" VARCHAR2(200)
   )
/
CREATE TABLE  "TB_SAML_APPS" 
   (	"APP_NAME" VARCHAR2(100), 
	"IMG_TAG" VARCHAR2(200)
   )
/
CREATE TABLE  "TMP_SAML1" 
   (	"X" CLOB
   )
/
CREATE TABLE  "TM_OBMA_WARS_22MAR" 
   (	"PATCHSET_NO" NUMBER, 
	"SERVICE_NAME" VARCHAR2(200), 
	"WAR_FILE" VARCHAR2(2000), 
	"INSTALL_NAME" VARCHAR2(200)
   )
/
CREATE TABLE  "TM_RI_ENV_COMPONENTS" 
   (	"COMPONENT_ID" VARCHAR2(100), 
	"INSTALL_NAME" VARCHAR2(100), 
	"COMPONENT_TYPE" VARCHAR2(1), 
	"ORD" NUMBER, 
	"COMPONENT_NAME" VARCHAR2(100), 
	"COMPONENT_ATTRIBUTE_1" VARCHAR2(100), 
	"COMPONENT_ATTRIBUTE_2" VARCHAR2(2000), 
	"IMG_FILE" BLOB, 
	"MIME_TYPE" VARCHAR2(100)
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
CREATE TABLE  "TM_PRODUCT_COMPONENT_SERVICES_22MAR" 
   (	"COMPONENT_CODE" VARCHAR2(3000), 
	"SERVICE_NAME" VARCHAR2(200), 
	"ORD" NUMBER, 
	"MANDATORY" VARCHAR2(1), 
	"CPU" NUMBER, 
	"MEM" NUMBER, 
	"DEFAULT_SCALE" NUMBER, 
	"PORT_FORWARD" NUMBER, 
	"STACK_YAML" VARCHAR2(1), 
	"IMAGE_NAME" VARCHAR2(200), 
	"WAR_FILE" VARCHAR2(3000), 
	"DATA_SOURCES" VARCHAR2(2000), 
	"APP_CONTEXT_PATH" VARCHAR2(200), 
	"ADDL_PROPS" VARCHAR2(4000), 
	"FLYWAY_DATA_SOURCES" VARCHAR2(4000)
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
	"SCP_FILE" VARCHAR2(200), 
	"HOST_NAME" VARCHAR2(200)
   )
/
CREATE TABLE  "TM_INSTALLS_ERR$" 
   (	"ORA_ERR_NUMBER$" NUMBER, 
	"ORA_ERR_MESG$" VARCHAR2(2000), 
	"ORA_ERR_ROWID$" UROWID (4000), 
	"ORA_ERR_OPTYP$" VARCHAR2(2), 
	"ORA_ERR_TAG$" VARCHAR2(2000), 
	"INSTALL_NAME" VARCHAR2(4000), 
	"CARD_INITIALS" VARCHAR2(4000), 
	"CARD_TEXT" VARCHAR2(4000), 
	"CARD_SUBTITLE" VARCHAR2(4000), 
	"CARD_COLOR" VARCHAR2(4000), 
	"CARD_ICON" VARCHAR2(4000), 
	"CARD_SUBTEXT" VARCHAR2(4000), 
	"ORD" VARCHAR2(4000), 
	"CARD_MIME_TYPE" VARCHAR2(4000)
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
CREATE TABLE  "TM_OBMA_PATCHSETS" 
   (	"PATCHSET_NO" NUMBER, 
	"FRIENDLY_NAME" VARCHAR2(200), 
	"ARU_NO" VARCHAR2(200), 
	"BUG_NO" VARCHAR2(200), 
	"PATCHSET_RELEASE_DATE" DATE, 
	"REMARKS" VARCHAR2(2000), 
	"RI_QUALIFIED" VARCHAR2(1), 
	"WAR_FILE_PATH" VARCHAR2(2000), 
	"INSTALL_NAME" VARCHAR2(200)
   )
/
CREATE TABLE  "TB_SAML_ENVS" 
   (	"ENV_NAME" VARCHAR2(100), 
	"ENV_DESCR" VARCHAR2(200), 
	"ICON_CLASS" VARCHAR2(100), 
	"ORD" NUMBER
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
CREATE TABLE  "TM_RI_ENV_COMPONENTS_ERR$1" 
   (	"ORA_ERR_NUMBER$" NUMBER, 
	"ORA_ERR_MESG$" VARCHAR2(2000), 
	"ORA_ERR_ROWID$" UROWID (4000), 
	"ORA_ERR_OPTYP$" VARCHAR2(2), 
	"ORA_ERR_TAG$" VARCHAR2(2000), 
	"COMPONENT_ID" VARCHAR2(4000), 
	"INSTALL_NAME" VARCHAR2(4000), 
	"COMPONENT_TYPE" VARCHAR2(4000), 
	"ORD" VARCHAR2(4000), 
	"COMPONENT_NAME" VARCHAR2(4000), 
	"COMPONENT_ATTRIBUTE_1" VARCHAR2(4000), 
	"COMPONENT_ATTRIBUTE_2" VARCHAR2(4000), 
	"MIME_TYPE" VARCHAR2(4000)
   )
/
CREATE TABLE  "TM_OBMA_PATCHSETS_22MAR" 
   (	"PATCHSET_NO" NUMBER, 
	"FRIENDLY_NAME" VARCHAR2(200), 
	"ARU_NO" VARCHAR2(200), 
	"BUG_NO" VARCHAR2(200), 
	"PATCHSET_RELEASE_DATE" DATE, 
	"REMARKS" VARCHAR2(2000), 
	"RI_QUALIFIED" VARCHAR2(1), 
	"WAR_FILE_PATH" VARCHAR2(2000), 
	"INSTALL_NAME" VARCHAR2(200)
   )
/
CREATE TABLE  "TM_PRODUCT_COMPONENT_SERVICES" 
   (	"COMPONENT_CODE" VARCHAR2(3000), 
	"SERVICE_NAME" VARCHAR2(200), 
	"ORD" NUMBER, 
	"MANDATORY" VARCHAR2(1), 
	"CPU" NUMBER, 
	"MEM" NUMBER, 
	"DEFAULT_SCALE" NUMBER, 
	"PORT_FORWARD" NUMBER, 
	"STACK_YAML" VARCHAR2(1), 
	"IMAGE_NAME" VARCHAR2(200), 
	"WAR_FILE" VARCHAR2(3000), 
	"DATA_SOURCES" VARCHAR2(2000), 
	"APP_CONTEXT_PATH" VARCHAR2(200), 
	"ADDL_PROPS" VARCHAR2(4000), 
	"FLYWAY_DATA_SOURCES" VARCHAR2(4000), 
	"SERVICE_TYPE" VARCHAR2(20), 
	"DEPLOYMENT_SELECTOR" VARCHAR2(200)
   )
/
CREATE TABLE  "TB_WAR_FILE_UPLOAD_UNDETECTED" 
   (	"USER_ID" VARCHAR2(2000), 
	"INSTALL_NAME" VARCHAR2(2000), 
	"WAR_FILE" VARCHAR2(2000), 
	"COMPONENT_CODE" VARCHAR2(200), 
	"SERVICE_NAME" VARCHAR2(2000), 
	"ORD" NUMBER, 
	"MANDATORY" VARCHAR2(1), 
	"PORT_FORWARD" VARCHAR2(1), 
	"STACK_YAML" VARCHAR2(1), 
	"IMAGE_NAME" VARCHAR2(200), 
	"DATA_SOURCES" VARCHAR2(200), 
	"APP_CONTEXT_PATH" VARCHAR2(200), 
	"ADDL_PROPS" VARCHAR2(2000), 
	"FLYWAY_DATA_SOURCES" VARCHAR2(2000)
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
CREATE TABLE  "TM_PRODUCT_COMPONENT_SERVICES_120121" 
   (	"COMPONENT_CODE" VARCHAR2(200), 
	"SERVICE_NAME" VARCHAR2(200), 
	"ORD" NUMBER, 
	"MANDATORY" VARCHAR2(1), 
	"CPU" NUMBER, 
	"MEM" NUMBER, 
	"DEFAULT_SCALE" NUMBER, 
	"PORT_FORWARD" NUMBER, 
	"STACK_YAML" VARCHAR2(1), 
	"IMAGE_NAME" VARCHAR2(200), 
	"WAR_FILE" VARCHAR2(200), 
	"DATA_SOURCES" VARCHAR2(2000), 
	"APP_CONTEXT_PATH" VARCHAR2(200), 
	"ADDL_PROPS" VARCHAR2(4000), 
	"FLYWAY_DATA_SOURCES" VARCHAR2(4000)
   )
/
CREATE TABLE  "TB_SAML_ENV_APPS" 
   (	"ENV_NAME" VARCHAR2(100), 
	"APP_NAME" VARCHAR2(100), 
	"APP_DESCR" VARCHAR2(100), 
	"APP_URL" VARCHAR2(200), 
	"ORD" NUMBER, 
	"AUTO_SAML_API" VARCHAR2(200)
   )
/
CREATE TABLE  "TB_WAR_DIR_UPLOAD" 
   (	"USER_ID" VARCHAR2(200), 
	"URL" VARCHAR2(2000), 
	"INSTALL_NAME" VARCHAR2(2000), 
	"PATCHSET_NO" NUMBER, 
	"FRIENDLY_NAME" VARCHAR2(200), 
	"WAR_FILE_DIR" VARCHAR2(2000)
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
CREATE TABLE  "TM_INSTALL_PROPS_ERR$" 
   (	"ORA_ERR_NUMBER$" NUMBER, 
	"ORA_ERR_MESG$" VARCHAR2(2000), 
	"ORA_ERR_ROWID$" UROWID (4000), 
	"ORA_ERR_OPTYP$" VARCHAR2(2), 
	"ORA_ERR_TAG$" VARCHAR2(2000), 
	"INSTALL_NAME" VARCHAR2(4000), 
	"ORD" VARCHAR2(4000), 
	"PROP_NAME" VARCHAR2(4000), 
	"PROP_DESCR" VARCHAR2(4000), 
	"PROP_VAL" VARCHAR2(4000), 
	"PROP_TYPE" VARCHAR2(4000), 
	"EDITABLE" VARCHAR2(4000)
   )
/
CREATE TABLE  "TM_PRODUCT_COMPONENTS" 
   (	"PRODUCT_CODE" VARCHAR2(200), 
	"COMPONENT_CODE" VARCHAR2(200), 
	"ORD" NUMBER, 
	"INSTALL_NAME" VARCHAR2(200)
   )
/
ALTER TABLE  "EMP" ADD FOREIGN KEY ("MGR")
	  REFERENCES  "EMP" ("EMPNO") ENABLE
/
ALTER TABLE  "EMP" ADD FOREIGN KEY ("DEPTNO")
	  REFERENCES  "DEPT" ("DEPTNO") ENABLE
/
CREATE OR REPLACE EDITIONABLE FUNCTION  "FN_GET_FILE_SIZE" (p_install_id in varchar2,p_host in varchar2, p_usr in varchar2, p_pass in varchar2)
return varchar2 is

l_req varchar2(32767);
l_cmd varchar2(32767);
l_install_name varchar2(100);
l_resp varchar2(32767);

begin

select LISTAGG('stat -c \"%n:%s\" '||pkg_install_util.FN_REPLACE(scp_file,install_id), ' && ') WITHIN GROUP (ORDER BY 1) 
into l_cmd
from   tb_install_progress a
        where  install_id = p_install_id
and scp_file not like '#%'
        and    lower(script_type) in ('scp');

    select prop_val
    into   l_install_name
    from   tb_install_props p
    where  p.install_id = p_install_id
    and    p.prop_name = 'install.name';
    
 l_req :=  '{"port":22,'
              ||  '"hostName": "'||p_host||'",'
              ||  '"usr": "'||p_usr||'",'
              ||  '"pwd": "'||p_pass||'",'
              ||  '"command": "'||l_cmd||'"}';

      apex_web_service.g_request_headers(1).name := 'Content-Type';  
      apex_web_service.g_request_headers(1).value := 'application/json';
      l_resp := apex_web_service.make_rest_request
      (p_url => pkg_install_util.FN_PARAM('ssh_url',l_install_name),
      p_http_method  => 'POST', p_body =>l_req,p_transfer_timeout => 3600);
      return l_resp;
end;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "FN_SSH" (p_cmd in varchar2,p_host in varchar2, p_usr in varchar2, p_pass in varchar2)
return varchar2 is

l_req varchar2(32767);
l_resp varchar2(32767);

begin

 l_req :=  '{"port":22,'
              ||  '"hostName": "'||p_host||'",'
              ||  '"usr": "'||p_usr||'",'
              ||  '"pwd": "'||p_pass||'",'
              ||  '"command": "'||p_cmd||'"}';

      apex_web_service.g_request_headers(1).name := 'Content-Type';  
      apex_web_service.g_request_headers(1).value := 'application/json';
      l_resp := apex_web_service.make_rest_request
      (p_url => pkg_install_util.FN_PARAM('ssh_url',''),
      p_http_method  => 'POST', p_body =>l_req,p_transfer_timeout => 3600);
      return l_resp;
end;
/

CREATE UNIQUE INDEX  "IND_TB_AJAX_JOBS" ON  "TB_AJAX_JOBS" ("INSTALL_ID", "THREAD_NUMBER")
/
CREATE UNIQUE INDEX  "IND_TB_INSTALL_HOSTS" ON  "TB_INSTALL_HOSTS" ("INSTALL_ID", "COMPONENT_CODE")
/
CREATE INDEX  "IND_TB_INSTALL_PROGRESS_1" ON  "TB_INSTALL_PROGRESS" ("INSTALL_ID")
/
CREATE INDEX  "IND_TB_INSTALL_PROGRESS_2" ON  "TB_INSTALL_PROGRESS" ("ID")
/
CREATE INDEX  "IND_TB_INSTALL_PROPS_1" ON  "TB_INSTALL_PROPS" ("INSTALL_ID")
/
CREATE INDEX  "IND_TB_INSTALL_PROPS_2" ON  "TB_INSTALL_PROPS" ("ID")
/
CREATE UNIQUE INDEX  "IND_TB_INSTALL_SERVICE_HOSTS" ON  "TB_INSTALL_SERVICE_HOSTS" ("INSTALL_ID", "PRODUCT_CODE", "COMPONENT_CODE", "SERVICE_NAME")
/
CREATE INDEX  "IND_TB_RI_INSTALL_LOG" ON  "TB_RI_INSTALL_LOG" ("INSTALL_ID")
/
CREATE INDEX  "IND_TB_RI_INSTALL_LOG1" ON  "TB_RI_INSTALL_LOG" ("PURGE_STAT")
/
CREATE INDEX  "IND_TM_INSTALL_PROPS" ON  "TM_INSTALL_PROPS" ("INSTALL_NAME", "PROP_NAME")
/
CREATE INDEX  "IND_TM_INSTALL_PROPS_2" ON  "TM_INSTALL_PROPS" ("INSTALL_NAME")
/
CREATE INDEX  "IND_TM_INSTALL_STEPS_2" ON  "TM_INSTALL_STEPS" ("INSTALL_NAME")
/
CREATE INDEX  "IND_TM_INSTALL_SUMMARY_1" ON  "TM_INSTALL_SUMMARY" ("INSTALL_NAME")
/
CREATE UNIQUE INDEX  "IND_TM_OBMA_PATCHSETS1" ON  "TM_OBMA_PATCHSETS" ("PATCHSET_NO")
/
CREATE UNIQUE INDEX  "IND_TM_OBMA_PATCHSETS2" ON  "TM_OBMA_PATCHSETS" ("FRIENDLY_NAME")
/
CREATE OR REPLACE EDITIONABLE PACKAGE  "PKG_INSTALL_AJAX_UTIL" pkg_install_ajax_util
is
function ajax_mode return boolean;
procedure pr_master_thread(p_install_id in varchar2);
procedure pr_slave_thread(p_install_id in varchar2, p_thread_no in number);
end;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY  "PKG_INSTALL_AJAX_UTIL" pkg_install_ajax_util
is
function ajax_mode return boolean
is
begin
if upper(v('APP_USER')) like 'RANJITH.VIJ%' then return true; else return false;end if;
end;
procedure update_progress(p_rid rowid, p_msg in varchar2)
is
begin
update tb_ajax_jobs set last_active_time = systimestamp,
current_process = p_msg 
where rowid =p_rid;
commit;
end;
function pending_tasks_exists (p_install_id in varchar2) return boolean
is
l_cnt number;
begin
    select  count(1)
    into    l_cnt
    from    tb_ri_install_log
    where   install_id = p_install_id
    and     install_stat = 'A';
    if l_cnt > 0
    then
        return false;
    end if;
    select count(1) c
    into    l_cnt
    from   tb_install_progress a
    where  install_id = p_install_id
    and    lower(script_type) in ('ssh','scp')
    and    nvl(status,'N') = 'E';
    if l_cnt > 0
    then
        return false;
    end if;
    select count(1) c
    into    l_cnt
    from   tb_install_progress a
    where  install_id = p_install_id
    and    lower(script_type) in ('ssh','scp')
    and    nvl(status,'N') = 'N';
    if l_cnt = 0
    then
        return false;
    end if;
    
    return true;
end;

procedure pr_master_thread(p_install_id in varchar2)
is
   l_rid rowid;
begin
    if not ajax_mode then return;end if;
    begin
    insert into tb_ajax_jobs (install_id, thread_number,last_active_time,current_process)
    values (p_install_id, 0, systimestamp,'') returning rowid into l_rid;
    commit;
    update_progress(l_rid,'Calling master');
    pkg_install_util.PR_RUN_TASKS_PARALLEL(p_install_id);
    exception when dup_val_on_index then null;
    end;
    update_progress(l_rid,'Finished master');
    commit;
end;
procedure pr_slave_thread(p_install_id in varchar2, p_thread_no in number)
is
   l_task_id varchar2(200);
   thread_wait exception;
   l_rid rowid;
begin
    if not ajax_mode then return;end if;
    begin
    insert into tb_ajax_jobs (install_id, thread_number,last_active_time,current_process)
    values (p_install_id, p_thread_no, systimestamp,'')
    returning rowid into l_rid;
    exception when dup_val_on_index then null;
    end;
    commit;
    --if upper(v('APP_USER')) like 'RANJITH%' then sleep(30); end if;
    for i in 1..540
    loop
    begin
        update_progress(l_rid,'woke-up '||i);
        
        if not pending_tasks_exists (p_install_id)
        then
            update_progress(l_rid,'exit '||i);
            exit;
        end if;
        begin
        select id
        into   l_task_id
        from   tb_install_progress
        where  install_id = p_install_id
        and    status = 'S'
        and    rownum = 1;
        exception
            when no_data_found
            then
                raise thread_wait;
        end;
        begin
            insert into tb_ajax_jobs_lock values(l_task_id);
            commit;
            update_progress(l_rid,'running task '||l_task_id);
            pkg_install_util.PR_TASK(l_task_id);
        exception
            when dup_val_on_index
            then
                continue;
        end;
    exception when thread_wait
    then
        update_progress(l_rid,'sleep '||i);
        sleep(2);
    end;
    end loop;
end;
end;
/

CREATE OR REPLACE EDITIONABLE PACKAGE  "PKG_INSTALL_UTIL" PKG_INSTALL_UTIL
IS
PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2,p_env_code in varchar2,p_network in varchar2);
PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2);
PROCEDURE PR_TASK(p_task_id in varchar2);
PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2);
FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2;
FUNCTION FN_PARAM(p_param in varchar2,p_install_name in varchar2:=null) return varchar2 result_cache;

PROCEDURE pr_ins_multi_host(p_id in varchar2, p_install_name in varchar2,P_HOST_NAME in varchar2);
procedure pr_purge;
function prop_val (p_install_id in varchar2, p_prop_name in varchar2) return VARCHAR2;
END;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY  "PKG_INSTALL_UTIL" PKG_INSTALL_UTIL
IS
e_error exception;

PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2,p_env_code in varchar2,p_network in varchar2)
IS
  l_multi number := 0;
  l_prop_val varchar2(4000);
  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)
  is
  begin
    update tb_install_props set prop_val = p_prop_val where install_id = p_id and prop_name = p_prop;
    if sql%rowcount = 0 then
    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)
    values (sys_guid(),p_id,0,p_prop,p_prop_val);
    end if;
  end;
BEGIN
  delete tb_install_props where install_id = p_id;
  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) 
  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS
  where install_name = p_install_name ;
  pr_ins('install.name',P_INSTALL_NAME);
  pr_ins('host.name',P_HOST_NAME);
  pr_ins('host.user',P_USER_ID);
  pr_ins('host.pass',P_PASS);
  pr_ins('install.id',p_id);
  pr_ins('env.code',p_env_code);
  pr_ins('network.name',p_network);
  pr_ins('docker.network.name',p_network);
  --dbms_session.sleep(20);

  insert into tb_ri_install_log(install_id,install_name,user_id,target_hosts,
    network_name,start_time,end_time,install_stat,purge_stat,purge_time,env_code)
    values
    (p_id,P_INSTALL_NAME,v('APP_USER'),P_HOST_NAME,
    p_network,sysdate,null,'W','N',null,p_env_code);

  commit;
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
l_aborted   number;
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
      select count(1)
      into  l_aborted
      from  tb_ri_install_log 
      where  install_id = p_install_id
      and   install_stat = 'A';
      if l_aborted > 0
      then
        raise e_error;
      end if;
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
              commit;
              if not pkg_install_ajax_util.ajax_mode
              then
              l_jobname := dbms_scheduler.generate_job_name('RI_');
              dbms_scheduler.create_job(
                job_name            => l_jobname,
                job_type            => 'PLSQL_BLOCK',
                job_action          => 'begin PKG_INSTALL_UTIL.PR_TASK('''||j.id||'''); end;',
                enabled             => true);
              commit;
              end if;
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
        into  l_aborted
        from  tb_ri_install_log 
        where  install_id = p_install_id
        and     install_stat = 'A';
        if l_aborted > 0
        then
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

  update tb_ri_install_log set install_stat='S', end_time=sysdate where install_id=p_install_id;
  delete tb_install_props where install_id=p_install_id and prop_name='host.pass';
exception
  when e_error
  then
    null;
  update tb_ri_install_log set install_stat = case when l_aborted >0 then 'A' else 'E' end, end_time=sysdate where install_id=p_install_id;
  delete tb_install_props where install_id=p_install_id and prop_name='host.pass';
end;
function prop_val (p_install_id in varchar2, p_prop_name in varchar2)
return VARCHAR2
is
l_prop_val varchar2(2000);
begin
    begin
    select  prop_val
    into    l_prop_val
    from    tb_install_props
    where   install_id = p_install_id
    and     prop_name = p_prop_name
    and     rownum = 1;
    exception when no_data_found
    then
       null;
    end;
    return l_prop_val;
end;

PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)
is
l_jobname  varchar2(255);
l_host_name  varchar2(200);
begin
  delete tb_install_progress where install_id = p_id;

  l_host_name := prop_val(p_id,'host.name');


    insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_file,host_name)
    select sys_guid(),p_id,ord,script,descr,0,'N',SCRIPT_TYPE,scp_file,
    case when nvl(target_host,'{default-host}') ='{default-host}' then l_host_name
         when target_host like '{%}' then 
            (
                select  host_name 
                from    tb_install_hosts
                where   install_id = p_id
                and     '{'||component_code||'}' = target_host
            )
        when target_host is not null then target_host
        end
    from   tm_install_steps
    where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = 'install.name');

  commit;
  if not pkg_install_ajax_util.ajax_mode
  then
  l_jobname := dbms_scheduler.generate_job_name('RI_');
  dbms_scheduler.create_job(
    job_name            => l_jobname,
    job_type            => 'PLSQL_BLOCK',
    --job_action          => 'begin PKG_INSTALL_UTIL.PR_RUN_TASKS('''||P_ID||'''); end;',
    job_action          => 'begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL('''||P_ID||'''); end;',
    enabled             => true);
  commit;
  end if;
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
         l_prop := l_prop||j.prop_name||'='||fn_replace(j.prop_val,i.install_id)||'\n';
      end if;
    end loop;
    case lower(i.script_type)
      when 'ssh'
      then
        l_req :=  '{"port":22,'
              --||  '"hostName": "'||l_tb('host.name')||'",'
              ||  '"hostName": "'||i.host_name||'",'
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
              --||  '"hostName": "'||l_tb('host.name')||'",'
              ||  '"hostName": "'||i.host_name||'",'
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
  procedure pr_replace(p_tag in varchar2, p_val in varchar2)
  is
  begin
      if instr(L_RETVAL,p_tag) > 0
      then
        L_RETVAL := replace(L_RETVAL,p_tag,p_val);
      end if;
  end;
BEGIN
    if L_RETVAL like '%{%#host}%' or L_RETVAL like '%{%#port}%'
    then
    for i in
        (
        select *
        from    tb_install_service_hosts
        where   install_id = p_install_id
        )
    loop
      pr_replace('{'||i.service_name||'#host}',i.host_name);
      pr_replace('{'||i.service_name||'#port}',to_char(i.port_forward));
    end loop;
    end if;
    if L_RETVAL like '%{%}%'
    then
    for j in (select * from tb_install_props where install_id = P_install_id)
    loop
      pr_replace ('{'||j.prop_name||'}',j.prop_val);
    end loop;
    end if;
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

PROCEDURE pr_ins_multi_host(p_id in varchar2, p_install_name in varchar2,P_HOST_NAME in varchar2)
is
  l_product varchar2(2000);
  l_install_name varchar2(2000) := ':'||p_install_name||':';
  l_cnt number := 0;
  l_num number;
begin
   delete tb_install_hosts where install_id = p_id;
   delete tb_install_service_hosts where install_id = p_id;
   while l_install_name is not null
   loop
   l_num := l_num +1;
   if l_num > 1000 then exit; end if;
   l_product := substr(l_install_name,1, instr(l_install_name,':',1,1)-1);
   l_install_name := substr(l_install_name, (instr(l_install_name,':',1,1))+1);
   for i in (select * from tm_product_components where product_code = l_product)
   loop
        select count(1) into l_cnt from tb_install_hosts where install_id = p_id and component_code = i.component_code;
        if l_cnt = 0
        then
            insert into tb_install_hosts (install_id,product_code,component_code,host_name,required,ord)
            values(p_id,i.product_code,i.component_code,p_host_name,'Y',i.ord);
        end if;
        for j in (select * from tm_product_component_services where component_code = i.component_code)
        loop
            select count(1) into l_cnt from tb_install_service_hosts where install_id = p_id and component_code = i.component_code
            and service_name = j.service_name;
            if l_cnt = 0
            then
                insert into tb_install_service_hosts (install_id,product_code,component_code,service_name,host_name,required,ord,num_scale,port_forward,addl_props,deployment_selector)
                values(p_id,p_install_name,i.component_code,j.service_name,p_host_name,j.mandatory,j.ord,nvl(j.default_scale,1),j.port_forward,j.addl_props,j.deployment_selector);
            end if;
        end loop;
   end loop;
   end loop;
end;

procedure pr_purge is
begin

    delete from tb_ajax_jobs_lock
    where task_id in (select p.id from tb_install_progress p
    where p.install_id in (select b.install_id from tb_ri_install_log b where b.start_time < sysdate-1));
    delete from tb_ajax_jobs p
    where p.install_id in (select b.install_id from tb_ri_install_log b where b.start_time < sysdate-1);
    delete from tb_ajax_jobs_lock
    where task_id not in (select p.id from tb_install_progress p);
    delete from tb_ajax_jobs p
    where p.install_id not in (select b.install_id from tb_ri_install_log b);
    delete tb_install_props where install_id in (select b.install_id from tb_ri_install_log b where b.start_time < sysdate-1);
    delete tb_install_progress where install_id in (select b.install_id from tb_ri_install_log b where b.start_time < sysdate-1);
    delete tb_install_hosts where install_id in (select b.install_id from tb_ri_install_log b where b.start_time < sysdate-1);
    delete tb_install_service_hosts where install_id in (select b.install_id from tb_ri_install_log b where b.start_time < sysdate-1);
    delete tb_install_props where install_id not in (select b.install_id from tb_ri_install_log b);
    delete tb_install_progress where install_id not in (select b.install_id from tb_ri_install_log b);
    delete tb_install_hosts where install_id not in (select b.install_id from tb_ri_install_log b);
    delete tb_install_service_hosts where install_id not in (select b.install_id from tb_ri_install_log b);
    update tb_ri_install_log set purge_stat ='Y', purge_time =sysdate where purge_time is null and start_time < sysdate-1;
end;

END;
/

CREATE OR REPLACE EDITIONABLE PACKAGE  "PKG_INSTALL_UTIL_MISC" 
is
procedure pr_k8s_yaml(p_install_id in varchar2, p_component_code in varchar2 := null,p_service_name in varchar2:=null);
procedure pr_docker_stack_yaml(p_install_id in varchar2, p_component_code in varchar2 := null,p_service_name in varchar2:=null);
procedure pr_get_components(p_install_id in varchar2, p_split in varchar2 := '10');
procedure pr_run_chart(p_install_id in varchar2);
procedure pr_list_wars(p_install_name in varchar2,p_patchset in varchar2,p_ri_qualified_only in varchar2);
procedure pr_parse_war_dir(p_install_name in varchar2,p_url in varchar2);
procedure pr_upload_patshset_definition;
procedure pr_docker_stack_yaml_odt_db(p_install_id in varchar2);
procedure pr_docker_stack_yaml_odt_wls(p_install_id in varchar2);
procedure pr_install_props(p_install_id in varchar2, p_format in varchar2 :=null,p_consol_sql in varchar2 := null, p_load_proc in varchar2 := null, p_run_proc in varchar2 := null);
end;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY  "PKG_INSTALL_UTIL_MISC" is
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
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "PR_SAML_HTML" (p_saml_token in varchar2) is 
xx varchar2(32767);
yy  varchar2(32767);
dd   varchar2(32767);
saml_user varchar2(32767);
n number := 0;
num_cards_in_a_row number := 5;
type ty_envs is table of tb_saml_envs%rowtype index by binary_integer;
tb_envs ty_envs;

type ty_apps is table of tb_saml_env_apps%rowtype index by binary_integer;
tb_apps ty_apps;

function fn_envs return ty_envs result_cache
is
t ty_envs;
begin
  for i in (select * from tb_saml_envs order by ord)
  loop
     t(t.count+1) := i;
  end loop;
  return t;
end;

function fn_apps(p_env_name in varchar2) return ty_apps result_cache
is
t ty_apps;
begin
  for i in (select * from tb_saml_env_apps where env_name = p_env_name order by ord)
  loop
     t(t.count+1) := i;
  end loop;
  return t;
end;

function fn_app_img (p_app_name in varchar2) return varchar2 result_cache
is
 a varchar2(1000);
begin
  select img_tag into a from tb_saml_apps where app_name = p_app_name;
  return a;
exception
  when no_data_found
  then
    return '<span aria-hidden="true" class="fa fa-cube fa-5x"></span>';
end;

begin
begin
--select xmltype(utl_raw.cast_to_varchar2(utl_encode.base64_decode(utl_raw.cast_to_raw (p_saml_token))))
--into xx
--from dual;
xx := (utl_raw.cast_to_varchar2(utl_encode.base64_decode(utl_raw.cast_to_raw (p_saml_token))));
for i in 1..4
loop
    select 
    --yy := yy||chr(10)
        xmltype(xx).extract('/samlp:Response/saml:Assertion/saml:AttributeStatement/saml:Attribute['||i||']/saml:AttributeValue/text()','xmlns:samlp="urn:oasis:names:tc:SAML:2.0:protocol" xmlns:dsig="http://www.w3.org/2000/09/xmldsig#" xmlns:enc="http://www.w3.org/2001/04/xmlenc#" xmlns:saml="urn:oasis:names:tc:SAML:2.0:assertion" xmlns:x500="urn:oasis:names:tc:SAML:2.0:profiles:attribute:X500" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"').getstringval()
     into yy
    from dual;
    dd := dd||'<h1>'||yy||'</h1><br>';
    saml_user := saml_user||upper(yy);
end loop;


exception
when others
then null;
end;
dd := dd||'<h2>'||saml_user||'</h2><br>';
--dd := dd||yy;
--insert into tmp_saml1 values (xx);

tb_envs := fn_envs;
htp.p('<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://static.oracle.com/cdn/apex/20.1.0.00.13-a/libraries/font-apex/2.1/css/font-apex.min.css?v=20.1.0.00.13" type="text/css" />
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}
.tabcontent {
  float: left;
  padding: 0px 12px;
  border: none;
  width: 80%;
  border-left: none;
  height: 80%;
  display: none;
  margin-top: 50px;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 200px;
  height: 200px;
  border-radius: 5px;
  text-align: center;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

img {
  border-radius: 5px 5px 0 0;
}

.container {
  padding: 2px 16px;
}
.sidebar {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 200px;
}

a:link  {
    text-decoration: none;
    color: black;
}
a.link1:link {text-decoration: none; color:gray;}
a.link1:hover {background:white;}
      
#navbar {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 10px 10px;
  transition: 0.4s;
  position: fixed;
  width: 85%;
  top: 0;
  z-index: 99;
  margin-left: 200px;
}

#navbar a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

#navbar a:hover {
  background-color: #ddd;
  color: black;
}

#navbar-right {
  float: right;
}

.card1 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 500px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title1 {
  color: grey;
  font-size: 18px;
}
      
.label {
  color: white;
  padding: 8px;
}

.success {background-color: #4CAF50;} /* Green */
.info {background-color: #2196F3;} /* Blue */
.warning {background-color: #ff9800;} /* Orange */
.danger {background-color: #f44336;} /* Red */
.blacky {background-color: black;}
.grayy {background-color: #D2CFCE; font-size: 20px;}
      
</style>
</head>');
htp.p('<body onload="showEnv(event, '''||tb_envs(1).env_name||''');">');
htp.p('<input type="hidden" id="samltoken" name="samltoken" value="'||p_saml_token||'">');

htp.p('<div id="navbar">
  <div id="navbar-right">
    <a href="https://login-stage.oracle.com/oamfed/idp/initiatesso?providerid=fsgbu-japac-ri"><i class="fa fa-refresh fa-2x"></i> &nbsp Renew SAML </a>
    <a href="javascript:showEnv(event, ''Token Info'');"><i class="fa fa-info-square-o fa-2x"></i> &nbsp Token Info</a>
    <a href="#about">About</a>
  </div>
</div>');

htp.p('<div class="sidebar">');

--htp.p('<a href="https://login-stage.oracle.com/oamfed/idp/initiatesso?providerid=fsgbu-japac-ri"><i class="fa fa-refresh fa-2x"></i> &nbsp Renew SAML </a>');

htp.p('<a href="#"> Environments </a>');

for i in tb_envs.first..tb_envs.last
loop
      htp.p('<a class="link1" href="javascript:showEnv(event, '''||tb_envs(i).env_name||''');"><i class="fa '||tb_envs(i).icon_class||' fa-2x"></i> &nbsp '||tb_envs(i).env_name||'</a>');
end loop;
htp.p('</div>');
htp.p('<div class="main">');

     
for i in tb_envs.first..tb_envs.last
loop
    htp.p('<div id="'||tb_envs(i).env_name||'" class="tabcontent">
      <h3>'||tb_envs(i).env_name||'</h3>
      <p>'||tb_envs(i).env_descr||'</p><table><tr>');
       tb_apps := fn_apps(tb_envs(i).env_name); 
       if tb_apps.count > 0
       then
         n := 0;
         for j in tb_apps.first..tb_apps.last
         loop
            if n = num_cards_in_a_row then htp.p('</tr><tr>'); n := 0; end if;
            n := n+1;
            htp.p('<td><a href="javascript:post_to_url('''||tb_apps(j).app_url||''');">
<div class="card">'||
                  fn_app_img(tb_apps(j).app_name)
                  ||
  '<div class="container">
                  <p><span class="label blacky">
    '|| tb_apps(j).app_name ||'</span>
    <p><span class="label grayy">'||tb_apps(j).app_descr||'</span></p>
  </div>
</div>
</td>');


if tb_apps(j).AUTO_SAML_API is not null
then
begin
yy := APEX_WEB_SERVICE.make_rest_request(
    p_url         => tb_apps(j).AUTO_SAML_API ,
    p_http_method => 'POST',
    p_body => '{"msgId": "'||sys_guid()||'","msgCode": "setSAMLDemoUser","samlID": "'||saml_user||'"}'
  );
  dd := dd||'<br>Auto Saml request sent for '||tb_envs(i).env_name||'/'||tb_apps(j).app_name||' Response : '||yy;
exception
when others
then
null;
end;
end if;

         end loop;
       end if;
     htp.p('</tr></table></div>');

end loop;
htp.p('<div id="Token Info" class="tabcontent">'||dd||'</div>');
htp.p('</div>');

htp.p('
<script>
function showEnv(evt, envName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  document.getElementById(envName).style.display = "block";
}
function post_to_url(path) {
    var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", path);
    form.setAttribute("target", "_blank");
    var hiddenField = document.createElement("input");
    hiddenField.setAttribute("type", "hidden");
    hiddenField.setAttribute("name", "SAMLResponse");
    hiddenField.setAttribute("value", document.getElementById("samltoken").value );
    form.appendChild(hiddenField);
    document.body.appendChild(form);
    form.submit();
    document.body.removeChild(form);
}
</script>
</body></html>');
end;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "PR_STAT" (p_install_id in varchar2, p_host in varchar2, p_user in varchar2, p_pass in varchar2)
is
x varchar2(32767);
ds varchar2(32767);
ss varchar2(32767);
sh varchar2(1000);
begin
select substr(ltrim(param_val,'http://'),1, (instr ( ltrim(param_val,'http://'),':')-1)) 
into sh
from tm_install_params
where param_name = 'scp_url';

for i in (
select 
pkg_install_util.fn_replace(scp_file,install_id) src,
pkg_install_util.fn_replace(script,install_id) dst,
status,
a.rowid rid
from tb_install_progress a
where install_id = p_install_id
and script_type ='scp'
--and script like '%volume%'
)
loop

    ds := fn_ssh('stat -c \"%n:%s\" '||i.dst,p_host,p_user,p_pass);
    ss := fn_ssh('stat -c \"%n:%s\" '||i.src,sh,p_user,p_pass);
    
    select json_value(ds, '$.output') ,json_value(ss, '$.output')
    into   ds,ss
    FROM   dual;
    ds := rtrim(ltrim(ds,i.dst||':'),'\n');
    ss := rtrim(ltrim(ss,i.src||':'),'\n');

    update tb_install_progress set err = ds||'/'||ss ||' bytes transferred' where rowid = i.rid;

null;
end loop;
end;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "PR_TESTGETRESTPLSQL" (p_arg1 in varchar2, p_arg2 in varchar2)
is
begin
  htp.print
  ('{"myResponse": {
           "echoArg1": "'|| p_arg1 ||'",
           "echoArg2": " '||p_arg2||'",
           "respTimeStamp":"'||systimestamp||'"
           }
   }');
end;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "SLEEP" (p_sec in number)
is
begin
  dbms_session.sleep(p_sec);
end;
/

 CREATE SEQUENCE   "DEPT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 50 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "EMP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8000 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
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
CREATE OR REPLACE EDITIONABLE TRIGGER  "DEPT_TRG1" 
              before insert on dept
              for each row
              begin
                  if :new.deptno is null then
                      select dept_seq.nextval into :new.deptno from sys.dual;
                 end if;
              end;
/
ALTER TRIGGER  "DEPT_TRG1" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "EMP_TRG1" 
              before insert on emp
              for each row
              begin
                  if :new.empno is null then
                      select emp_seq.nextval into :new.empno from sys.dual;
                 end if;
              end;
/
ALTER TRIGGER  "EMP_TRG1" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "TR_INSTALL_HOSTS" 
AFTER UPDATE
   ON tb_install_hosts
   FOR EACH ROW
BEGIN
update tb_install_service_hosts set host_name = :new.host_name where install_id = :new.install_id and component_code = :new.component_code;
END;

/
ALTER TRIGGER  "TR_INSTALL_HOSTS" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "TR_RI_ENV_COMPONENTS" 
before insert or update on tm_ri_env_components
for each row
begin
    if :new.component_id is null
    then
       :new.component_id := sys_guid();
    end if;
end;

/
ALTER TRIGGER  "TR_RI_ENV_COMPONENTS" ENABLE
/
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "VW_INSTALL_COMPONENT_SERVICE_PROPS" ("INSTALL_ID", "COMPONENT_CODE", "SERVICE_NAME", "ADDL_PROPS", "PROP_TYPE", "PROP_NAME", "PROP_VAL") AS 
  select a."INSTALL_ID",a."COMPONENT_CODE",a."SERVICE_NAME",a."ADDL_PROPS", 
substr(addl_props,8,3) prop_type,
substr(substr(addl_props,1,instr(addl_props,'=')-1),12) prop_name,
substr(addl_props,instr(addl_props,'=')+1) prop_val
from
(
  select distinct t.install_id,
  t.COMPONENT_CODE, t.SERVICE_NAME,
  trim(regexp_substr(t.addl_props, '[^,]+', 1, levels.column_value))  as addl_props
from 
  tb_install_service_hosts t,
  table(cast(multiset(select level from dual connect by  level <= length (regexp_replace(t.addl_props, '[^,]+'))  + 1) as sys.OdciNumberList)) levels
where addl_props is not null
and addl_props like 'docker-%.%'
order by COMPONENT_CODE,SERVICE_NAME
) a
/
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "VW_PRODUCT_COMPONENT_SERVICE_DATASOURCES" ("COMPONENT_CODE", "SERVICE_NAME", "DATA_SOURCE", "SCHEMA_NAME", "JDBC_NAME", "DS_NUM") AS 
  select a."COMPONENT_CODE",a."SERVICE_NAME",a."DATA_SOURCE", substr(data_source,1,instr(data_source,' ')-1) schema_name,
substr(data_source,instr(data_source,' ')+1) jdbc_name,
 row_number() OVER(
        PARTITION BY COMPONENT_CODE,SERVICE_NAME
        ORDER BY data_source
    ) ds_num
from
(
  select distinct
  t.COMPONENT_CODE, t.SERVICE_NAME,
  trim(regexp_substr(t.DATA_SOURCES, '[^,]+', 1, levels.column_value))  as DATA_SOURCE
from 
  tm_product_component_services t,
  table(cast(multiset(select level from dual connect by  level <= length (regexp_replace(t.DATA_SOURCES, '[^,]+'))  + 1) as sys.OdciNumberList)) levels
  where DATA_SOURCES is not null
order by COMPONENT_CODE,SERVICE_NAME
) a
/
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "VW_PRODUCT_COMPONENT_SERVICE_PROPS" ("COMPONENT_CODE", "SERVICE_NAME", "ADDL_PROPS", "PROP_TYPE", "PROP_NAME", "PROP_VAL") AS 
  select a."COMPONENT_CODE",a."SERVICE_NAME",a."ADDL_PROPS", 
substr(addl_props,8,3) prop_type,
substr(substr(addl_props,1,instr(addl_props,'=')-1),12) prop_name,
substr(addl_props,instr(addl_props,'=')+1) prop_val
from
(
  select distinct
  t.COMPONENT_CODE, t.SERVICE_NAME,
  trim(regexp_substr(t.addl_props, '[^,]+', 1, levels.column_value))  as addl_props
from 
  tm_product_component_services t,
  table(cast(multiset(select level from dual connect by  level <= length (regexp_replace(t.addl_props, '[^,]+'))  + 1) as sys.OdciNumberList)) levels
where addl_props is not null
and addl_props like 'docker-%.%'
order by COMPONENT_CODE,SERVICE_NAME
) a
/
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "VW_RI_INSTALL_LOG" ("INSTALL_ID", "INSTALL_NAME", "USER_ID", "TARGET_HOSTS", "NETWORK_NAME", "START_TIME", "END_TIME", "INSTALL_STAT", "PURGE_STAT", "PURGE_TIME", "ENV_CODE", "INSTALL_YEAR", "INSTALL_MONTH") AS 
  select a."INSTALL_ID",a."INSTALL_NAME",a."USER_ID",a."TARGET_HOSTS",a."NETWORK_NAME",a."START_TIME",a."END_TIME",a."INSTALL_STAT",a."PURGE_STAT",a."PURGE_TIME",a."ENV_CODE", to_char(start_time,'YYYY') install_year, to_char(start_time,'MON') install_month
from tb_ri_install_log a
/
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "VW_RI_RESOURCE_REQUIREMENT" ("INSTALL_ID", "PRODUCT_CODE", "COMPONENT_CODE", "SERVICE_NAME", "HOST_NAME", "NUM_SCALE", "CPU", "MEM") AS 
  select a.install_id,a.product_code,a.component_code,a.service_name,a.host_name,a.num_scale, nvl(b.cpu,1)*nvl(a.num_scale,1) cpu,
nvl(b.mem,1)*nvl(a.num_scale,1) mem
from tb_install_service_hosts a, tm_product_component_services b
where a.component_code = b.component_code
and a.service_name = b.service_name
and a.required = 'Y'
/
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "VW_RI_RESOURCE_REQUIREMENT_SUM" ("INSTALL_ID", "HOST_NAME", "CPU", "MEM") AS 
  select install_id, host_name, sum(cpu) cpu, sum(mem) mem
from vw_ri_resource_requirement 
group by install_id,host_name
/
