prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_200100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_default_workspace_id=>9543167454747457677
);
end;
/
prompt  WORKSPACE 9543167454747457677
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   07:41 Saturday April 4, 2020
--   Exported By:     RANJITH.VIJAYAN@ORACLE.COM
--   Export Type:     Workspace Export
--   Version:         20.1.0.00.12
--   Instance ID:     63102946836549
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_200100
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>9543167454747457677);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace FSGBU_JAPAC_RI...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 9543522952578463231
 ,p_provisioning_company_id => 9543167454747457677
 ,p_short_name => 'FSGBU_JAPAC_RI'
 ,p_display_name => 'FSGBU_JAPAC_RI'
 ,p_first_schema_provisioned => 'FSGBUJAPACRI'
 ,p_company_schemas => 'FSGBUJAPACRI'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'FSGBU_JA'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'FSGBU_JAPAC_RI'
 ,p_files_version => 1
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 2306217129445173133,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1820381101508425,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 6427553016611555366,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9543167386315457677',
  p_user_name                    => 'RANJITH.VIJAYAN@ORACLE.COM',
  p_first_name                   => 'RANJITH',
  p_last_name                    => 'VIJAYAN',
  p_description                  => '',
  p_email_address                => 'RANJITH.VIJAYAN@ORACLE.COM',
  p_web_password                 => '52121FCD20691C0E6D4D106720AB722463CB10C22E517C57994F0C4ACB20F2B3D6F43ECD6C73EEE4CFA0134A802EC0D7396E58852C9F0A2F3DE846756A5227C9',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1820381101508425:2306217129445173133:6427553016611555366:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'FSGBUJAPACRI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202004030127','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '636992999295859113',
  p_user_name                    => 'VIKRAM.VENKATESH@ORACLE.COM',
  p_first_name                   => 'Vikram',
  p_last_name                    => 'Venkatesh',
  p_description                  => '',
  p_email_address                => 'vikram.venkatesh@oracle.com',
  p_web_password                 => '27E4ED33B478661AF6ECDAC840FF2955D9DF48C92DACF9134057A667A0CF639CD7F6276F67F8B93146BDBD73CEEB87D636CD7047A7C9BA42782CD5BB332617C7',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1820381101508425:2306217129445173133:6427553016611555366:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'FSGBUJAPACRI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202004020000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
----------------
--App Builder Preferences
--
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
begin
 wwv_flow_api.create_mail_log (
    p_mail_id => 563668822086997434,
    p_mail_to => 'ranjith.vijayan@oracle.com',
    p_mail_from => 'oracle-application-express_ww@oracle.com',
    p_mail_replyto => '',
    p_mail_subj => 'ranjith.vijayan@oracle.com',
    p_mail_cc => '',
    p_mail_bcc => '',
    p_mail_send_error => '',
    p_last_updated_by => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_last_updated_on => to_date('202004011134','YYYYMMDDHH24MI'));
end;
/
begin
 wwv_flow_api.create_mail_log (
    p_mail_id => 764166690373636281,
    p_mail_to => 'ranjith.vijayan@oracle.com',
    p_mail_from => 'oracle-application-express_ww@oracle.com',
    p_mail_replyto => '',
    p_mail_subj => 'Application Express Request',
    p_mail_cc => '',
    p_mail_bcc => '',
    p_mail_send_error => '',
    p_last_updated_by => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_last_updated_on => to_date('202004030128','YYYYMMDDHH24MI'));
end;
/
----------------
--app models
--
----------------
--password history
--
begin
  wwv_flow_api.create_password_history (
    p_id => 636993179424859132,
    p_user_id => 636992999295859113,
    p_password => '27E4ED33B478661AF6ECDAC840FF2955D9DF48C92DACF9134057A667A0CF639CD7F6276F67F8B93146BDBD73CEEB87D636CD7047A7C9BA42782CD5BB332617C7');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 9543523162248463260,
    p_user_id => 9543167386315457677,
    p_password => 'DAB9149D3ED30BAB2D1B5DA03A4DED42050364A73D8BAC394BDE49803C1EADAC77394EE558B1FD66CFFDB11FD021EFE54D9D3C492B8321B73FDD67CE3355D98B');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 9543278309937239200,
    p_user_id => 9543167386315457677,
    p_password => '7ABD7F29B8D77FAD7AF1EB3FEA1A7F62B3308DF921AF4D903C74A5E5F5C3C086C46BDBB20938E6793474CBC7EB5612287CCAA3B2CDEA4DAFE1FAF301FC278235');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 764166402603636279,
    p_user_id => 9543167386315457677,
    p_password => '52121FCD20691C0E6D4D106720AB722463CB10C22E517C57994F0C4ACB20F2B3D6F43ECD6C73EEE4CFA0134A802EC0D7396E58852C9F0A2F3DE846756A5227C9');
end;
/
----------------
--preferences
--
begin
  wwv_flow_api.create_preferences$ (
    p_id => 554764540688406059,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_IG_163268435733875526_CURRENT_REPORT',
    p_attribute_value => '554812205884175029:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 63951317571425480,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_IG_54901865419812512_CURRENT_REPORT',
    p_attribute_value => '63945127897424108:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 552051102835706889,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_IG_552110009279466436_CURRENT_REPORT',
    p_attribute_value => '552110859552466438:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543284011047241303,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4000T3',
    p_attribute_value => '204021106338377303',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543284120743241304,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4001T3',
    p_attribute_value => '204021106338377303.4001',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543284869577241304,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4002T3',
    p_attribute_value => '204021106338377303.4002',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543284219997241304,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4003T3',
    p_attribute_value => '204021106338377303.4003',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543284967461241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4004T3',
    p_attribute_value => '204021106338377303.4004',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543285212163241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4005T3',
    p_attribute_value => '204021106338377303.4005',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543285447193241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4006T3',
    p_attribute_value => '204021106338377303.4006',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543285668643241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4007T3',
    p_attribute_value => '204021106338377303.4007',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543285358182241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4008T3',
    p_attribute_value => '204021106338377303.4008',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543284331277241304,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4009T3',
    p_attribute_value => '204021106338377303.4009',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543284488193241304,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4020T101',
    p_attribute_value => '2787940904864180601',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543284552234241304,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4021T101',
    p_attribute_value => '2787940904864180601.4021',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543285075670241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4022T101',
    p_attribute_value => '2787940904864180601.4022',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543284638043241304,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4023T101',
    p_attribute_value => '2787940904864180601.4023',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543285134806241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4024T101',
    p_attribute_value => '2787940904864180601.4024',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543285577062241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4025T101',
    p_attribute_value => '2787940904864180601.4025',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543284782070241304,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4026T101',
    p_attribute_value => '2787940904864180601.4026',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543285729083241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4027T101',
    p_attribute_value => '2787940904864180601.4027',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543286591512241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4055T3',
    p_attribute_value => '204023405870765307.4055',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 124804991774908629,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_IG_54903135096812525_CURRENT_REPORT',
    p_attribute_value => '124801302895907473:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 558624292829058429,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_IG_554943214111442027_CURRENT_REPORT',
    p_attribute_value => '558549165003829241:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 558732405384857647,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_IG_554944699526442041_CURRENT_REPORT',
    p_attribute_value => '558651662404086143:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 558852219255915410,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_IG_558806149344891604_CURRENT_REPORT',
    p_attribute_value => '558842918275913392:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 558883496034931767,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_IG_558807471329891617_CURRENT_REPORT',
    p_attribute_value => '558880338669930177:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 559004934350943890,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_IG_558807995376891622_CURRENT_REPORT',
    p_attribute_value => '559001851368943298:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543285860494241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4028T101',
    p_attribute_value => '2787940904864180601.4028',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543285986743241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4029T101',
    p_attribute_value => '2787940904864180601.4029',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543286059475241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4050T3',
    p_attribute_value => '204023405870765307',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543286137495241305,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4051T3',
    p_attribute_value => '204023405870765307.4051',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543286235509241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4052T3',
    p_attribute_value => '204023405870765307.4052',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543286339413241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4053T3',
    p_attribute_value => '204023405870765307.4053',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543286439312241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4054T3',
    p_attribute_value => '204023405870765307.4054',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543286682815241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4056T3',
    p_attribute_value => '204023405870765307.4056',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543286752457241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4057T3',
    p_attribute_value => '204023405870765307.4057',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543286810116241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4058T3',
    p_attribute_value => '204023405870765307.4058',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543286912167241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4059T3',
    p_attribute_value => '204023405870765307.4059',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543287047409241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4300T3',
    p_attribute_value => '204023628129766298',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543287132608241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4301T3',
    p_attribute_value => '204023628129766298.4301',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543287226043241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4302T3',
    p_attribute_value => '204023628129766298.4302',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543287348517241306,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4303T3',
    p_attribute_value => '204023628129766298.4303',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543287416982241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4304T3',
    p_attribute_value => '204023628129766298.4304',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543287503480241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4305T3',
    p_attribute_value => '204023628129766298.4305',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543287620080241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4306T3',
    p_attribute_value => '204023628129766298.4306',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543287745067241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4307T3',
    p_attribute_value => '204023628129766298.4307',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543287847768241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4308T3',
    p_attribute_value => '204023628129766298.4308',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543287925806241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4309T3',
    p_attribute_value => '204023628129766298.4309',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543288051200241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4350T3',
    p_attribute_value => '204023711571766699',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543288115662241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4351T3',
    p_attribute_value => '204023711571766699.4351',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543288243030241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4352T3',
    p_attribute_value => '204023711571766699.4352',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543288345406241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4353T3',
    p_attribute_value => '204023711571766699.4353',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543288474524241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4354T3',
    p_attribute_value => '204023711571766699.4354',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543288562909241307,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4355T3',
    p_attribute_value => '204023711571766699.4355',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543288623686241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4356T3',
    p_attribute_value => '204023711571766699.4356',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543288735230241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4357T3',
    p_attribute_value => '204023711571766699.4357',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543288861639241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4358T3',
    p_attribute_value => '204023711571766699.4358',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543288922403241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4359T3',
    p_attribute_value => '204023711571766699.4359',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543289006523241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4400T3',
    p_attribute_value => '204026017999796717',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543289152611241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4401T3',
    p_attribute_value => '204026017999796717.4401',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543289264046241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4402T3',
    p_attribute_value => '204026017999796717.4402',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543289353882241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4403T3',
    p_attribute_value => '204026017999796717.4403',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543289468601241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4404T3',
    p_attribute_value => '204026017999796717.4404',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543289546007241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4405T3',
    p_attribute_value => '204026017999796717.4405',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543289638708241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4406T3',
    p_attribute_value => '204026017999796717.4406',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543289771160241308,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4407T3',
    p_attribute_value => '204026017999796717.4407',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543289897831241309,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4408T3',
    p_attribute_value => '204026017999796717.4408',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543289975152241309,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4409T3',
    p_attribute_value => '204026017999796717.4409',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543290157847241309,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4500T3',
    p_attribute_value => '204023927913767476',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543290295947241309,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4501T3',
    p_attribute_value => '204023927913767476.4501',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543290426004241309,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4502T3',
    p_attribute_value => '204023927913767476.4502',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543290353083241309,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4503T3',
    p_attribute_value => '204023927913767476.4503',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543290526152241309,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4504T3',
    p_attribute_value => '204023927913767476.4504',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543290665055241309,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4505T3',
    p_attribute_value => '204023927913767476.4505',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543290749351241309,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4508T3',
    p_attribute_value => '204023927913767476.4508',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543290093683241309,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4509T3',
    p_attribute_value => '204023927913767476.4509',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543291144629241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4551T3',
    p_attribute_value => '204024031242767851.4551',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543290870750241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4506T3',
    p_attribute_value => '204023927913767476.4506',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543290972147241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4507T3',
    p_attribute_value => '204023927913767476.4507',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543291085315241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4550T3',
    p_attribute_value => '204024031242767851',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543291247785241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4552T3',
    p_attribute_value => '204024031242767851.4552',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543291376559241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4553T3',
    p_attribute_value => '204024031242767851.4553',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543291444208241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4554T3',
    p_attribute_value => '204024031242767851.4554',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543291583141241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4555T3',
    p_attribute_value => '204024031242767851.4555',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543291643368241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4556T3',
    p_attribute_value => '204024031242767851.4556',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543291798523241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4557T3',
    p_attribute_value => '204024031242767851.4557',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543291874343241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4558T3',
    p_attribute_value => '204024031242767851.4558',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543291904018241310,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4559T3',
    p_attribute_value => '204024031242767851.4559',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543292082393241311,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4600T101',
    p_attribute_value => '209225663324524664',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543292109112241311,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4601T101',
    p_attribute_value => '209225663324524664.4601',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543292231082241311,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4602T101',
    p_attribute_value => '209225663324524664.4602',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543292332201241311,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4603T101',
    p_attribute_value => '209225663324524664.4603',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543292413655241311,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4604T101',
    p_attribute_value => '209225663324524664.4604',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543292515435241311,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4605T101',
    p_attribute_value => '209225663324524664.4605',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543292644859241311,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4606T101',
    p_attribute_value => '209225663324524664.4606',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543292703238241311,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4607T101',
    p_attribute_value => '209225663324524664.4607',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543292838552241311,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4608T101',
    p_attribute_value => '209225663324524664.4608',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543292970843241311,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4609T101',
    p_attribute_value => '209225663324524664.4609',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543293000024241312,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4650T3',
    p_attribute_value => '210531387365324264',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543293167514241312,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4651T3',
    p_attribute_value => '210531387365324264.4651',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543293261561241312,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4652T3',
    p_attribute_value => '210531387365324264.4652',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543293318536241312,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4653T3',
    p_attribute_value => '210531387365324264.4653',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543293472689241312,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4654T3',
    p_attribute_value => '210531387365324264.4654',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543293519718241313,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4655T3',
    p_attribute_value => '210531387365324264.4655',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543293634335241313,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4656T3',
    p_attribute_value => '210531387365324264.4656',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543293767882241313,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4657T3',
    p_attribute_value => '210531387365324264.4657',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543293854778241313,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4658T3',
    p_attribute_value => '210531387365324264.4658',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543293907566241313,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4659T3',
    p_attribute_value => '210531387365324264.4659',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543294003941241313,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4700T3',
    p_attribute_value => '204024310335769388',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543294145620241313,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4701T3',
    p_attribute_value => '204024310335769388.4701',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543294208595241313,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4702T3',
    p_attribute_value => '204024310335769388.4702',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543294339120241313,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4703T3',
    p_attribute_value => '204024310335769388.4703',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543294477153241314,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4704T3',
    p_attribute_value => '204024310335769388.4704',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543294575256241314,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4705T3',
    p_attribute_value => '204024310335769388.4705',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543294627338241314,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4706T3',
    p_attribute_value => '204024310335769388.4706',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543294712462241314,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4707T3',
    p_attribute_value => '204024310335769388.4707',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543294897557241314,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4708T3',
    p_attribute_value => '204024310335769388.4708',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543294974788241314,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4709T3',
    p_attribute_value => '204024310335769388.4709',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543295045205241314,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4750T3',
    p_attribute_value => '607578911660270943',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543295187478241314,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4751T3',
    p_attribute_value => '607578911660270943.4751',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543295263989241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4752T3',
    p_attribute_value => '607578911660270943.4752',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543295321393241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4753T3',
    p_attribute_value => '607578911660270943.4753',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543295461018241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4754T3',
    p_attribute_value => '607578911660270943.4754',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543295540123241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4755T3',
    p_attribute_value => '607578911660270943.4755',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543295657997241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4756T3',
    p_attribute_value => '607578911660270943.4756',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543295785590241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4757T3',
    p_attribute_value => '607578911660270943.4757',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543295831111241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4758T3',
    p_attribute_value => '607578911660270943.4758',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543295989456241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4759T3',
    p_attribute_value => '607578911660270943.4759',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543296004910241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4800T3',
    p_attribute_value => '204025408989784204',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543296154964241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4801T3',
    p_attribute_value => '204025408989784204.4801',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543296283921241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4802T3',
    p_attribute_value => '204025408989784204.4802',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543296345075241315,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4803T3',
    p_attribute_value => '204025408989784204.4803',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543296499645241316,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4804T3',
    p_attribute_value => '204025408989784204.4804',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543296533731241316,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4805T3',
    p_attribute_value => '204025408989784204.4805',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543296631032241316,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4806T3',
    p_attribute_value => '204025408989784204.4806',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543296798203241316,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4807T3',
    p_attribute_value => '204025408989784204.4807',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543296852367241316,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4808T3',
    p_attribute_value => '204025408989784204.4808',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543296947406241316,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4809T3',
    p_attribute_value => '204025408989784204.4809',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543297006831241316,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4850T3',
    p_attribute_value => '204025807133792433',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543297131547241316,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4851T3',
    p_attribute_value => '204025807133792433.4851',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543297287289241316,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4852T3',
    p_attribute_value => '204025807133792433.4852',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543297371935241316,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4853T3',
    p_attribute_value => '204025807133792433.4853',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543297434857241317,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4854T3',
    p_attribute_value => '204025807133792433.4854',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543297570180241317,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4855T3',
    p_attribute_value => '204025807133792433.4855',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543297694223241317,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4856T3',
    p_attribute_value => '204025807133792433.4856',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543297781507241317,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4857T3',
    p_attribute_value => '204025807133792433.4857',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543297851454241317,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4858T3',
    p_attribute_value => '204025807133792433.4858',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9543297930095241317,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'APEX_THEME_STYLE_A4859T3',
    p_attribute_value => '204025807133792433.4859',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9545362930060689659,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '38189',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9545607789095505629,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP38189_P1_R9488629275045974230_SORT',
    p_attribute_value => 'fsp_sort_2_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9545760216484753040,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9545362740218689650,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 163587113298009360,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP_IR_4000_P4050_W10642116325440827',
    p_attribute_value => '10643624462441172____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9545362568581689635,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 552109581245465873,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'WIZARD_SQL_SOURCE_TYPE',
    p_attribute_value => 'TABLE',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46488017911866582,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '460:false',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46487976476866582,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'F4000_203904827661009901_SPLITTER_STATE',
    p_attribute_value => '451:false',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46570461634637890,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '290:false',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46798838163865214,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '431:false',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46729175487764633,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP_IR_4000_P40_W48117227188266087',
    p_attribute_value => '48118623144274016____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 114898286553119863,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP38189_P4_R54903135096812525_SORT',
    p_attribute_value => 'fsp_sort_1_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 157704961516308010,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP38189_P6_R157655304958286924_SORT',
    p_attribute_value => 'fsp_sort_1_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 157776446331380658,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP38189_P6_R157753141917370315_SORT',
    p_attribute_value => 'fsp_sort_1_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 497121907706499372,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP38189_P7_R163266311511875505_SORT',
    p_attribute_value => 'fsp_sort_1_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 868046314531873178,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP4000_P4654_R1499572493724561712_SORT',
    p_attribute_value => 'fsp_sort_2_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 868046488333873183,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP4000_P4654_R1499573840880561732_SORT',
    p_attribute_value => 'fsp_sort_2_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 801312205603051235,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP4350_P33_R47031617128214415_SORT',
    p_attribute_value => 'fsp_sort_1_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46761530802813843,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP4500_P3002_R24083118039996911_SORT',
    p_attribute_value => 'fsp_sort_1_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 163586877634009058,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 126475339186525015,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP_IR_4000_P939_W451352700445603348',
    p_attribute_value => '451353909559603360____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 785070647881553266,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP_IR_4350_P19_W22420231632719228',
    p_attribute_value => '22421025778719420____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 785070397013553050,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP_IR_4350_P19_W370270886963630406',
    p_attribute_value => '370313089353766715____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 636893802065844083,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 785230309550323293,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'FSP_IR_4350_P7_W9412205627285339',
    p_attribute_value => '9413006316285546____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46462763001775493,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'PD_ENABLE_COMPONENT_VIEW',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46536287697601666,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '1',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46462844311775493,
    p_user_id => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_preference_name => 'PD_TAB_LAYOUT_3',
    p_attribute_value => '0:renderTree_container,0:dynActTree_container,0:procTree_container,0:sharedComp_container,1:grid_layout,1:search,1:help,2:peComponentProperties',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 499808818093873502
 ,p_command => 
'begin'||wwv_flow.LF||
'delete tm_install_summary;'||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON)'||wwv_flow.LF||
'values (''ri-fcubs-14.3'', ''App URL'', ''https://{host.name}:{oracle.wls.mgd0.port.mapped}/FCJNeoWeb'', 1, ''AP'', ''fa-external-link-square'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON)'||wwv_flow.LF||
'values (''ri-fcubs-14.3'', ''WLS Console'', ''http://{host.'||
'name}:{oracle.wls.admin.port.mapped}/console'', 2, ''WL'', ''fa-stethoscope'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON)'||wwv_flow.LF||
'values (''ri-fcubs-14.3'', ''WLS Admin ID'', ''weblogic'', 3, ''ID'', ''fa-ship'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON)'||wwv_flow.LF||
'values (''ri-fcubs-14.3'', ''WLS Admin Pwd'', ''Oracle123'', 4, ''PW'', ''fa-low-v'||
'ision'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON)'||wwv_flow.LF||
'values (''ri-fcubs-14.3'', ''DB TNS'', ''(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST ={host.name} )(PORT = {oracle.db.port.mapped}  )) (CONNECT_DATA = (SERVER = DEDICATED) (SERVICE_NAME = {oracle.db.pdb}) ) )'', 5, ''TN'', ''fa-database-wrench'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PR'||
'OP_VAL, ORD, INITIALS, ICON)'||wwv_flow.LF||
'values (''ri-fcubs-14.3'', ''DB App Schema'', ''FCUBS143/FCUBS143'', 6, ''SC'', ''fa-database-user'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON)'||wwv_flow.LF||
'values (''ri-fcubs-14.3'', ''SWIG Ports'', ''2001,2003,2004'', 7, ''SW'', ''fa-money'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311625','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 499979035488901986
 ,p_command => 
'alter table tm_install_summary add descr varchar2(250)'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311629','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 500162635780918537
 ,p_command => 
'update tm_install_summary set install_name = rtrim(install_name,''	'')'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311632','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502211041226180676
 ,p_command => 
'select * from tm_install_props where prop_name like ''%port%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311638','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502630651280234815
 ,p_command => 
'select * from tm_install_props where prop_name like ''%.port%'' order by prop_name'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311647','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561966097767588807
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.%'''||wwv_flow.LF||
'and (prop_name not like ''%.db.%'' and prop_name not like ''%.wls.%'')'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011104','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 500106404092908283
 ,p_command => 
'begin'||wwv_flow.LF||
'delete tm_install_summary;'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON, DESCR)'||wwv_flow.LF||
'values (''ri-fcubs-14.3	'', ''WLS Console'', ''http://{host.name}:{oracle.wls.admin.port.mapped}/console'', 2, ''WL'', ''fa-stethoscope'', ''Weblogic Console URL'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON, DESCR)'||wwv_flow.LF||
'values (''ri-fcubs-14.'||
'3	'', ''WLS Admin Pwd'', ''Oracle123'', 4, ''PW'', ''fa-low-vision'', ''Weblogic Admin password. Psst... Dont reveal'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON, DESCR)'||wwv_flow.LF||
'values (''ri-fcubs-14.3	'', ''WLS Admin ID'', ''weblogic'', 3, ''ID'', ''fa-ship'', ''Weblogic Admin ID'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON, DESCR)'||wwv_flow.LF||
'va'||
'lues (''ri-fcubs-14.3	'', ''DB TNS'', ''(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST ={host.name} )(PORT = {oracle.db.port.mapped}  )) (CONNECT_DATA = (SERVER = DEDICATED) (SERVICE_NAME = {oracle.db.pdb}) ) )'', 5, ''TN'', ''fa-database-wrench'', ''TNS Names to connect to DB'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON, DESCR)'||wwv_flow.LF||
'values (''ri-fcubs-14.3	'', ''App UR'||
'L'', ''https://{host.name}:{oracle.wls.mgd0.port.mapped}/FCJNeoWeb'', 1, ''AP'', ''fa-external-link-square'', ''Application URL'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIALS, ICON, DESCR)'||wwv_flow.LF||
'values (''ri-fcubs-14.3	'', ''SWIG Ports'', ''2001,2003,2004'', 7, ''SW'', ''fa-money'', ''SWIG Gateway Ports'');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into tm_install_summary (INSTALL_NAME, PROP_NAME, PROP_VAL, ORD, INITIA'||
'LS, ICON, DESCR)'||wwv_flow.LF||
'values (''ri-fcubs-14.3	'', ''DB App Schema'', ''FCUBS143/FCUBS143'', 6, ''SC'', ''fa-database-user'', ''Database user and password. Pstt... Dont reveal ;)'');'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311631','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 500340426007166229
 ,p_command => 
'select * from tb_install_props'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311635','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502251576843202763
 ,p_command => 
'update tm_install_props set prop_name =''oracle.wls.mgd0.ssl.port.internal'' =''7002'' where prop_name = ''oracle.wls.mgd1.port.internal'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311641','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 500345737214168845
 ,p_command => 
'select * from tb_install_props where prop_name like ''%port%'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311636','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502035389793939411
 ,p_command => 
'select * from tb_install_props where prop_name like ''%port'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311636','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502194533393960551
 ,p_command => 
'select * from tm_install_props where prop_name like ''%oracle.wls.mgd1.port%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311639','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502260971630208032
 ,p_command => 
'update tm_install_props set prop_name =''oracle.wls.mgd0.ssl.port.mapped'', prop_val =''5002'' where prop_name = ''oracle.wls.mgd1.port.mapped'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311642','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502373328192976781
 ,p_command => 
'update tm_install_props set prop_name =''oracle.wls.mgd0.ssl.port.internal'', prop_val =''7002'' where prop_name = ''oracle.wls.mgd1.port.internal'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311642','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502421934389988822
 ,p_command => 
'select * from tm_install_props where prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311644','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561617735350529181
 ,p_command => 
'create index ind_tm_install_summary_1 on tm_install_summary(install_name)'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011054','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502422776703989518
 ,p_command => 
'select * from tm_install_props'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311644','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502498701486024406
 ,p_command => 
'select * from tm_install_props where prop_name like ''%oracle.wls.swig.port%'' order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311650','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502499288796025694
 ,p_command => 
'delete tm_install_props where prop_name like ''%oracle.wls.swig.port%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311650','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502597588126227534
 ,p_command => 
'update tm_install_props set prop_descr =''WLS Mgd0 SSL port Internal'', prop_val =''7002'' where prop_name = ''oracle.wls.mgd0.ssl.port.internal'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311646','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502609717731231784
 ,p_command => 
'update tm_install_props set prop_descr =''WLS Mgd0 SSL port Mapped'' where prop_name = ''oracle.wls.mgd0.ssl.port.mapped'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311646','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502615848024233461
 ,p_command => 
'select * from tm_install_props where prop_name like ''%.port%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311647','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502689476873249272
 ,p_command => 
'insert into tm_install_props values ('||wwv_flow.LF||
'''ri-fcubs-14.3'', 12, ''oracle.wls.swig.port.internal'', ''SWIG Port'', ''2100'',''N'',''N'')'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311649','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502701556696251383
 ,p_command => 
'insert into tm_install_props values ('||wwv_flow.LF||
'''ri-fcubs-14.3'', 12, ''oracle.wls.swig.port.mapped'', ''SWIG Port'', ''5100'',''N'',''N'')'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311650','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502717987230257442
 ,p_command => 
'begin'||wwv_flow.LF||
'insert into tm_install_props values ('||wwv_flow.LF||
'''ri-fcubs-14.3'', 12, ''oracle.wls.swig.1.rt.internal'', ''SWIG Port'', ''2100'',''N'',''N'');'||wwv_flow.LF||
'insert into tm_install_props values ('||wwv_flow.LF||
'''ri-fcubs-14.3'', 12, ''oracle.wls.swig.1.rt.mapped'', ''SWIG Port'', ''5100'',''N'',''N'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311651','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502722091718260659
 ,p_command => 
'begin'||wwv_flow.LF||
'insert into tm_install_props values ('||wwv_flow.LF||
'''ri-fcubs-14.3'', 12, ''oracle.wls.swig.2.rt.internal'', ''SWIG Port'', ''2101'',''N'',''N'');'||wwv_flow.LF||
'insert into tm_install_props values ('||wwv_flow.LF||
'''ri-fcubs-14.3'', 12, ''oracle.wls.swig.2.rt.mapped'', ''SWIG Port'', ''5101'',''N'',''N'');'||wwv_flow.LF||
'end;'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311651','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502727851600263159
 ,p_command => 
'begin'||wwv_flow.LF||
'insert into tm_install_props values ('||wwv_flow.LF||
'''ri-fcubs-14.3'', 12, ''oracle.wls.swig.3.rt.internal'', ''SWIG Port'', ''2102'',''N'',''N'');'||wwv_flow.LF||
'insert into tm_install_props values ('||wwv_flow.LF||
'''ri-fcubs-14.3'', 12, ''oracle.wls.swig.3.rt.mapped'', ''SWIG Port'', ''5102'',''N'',''N'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311652','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502752030746277333
 ,p_command => 
'select * from tm_install_props where prop_name like ''%swig%'' order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311654','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502775649199297978
 ,p_command => 
'select * from tm_install_props where prop_name like ''%.swig.%'' order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311657','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502840513473036725
 ,p_command => 
'begin'||wwv_flow.LF||
'insert into tm_install_props values ('||wwv_flow.LF||
'''ri-fcubs-14.3'', 12, ''oracle.wls.swig.4.rt.internal'', ''SWIG Port'', ''2103'',''N'',''N'');'||wwv_flow.LF||
'insert into tm_install_props values ('||wwv_flow.LF||
'''ri-fcubs-14.3'', 12, ''oracle.wls.swig.4rt.mapped'', ''SWIG Port'', ''5103'',''N'',''N'');'||wwv_flow.LF||
'end;'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311652','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 502868758000043869
 ,p_command => 
'select * from tm_install_props where prop_name like ''%port%'' order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311653','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 503106613446059476
 ,p_command => 
'update tm_install_props set prop_name =''oracle.wls.swig.4.rt.mapped''  where prop_name = ''oracle.wls.swig.4rt.mapped'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311656','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 503114439311062336
 ,p_command => 
'select * from tm_install_props where prop_name like ''%.rt.%'' order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311656','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 503137194896068291
 ,p_command => 
'update tm_install_props set prop_name = replace(prop_name,''.rt.'') where prop_name like ''%.rt.%'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311657','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 503187709306084522
 ,p_command => 
'begin'||wwv_flow.LF||
'update tm_install_props set prop_name =''oracle.wls.swig.1.internal'' where prop_name =''oracle.wls.swig.1internal'';'||wwv_flow.LF||
'update tm_install_props set prop_name =''oracle.wls.swig.1.mapped'' where prop_name =''oracle.wls.swig.1mapped'';'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311700','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 503199698286089272
 ,p_command => 
'select * from tm_install_props where prop_name like ''%.swig.%'' '
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311701','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 503225604649316261
 ,p_command => 
'select  * from tm_install_props'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311700','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 503235868737320344
 ,p_command => 
'begin'||wwv_flow.LF||
'update tm_install_props set prop_name =''oracle.wls.swig.2.internal'' where prop_name =''oracle.wls.swig.2internal'';'||wwv_flow.LF||
'update tm_install_props set prop_name =''oracle.wls.swig.2.mapped'' where prop_name =''oracle.wls.swig.2mapped'';'||wwv_flow.LF||
'end;'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311701','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 503239887767321905
 ,p_command => 
'begin'||wwv_flow.LF||
'update tm_install_props set prop_name =''oracle.wls.swig.3.internal'' where prop_name =''oracle.wls.swig.3internal'';'||wwv_flow.LF||
'update tm_install_props set prop_name =''oracle.wls.swig.3.mapped'' where prop_name =''oracle.wls.swig.3mapped'';'||wwv_flow.LF||
'end;'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311701','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 503287172220324306
 ,p_command => 
'begin'||wwv_flow.LF||
'update tm_install_props set prop_name =''oracle.wls.swig.4.internal'' where prop_name =''oracle.wls.swig.4internal'';'||wwv_flow.LF||
'update tm_install_props set prop_name =''oracle.wls.swig.4.mapped'' where prop_name =''oracle.wls.swig.5mapped'';'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202003311702','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 538277163903187832
 ,p_command => 
'select * from tm_install_params'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010137','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 541332997929420222
 ,p_command => 
'insert into tm_install_params values (''title'',''JAPAC Reference Installation Gallery'')'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010138','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 542414087359437168
 ,p_command => 
'CREATE OR REPLACE PACKAGE PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2);'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2);'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2);'||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS(P_INSTALL_ID IN VARCHAR2);'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN V'||
'ARCHAR2;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2) return varchar2 result_cache;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010141','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 542427015193438922
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select a.rowid rid, a.* '||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  '||
'install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    order by ord'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    begin'||wwv_flow.LF||
'          PR_TASK(p_task_id => i.id);'||wwv_flow.LF||
'    exception'||wwv_flow.LF||
'      when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'    end;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      --stop execution'||wwv_flow.LF||
'      null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_'||
'jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_file)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install'||
'.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'        apex_util.set_session_state('''||
'P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_insta'||
'll_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    commit;'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(i.script,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        i.script := replace(i.script,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name != ''ho'||
'st.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"command": "'''||
'||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if;'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              |'||
'|  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.script_'||
'type)||''_url''),p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'      select json_value(l_resp, ''$.exitStatus'') exitStatus, json_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'      into   l_stat,l_err'||wwv_flow.LF||
'      FROM   dual;'||wwv_flow.LF||
'      if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_stat := 1;'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'      exception when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
' '||
'         l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'      if nvl(l_stat,0) != 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         raise_application_error(-20001,''Err'');'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RE'||
'TURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2) return varchar2 result_cac'||
'he'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select param_val from tm_install_params where param_name = p_param)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010141','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 546647625690523643
 ,p_command => 
' '||wwv_flow.LF||
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop'||
',p_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_in'||
's(''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progr'||
'ess'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select a.rowid rid, a.* '||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    order by ord'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      PR_TASK(p_task_id => i.id);'||wwv_flow.LF||
'      if fn_'||
'status(i.id) = ''E'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      --stop execution'||wwv_flow.LF||
'      null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and'||
'    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by ord'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'              PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'       '||
'       if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'                  raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'      null;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,s'||
'cp_file)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLO'||
'CK'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'        apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) '||
'index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    commit;'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(i.script,''{''||j'||
'.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        i.script := replace(i.script,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name != ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_'||
'req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"command": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         en'||
'd if;'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'      apex_we'||
'b_service.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.script_type)||''_url''),p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'      select json_value(l_resp, ''$.exitStatus'') exitStatus, json_value(l_re'||
'sp, ''$.err'') err'||wwv_flow.LF||
'      into   l_stat,l_err'||wwv_flow.LF||
'      FROM   dual;'||wwv_flow.LF||
'      if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_stat := 1;'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'      exception when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err'||
' where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val)'||
';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select param_val from tm_install_params where param_name = p_param)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010155','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 542927562067245120
 ,p_command => 
'select * from tb_install_progress'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010147','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 544170977343468954
 ,p_command => 
'delete tb_install_progress'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010146','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 544225014488470752
 ,p_command => 
'select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by ord'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010146','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 544575151762476143
 ,p_command => 
'select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by ord'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010147','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548673514493609227
 ,p_command => 
'update tm_install_summary set descr = ''Weblogic Admin password. Psst... Keep it as a secret ;)'' where descr  = ''Weblogic Admin password. Psst... Dont reveal'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010209','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548683368263612676
 ,p_command => 
'update tm_install_summary set descr = ''Database user and password. Psst... Keep it as a top secret ;)'' where descr  = ''Database user and password. Pstt... Dont reveal ;)'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010210','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548690939287622793
 ,p_command => 
'select * from tm_installs'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010211','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548701095723328393
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select a.rowid rid, a.* '||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    order by ord'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      PR_TASK(p_task_id => i.id);'||wwv_flow.LF||
'      if fn_st'||
'atus(i.id) = ''E'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      --stop execution'||wwv_flow.LF||
'      null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    '||
'lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by ord'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'      '||
'        PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'                  raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_na'||
'me            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                job_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'    '||
'    where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        dbms_session.sleep(2);'||wwv_flow.LF||
''||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_ins'||
'tall_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_file)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
''||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'        apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l'||
'_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    commit;'||wwv_flow.LF||
'    for j in (select * from tb_install_pro'||
'ps where install_id = i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(i.script,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        i.script := replace(i.script,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name != ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end'||
' loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"command": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||
''||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if;'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'      '||
'        ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.script_type)||''_url''),p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
''||
'      select json_value(l_resp, ''$.exitStatus'') exitStatus, json_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'      into   l_stat,l_err'||wwv_flow.LF||
'      FROM   dual;'||wwv_flow.LF||
'      if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_stat := 1;'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'      exception when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_re'||
'sp, status = case when l_stat = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      '||
'then'||wwv_flow.LF||
'        L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select param_val from tm_install_params where param_name = p_param)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010201','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548710254660346640
 ,p_command => 
'CREATE OR REPLACE PACKAGE PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2);'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2);'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2);'||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS(P_INSTALL_ID IN VARCHAR2);'||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2);'||wwv_flow.LF||
'FUNCTION FN_RE'||
'PLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2) return varchar2 result_cache;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010204','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548710784878348040
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select a.rowid rid, a.* '||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    order by ord'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      PR_TASK(p_task_id => i.id);'||wwv_flow.LF||
'      if fn_st'||
'atus(i.id) = ''E'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      --stop execution'||wwv_flow.LF||
'      null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    '||
'lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by ord'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'      '||
'        PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'                  raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_na'||
'me            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                job_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'    '||
'    where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        dbms_session.sleep(2);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and  '||
'  lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    status in (''E'');'||wwv_flow.LF||
'        if l_cnt > 0'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_insta'||
'll_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_file)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'  '||
'  job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'    --job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'        apex_util.set_session_state(''P3_ERRM'||
''', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_prog'||
'ress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    commit;'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(i.script,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        i.script := replace(i.script,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name != ''host.pass'||
''''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"command": "''||i.scr'||
'ipt||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if;'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"lo'||
'calfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.script_type)||'||
'''_url''),p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'      select json_value(l_resp, ''$.exitStatus'') exitStatus, json_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'      into   l_stat,l_err'||wwv_flow.LF||
'      FROM   dual;'||wwv_flow.LF||
'      if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_stat := 1;'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'      exception when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'        '||
'  l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props wh'||
'ere install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select param_val from tm_install_params where param_name = p_param)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    retu'||
'rn i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010204','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548735275693372182
 ,p_command => 
'select * from tm_install_summary'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010208','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548776402721408506
 ,p_command => 
'update tm_installs set card_text = ''Reference Installation of FCUBS 14.3 co-deployed and pre-integrated with OBPAY 14.3, OBCL 14.3, ELCM 14.3'','||wwv_flow.LF||
'card_subtitle = ''FCUBS14.3, OBPAY 14.3, OBCL 14.3, ELCM 14.3'''||wwv_flow.LF||
'where install_name = ''ri-fcubs-14.3'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010214','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548776812274408912
 ,p_command => 
'select * from tm_installs'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010214','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548741486131380932
 ,p_command => 
'select * from tm_install_summary'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010209','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548794791767417444
 ,p_command => 
'update tm_installs set card_text = ''Reference Installation of Stand-alone OBPAY 14.3'','||wwv_flow.LF||
'card_subtitle = ''OBPAY 14.3'', install_name = ''ri-obpay-14.3'''||wwv_flow.LF||
'where install_name = ''ri-obpay'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010215','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548813023957642204
 ,p_command => 
'update tm_installs set card_text = ''Reference Installation of Stand-alone OBPAY 14.3'','||wwv_flow.LF||
'card_subtitle = ''OBPAY 14.3'''||wwv_flow.LF||
'where install_name = ''ri-obpay'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010215','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548836919163696826
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''%.mapped'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010224','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548837258031698719
 ,p_command => 
'update tm_install_props set editable =''Y'''||wwv_flow.LF||
'where prop_name like ''%.mapped'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010224','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548837356837699212
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''%.mapped'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010224','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548846806659726444
 ,p_command => 
'update tm_install_props set prop_val = ''2101'''||wwv_flow.LF||
'where prop_name like ''oracle.wls.swig.1.internal'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010229','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548867133881735291
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''%.mapped'' or prop_name like ''%.port.%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010230','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548914965637448508
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010221','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548949645571465388
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''%.port.mapped'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010223','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548990942164499204
 ,p_command => 
'update tm_install_props set prop_val = ''2102'''||wwv_flow.LF||
'where prop_name like ''oracle.wls.swig.2.internal'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010229','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548992870626502224
 ,p_command => 
'update tm_install_props set prop_val = ''2103'''||wwv_flow.LF||
'where prop_name like ''oracle.wls.swig.4.internal'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010230','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548971287230480285
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''%.mapped'' or prop_name like ''%.port.%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010226','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 548992063736500507
 ,p_command => 
'update tm_install_props set prop_val = ''2100'''||wwv_flow.LF||
'where prop_name like ''oracle.wls.swig.3.internal'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010229','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 550683954074993563
 ,p_command => 
'select * from tm_install_summary'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010351','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 550730551875223503
 ,p_command => 
'select * from tm_install_summary'||wwv_flow.LF||
'where prop_name = ''SWIG Ports'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010352','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 550732280755227968
 ,p_command => 
'update '||wwv_flow.LF||
'tm_install_summary'||wwv_flow.LF||
'set prop_val = ''{oracle.wls.swig.1.mapped}, {oracle.wls.swig.2.mapped},{oracle.wls.swig.3.mapped},{oracle.wls.swig.4.mapped}'''||wwv_flow.LF||
'where prop_name = ''SWIG Ports'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010352','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 550732814077230834
 ,p_command => 
'update '||wwv_flow.LF||
'tm_install_summary'||wwv_flow.LF||
'set prop_val = ''{oracle.wls.swig.1.mapped}, {oracle.wls.swig.2.mapped}, {oracle.wls.swig.3.mapped}, {oracle.wls.swig.4.mapped}'''||wwv_flow.LF||
'where prop_name = ''SWIG Ports'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010353','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 554596667266364016
 ,p_command => 
'create table tm_install_admins'||wwv_flow.LF||
'('||wwv_flow.LF||
'    user_id varchar2(100)'||wwv_flow.LF||
')'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010702','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 554640271667138101
 ,p_command => 
'insert into tm_install_admins values (''RANJITH.VIJAYAN@ORACLE.COM'')'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010702','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561146838886504331
 ,p_command => 
'drop PROCEDURE "PR_SUMMARY_PAGE"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011050','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 554669895088154153
 ,p_command => 
'DELETE tm_install_admin_USERS'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010705','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 554720048285377346
 ,p_command => 
'RENAME tm_install_admins TO tm_install_admin_USERS'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010704','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 554724530723382023
 ,p_command => 
'DELETE tm_install_admins'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010705','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 554728082144384184
 ,p_command => 
'insert into tm_install_admin_USERS values (''RANJITH.VIJAYAN@ORACLE.COM'')'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010705','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 558577196715837400
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004010859','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561113264015493287
 ,p_command => 
'create index ind_tb_install_progress_1 on tb_install_progress(install_id)'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011048','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561132398628496655
 ,p_command => 
'create index ind_tb_install_props_2 on tb_install_props(id)'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011049','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561141652529501225
 ,p_command => 
'drop TABLE "T"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011049','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561143510336503233
 ,p_command => 
'drop FUNCTION "FN_SUMMARY_PAGE"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011050','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561200191858722584
 ,p_command => 
'create index ind_tb_install_progress_2 on tb_install_progress(id)'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011048','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561435047233753225
 ,p_command => 
'create index ind_tm_install_props_2 on tm_install_props(install_name)'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011053','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561206241188726054
 ,p_command => 
'create index ind_tb_install_props_1 on tb_install_props(install_id)'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011049','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561432587443750702
 ,p_command => 
'create index ind_tm_install_props on tm_install_props(install_name,prop_name)'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011053','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561436692400754731
 ,p_command => 
'create index ind_tm_install_steps_2 on tm_install_steps(install_name)'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011053','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561809980715809177
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.%'''||wwv_flow.LF||
'and (prop_name not like ''%.db.%'' or prop_name not like ''%.wls.%'')'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011103','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561824069084821637
 ,p_command => 
'update tm_install_props set prop_name = ''docker.db.volume.mount'''||wwv_flow.LF||
'where prop_name = ''docker.volume.mount'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011105','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561927731837576687
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011102','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561929531554577627
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011102','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561936421051579898
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.%'''||wwv_flow.LF||
'and (prop_name not like ''%.db.%'' or prop_name not like ''%.wls.%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011102','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561940832771582260
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.%'''||wwv_flow.LF||
'and (prop_name not like ''%.db.%'' and prop_name not like ''%.wls.%'')'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011103','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 561963853188588329
 ,p_command => 
'update tm_install_props set prop_name = ''docker.db.volume.file'''||wwv_flow.LF||
'where prop_name = ''docker.volume.file'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011104','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619331940319854979
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.%mapped'''||wwv_flow.LF||
'or prop_name like ''oracle.wls.%internal'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020428','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619573534795875201
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.%mapped'''||wwv_flow.LF||
'or prop_name like ''oracle.wls.%internal'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020432','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619598731776890543
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.mgd0.port.%'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020434','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619604544743895289
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.wls.%.port.%'''||wwv_flow.LF||
'order by prop_name'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020435','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619734501561154523
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.%mapped'''||wwv_flow.LF||
'or prop_name like ''oracle.wls.%internal'''||wwv_flow.LF||
'order by prop_name'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020440','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619740365411159976
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.%mapped'''||wwv_flow.LF||
'or prop_name like ''oracle.wls.%internal'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020441','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 624186217978843668
 ,p_command => 
'update  tm_install_summary set prop_val = ''{wls.admin.new.password}'''||wwv_flow.LF||
'where prop_val =''Oracle123'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020713','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 666503945947913692
 ,p_command => 
'begin'||wwv_flow.LF||
'PKG_INSTALL_UTIL.PR_VALIDATE_HOST(''tmp'',''ri-fcubs-14.3'',''null'',''null'',null);'||wwv_flow.LF||
'end;'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004021507','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 666508867765915268
 ,p_command => 
'delete tb_install_progress'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004021507','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 785104327765304393
 ,p_command => 
'select * from v$session'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004030930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801347403896076951
 ,p_command => 
'select * from APEX_WORKSPACE_SESSIONS'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031139','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801582556585118712
 ,p_command => 
'update tb_install_progress set status = ''E'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031146','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 813279338149674432
 ,p_command => 
'select * from tm_installs'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031527','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 854161776495728835
 ,p_command => 
'select * from tb_install_progress'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004040242','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 855516730614472866
 ,p_command => 
'delete tb_install_progress'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004040238','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 855529531084523031
 ,p_command => 
'select * from tb_install_progress '
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004040246','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 857200366910708409
 ,p_command => 
'delete tb_install_progress '
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004040317','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 860302331015036411
 ,p_command => 
'select * from tb_install_progress'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004040412','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 565156709936008266
 ,p_command => 
'update tm_install_summary'||wwv_flow.LF||
'set prop_val = ''https://{host.name}:{oracle.wls.mgd0.ssl.port.mapped}/FCJNeoWeb'''||wwv_flow.LF||
'where prop_name = ''App URL'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011214','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 565227252144228966
 ,p_command => 
'select * from tm_install_summary'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004011213','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 618467145357704632
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name = ''docker.db.container.name-na'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020403','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 618468343761706185
 ,p_command => 
'delete  from tm_install_props'||wwv_flow.LF||
'where prop_name = ''docker.db.container.name-na'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020403','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 618546766745932542
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020403','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 618548501708934115
 ,p_command => 
'delete * from tm_install_props'||wwv_flow.LF||
'where prop_name = ''docker.db.container.name-na'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020403','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619217083262047094
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.%mapped'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020422','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619335918313858905
 ,p_command => 
'select prop_name from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.%mapped'''||wwv_flow.LF||
'or prop_name like ''oracle.wls.%internal'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020429','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619578902898878704
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.admin.port.%'''||wwv_flow.LF||
'order by prop_name'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020432','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619590290091885804
 ,p_command => 
'update tm_install_props set prop_name = replace(prop_name,''oracle.wls.admin.port.'',''docker.wls.1.port.'')'||wwv_flow.LF||
'where prop_name like ''oracle.wls.admin.port.%'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020433','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619590735825886557
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.%mapped'''||wwv_flow.LF||
'or prop_name like ''oracle.wls.%internal'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020434','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619601047969892056
 ,p_command => 
'update tm_install_props set prop_name = replace(prop_name,''oracle.wls.mgd0.port.'',''docker.wls.2.port.'')'||wwv_flow.LF||
'where prop_name like ''oracle.wls.mgd0.port.%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020434','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619819203123994132
 ,p_command => 
'select * from tm_install_summary'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020451','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619825723234997992
 ,p_command => 
'update  tm_install_summary set prop_val = ''https://{host.name}:{docker.wls.3.port.mapped}/FCJNeoWeb'''||wwv_flow.LF||
'where prop_val =''https://{host.name}:{oracle.wls.mgd0.ssl.port.mapped}/FCJNeoWeb'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020452','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619607037524897019
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.%mapped'''||wwv_flow.LF||
'or prop_name like ''oracle.wls.%internal'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020435','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619608452377901441
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.wls.%.port.%'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020436','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619620524873912478
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.wls.%.port.%'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020438','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619625719425916373
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.wls.%.port.%'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020439','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619632127136929536
 ,p_command => 
'update tm_install_props set prop_name = replace(prop_name,''oracle.wls.swig.3.'',''docker.wls.6.port.'')'||wwv_flow.LF||
'where prop_name like ''oracle.wls.swig.3.%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020441','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619693321556978043
 ,p_command => 
'select * from tm_install_summary'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020449','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619703398088126990
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''	oracle.wls.mgd0.ssl.port.%'''||wwv_flow.LF||
'order by prop_name'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020436','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619704365640128119
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.mgd0.ssl.port.%'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020436','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619723523237139636
 ,p_command => 
'update  tm_install_props set prop_name = ''docker.wls.3.port.internal'' and prop_name = ''docker.wls.2.port.internal'' and prop_descr = ''WLS Mgd0 SSL port Internal'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020438','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619723919178140740
 ,p_command => 
'update  tm_install_props set prop_name = ''docker.wls.3.port.internal'' where prop_name = ''docker.wls.2.port.internal'' and prop_descr = ''WLS Mgd0 SSL port Internal'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020438','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619728056069144569
 ,p_command => 
'update  tm_install_props set prop_name = ''docker.wls.3.port.mapped'' where prop_name = ''docker.wls.2.port.mapped'' and prop_descr = ''WLS Mgd0 SSL port Mapped'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020438','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619705602541129761
 ,p_command => 
'update tm_install_props set prop_name = replace(prop_name,''oracle.wls.mgd0.ssl.port.'',''docker.wls.2.port.'')'||wwv_flow.LF||
'where prop_name like ''oracle.wls.mgd0.ssl.port.%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020436','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619729251593146293
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.%mapped'''||wwv_flow.LF||
'or prop_name like ''oracle.wls.%internal'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020439','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619732505027151807
 ,p_command => 
'update tm_install_props set prop_name = replace(prop_name,''oracle.wls.swig.1.'',''docker.wls.4.port.'')'||wwv_flow.LF||
'where prop_name like ''oracle.wls.swig.1.%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020440','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619733169783152523
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.wls.%.port.%'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020440','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619735731149156274
 ,p_command => 
'update tm_install_props set prop_name = replace(prop_name,''oracle.wls.swig.2.'',''docker.wls.5.port.'')'||wwv_flow.LF||
'where prop_name like ''oracle.wls.swig.2.%'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020440','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619736339581156697
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.%mapped'''||wwv_flow.LF||
'or prop_name like ''oracle.wls.%internal'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020440','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619731383719149753
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''oracle.wls.swig.1.%'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020439','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619740751424160616
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.wls.%.port.%'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020441','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619740017569159527
 ,p_command => 
'update tm_install_props set prop_name = replace(prop_name,''oracle.wls.swig.4.'',''docker.wls.7.port.'')'||wwv_flow.LF||
'where prop_name like ''oracle.wls.swig.4.%'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020441','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619791682716208082
 ,p_command => 
'select * from tm_install_props'||wwv_flow.LF||
'where prop_name like ''docker.wls.%.port.%'''||wwv_flow.LF||
'order by prop_name'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020449','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619808257716985805
 ,p_command => 
'select * from tm_install_summary'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020450','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619814491330991967
 ,p_command => 
'update  tm_install_summary set prop_val = ''http://{host.name}:{docker.wls.1.port.mapped}/console'''||wwv_flow.LF||
'where prop_name = ''WLS Console'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020451','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619835145530003074
 ,p_command => 
'update  tm_install_summary set prop_val = ''{docker.wls.4.port.mapped}, {docker.wls.5.port.mapped}, {docker.wls.6.port.mapped}, {docker.wls.7.port.mapped}'''||wwv_flow.LF||
'where prop_val =''{oracle.wls.swig.1.mapped}, {oracle.wls.swig.2.mapped}, {oracle.wls.swig.3.mapped}, {oracle.wls.swig.4.mapped}'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020453','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 619826449343998669
 ,p_command => 
'select * from tm_install_summary'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020452','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 624173420377841177
 ,p_command => 
'update  tm_install_summary set prop_val = ''{wls.admin.user.id}'''||wwv_flow.LF||
'where prop_val =''weblogic'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020713','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 624187013002844032
 ,p_command => 
'select * from tm_install_summary'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020713','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 624195037780851402
 ,p_command => 
'select * from tb_install_props'||wwv_flow.LF||
'where prop_name like ''%schema%'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020714','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 624196484613852510
 ,p_command => 
'update  tm_install_summary set prop_val = ''{oracle.db.schema}/{oracle.db.schema.new.password}'''||wwv_flow.LF||
'where prop_val =''FCUBS143/FCUBS143'''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 624225271036066156
 ,p_command => 
'select * from tm_install_summary'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020712','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 624229064974070225
 ,p_command => 
'select * from tm_install_summary'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020713','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 624468129892168356
 ,p_command => 
'delete tb_install_props'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020729','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 624470200994169510
 ,p_command => 
'delete tb_install_progress'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020729','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 624710312467995365
 ,p_command => 
'select * from user_scheduler_jobs'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004020738','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 665914117560891488
 ,p_command => 
'begin'||wwv_flow.LF||
'PKG_INSTALL_UTIL.PR_VALIDATE_HOST(''tmp'',''ri-fcubs-14.3'',''null'',''null'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004021503','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 665927974078895121
 ,p_command => 
'begin'||wwv_flow.LF||
'PKG_INSTALL_UTIL.PR_VALIDATE_HOST(''tmp'',''ri-fcubs-14.3'',''null'',''null'',null);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004021504','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 666021231302671661
 ,p_command => 
'create index ind_tb_install_props on tb_install_props(install_id)'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004021504','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 666407683523684408
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by o'||
'rd'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'              PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'      '||
'            raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_name            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                jo'||
'b_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    lower(script_type) in'||
' (''ssh'',''scp'')'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        dbms_session.sleep(2);'||wwv_flow.LF||
''||wwv_flow.LF||
'        --dbms_session.sleep(20);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
''||
'        and    status in (''E'');'||wwv_flow.LF||
'        if l_cnt > 0'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIP'||
'T_TYPE,scp_file)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''P'||
'LSQL_BLOCK'','||wwv_flow.LF||
'    --job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'        apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TA'||
'SK(p_task_id in varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    commit;'||wwv_flow.LF||
'    i.scri'||
'pt := fn_replace(i.script,i.install_id);'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name != ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
''||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"command": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
' '||
'        end if;'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'   '||
'   apex_web_service.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.script_type)||''_url''),p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'        select json_value(l_resp, ''$.exitStatus'') exitStatus, jso'||
'n_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'        into   l_stat,l_err'||wwv_flow.LF||
'        FROM   dual;'||wwv_flow.LF||
'        if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'      exception when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then ''Y'' else ''E'''||
' end, '||wwv_flow.LF||
'      err = l_err where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        L_RETVAL := replace(L_RETVAL,''{''||j.pr'||
'op_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select param_val from tm_install_params where param_name = p_param)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004021507','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 666419972406687354
 ,p_command => 
'delete tb_install_props'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004021507','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 800774093866156033
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by o'||
'rd'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'              PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'      '||
'            raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_name            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                jo'||
'b_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    lower(script_type) in'||
' (''ssh'',''scp'')'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        sleep(2);'||wwv_flow.LF||
'        --dbms_session.sleep(20);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and   '||
' status in (''E'');'||wwv_flow.LF||
'        if l_cnt > 0'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_fil'||
'e)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
' '||
'   --job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'        apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id i'||
'n varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    commit;'||wwv_flow.LF||
'    i.script := fn_repla'||
'ce(i.script,i.install_id);'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name != ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req '||
':=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"command": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if'||
';'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'      apex_web_se'||
'rvice.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.script_type)||''_url''),p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'        select json_value(l_resp, ''$.exitStatus'') exitStatus, json_value(l_resp'||
', ''$.err'') err'||wwv_flow.LF||
'        into   l_stat,l_err'||wwv_flow.LF||
'        FROM   dual;'||wwv_flow.LF||
'        if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'      exception when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      e'||
'rr = l_err where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j'||
'.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select param_val from tm_install_params where param_name = p_param)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031114','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801202559232237070
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by o'||
'rd'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'              PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'      '||
'            raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_name            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                jo'||
'b_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    lower(script_type) in'||
' (''ssh'',''scp'')'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        sleep(2);'||wwv_flow.LF||
'        --dbms_session.sleep(20);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and   '||
' status in (''E'');'||wwv_flow.LF||
'        if l_cnt > 0'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_fil'||
'e)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
' '||
'   --job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'        apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id i'||
'n varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'  l_install_name varchar2(100);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    '||
'commit;'||wwv_flow.LF||
'    select prop_val'||wwv_flow.LF||
'    into   l_install_name'||wwv_flow.LF||
'    from   tb_install_props p'||wwv_flow.LF||
'    where  p.install_id = i.install_id '||wwv_flow.LF||
'    and    p.prop_name = ''install.name'';'||wwv_flow.LF||
'    i.script := fn_replace(i.script,i.install_id);'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name '||
'!= ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"comman'||
'd": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if;'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'         '||
'     ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.s'||
'cript_type)||''_url'',l_install_name),'||wwv_flow.LF||
'      p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'        select json_value(l_resp, ''$.exitStatus'') exitStatus, json_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'        into   l_stat,l_err'||wwv_flow.LF||
'        FROM   dual;'||wwv_flow.LF||
'        if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'      exception when ot'||
'hers'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when others'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      l_err := substr(sqlerrm||chr(10)||dbms_utility.format_error_backtrace,1,4000);'||wwv_flow.LF||
'      update'||
' tb_install_progress '||wwv_flow.LF||
'      set    status = ''E'', '||wwv_flow.LF||
'             err = l_err '||wwv_flow.LF||
'      where  id = p_task_id;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
''||
'        L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2,p_install_name in varchar2:=null) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select param_val'||wwv_flow.LF||
'    from   tm_install_params'||wwv_flow.LF||
'    where  param_name = p_param '||wwv_flow.LF||
'    and    (install_name = p_install_name or install_name is nu'||
'll)'||wwv_flow.LF||
'    order by decode(install_name,null,0,1)'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031127','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 800812460719924947
 ,p_command => 
'create procedure sleep(p_sec in number)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  dbms_lock.sleep(p_sec);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031113','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 800814681169926231
 ,p_command => 
'create or replace procedure sleep(p_sec in number)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  dbms_session.sleep(p_sec);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031114','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 800989614577991726
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by o'||
'rd'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'              PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'      '||
'            raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_name            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                jo'||
'b_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    lower(script_type) in'||
' (''ssh'',''scp'')'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        sleep(2);'||wwv_flow.LF||
'        --dbms_session.sleep(20);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and   '||
' status in (''E'');'||wwv_flow.LF||
'        if l_cnt > 0'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_fil'||
'e)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
' '||
'   --job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'        apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id i'||
'n varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'  l_install_name varchar2(100);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    '||
'commit;'||wwv_flow.LF||
'    select prop_val'||wwv_flow.LF||
'    into   l_install_name'||wwv_flow.LF||
'    from   tb_install_props p'||wwv_flow.LF||
'    where  p.install_id = i.install_id '||wwv_flow.LF||
'    and    p.prop_name = ''install.name'';'||wwv_flow.LF||
'    i.script := fn_replace(i.script,i.install_id);'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name '||
'!= ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"comman'||
'd": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if;'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'         '||
'     ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.s'||
'cript_type)||''_url'',l_install_name),'||wwv_flow.LF||
'      p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'        select json_value(l_resp, ''$.exitStatus'') exitStatus, json_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'        into   l_stat,l_err'||wwv_flow.LF||
'        FROM   dual;'||wwv_flow.LF||
'        if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'      exception when ot'||
'hers'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when others'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      l_err := substr(sqlerrm||chr(10)||dbms_utility.format_error_backtrace,1,4000);'||wwv_flow.LF||
'      update'||
' tb_install_progress '||wwv_flow.LF||
'      set    status = 1, '||wwv_flow.LF||
'             err = l_err '||wwv_flow.LF||
'      where  id = p_task_id;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'  '||
'      L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2,p_install_name in varchar2:=null) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select param_val'||wwv_flow.LF||
'    from   tm_install_params'||wwv_flow.LF||
'    where  param_name = p_param '||wwv_flow.LF||
'    and    (install_name = p_install_name or install_name is null'||
')'||wwv_flow.LF||
'    order by decode(install_name,null,0,1)'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031124','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801070035700219329
 ,p_command => 
'CREATE OR REPLACE PACKAGE PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2);'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2);'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2);'||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2);'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2)'||
' RETURN VARCHAR2;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2,p_install_name in varchar2:=null) return varchar2 result_cache;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031124','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801074775354222249
 ,p_command => 
'alter table tm_install_params add INSTALL_NAME varchar2(100)'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031125','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801075008104222513
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by o'||
'rd'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'              PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'      '||
'            raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_name            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                jo'||
'b_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    lower(script_type) in'||
' (''ssh'',''scp'')'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        sleep(2);'||wwv_flow.LF||
'        --dbms_session.sleep(20);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and   '||
' status in (''E'');'||wwv_flow.LF||
'        if l_cnt > 0'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_fil'||
'e)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
' '||
'   --job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'        apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id i'||
'n varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'  l_install_name varchar2(100);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    '||
'commit;'||wwv_flow.LF||
'    select prop_val'||wwv_flow.LF||
'    into   l_install_name'||wwv_flow.LF||
'    from   tb_install_props p'||wwv_flow.LF||
'    where  p.install_id = i.install_id '||wwv_flow.LF||
'    and    p.prop_name = ''install.name'';'||wwv_flow.LF||
'    i.script := fn_replace(i.script,i.install_id);'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name '||
'!= ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"comman'||
'd": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if;'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'         '||
'     ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.s'||
'cript_type)||''_url'',l_install_name),'||wwv_flow.LF||
'      p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'        select json_value(l_resp, ''$.exitStatus'') exitStatus, json_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'        into   l_stat,l_err'||wwv_flow.LF||
'        FROM   dual;'||wwv_flow.LF||
'        if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'      exception when ot'||
'hers'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when others'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      l_err := substr(sqlerrm||chr(10)||dbms_utility.format_error_backtrace,1,4000);'||wwv_flow.LF||
'      update'||
' tb_install_progress '||wwv_flow.LF||
'      set    status = 1, '||wwv_flow.LF||
'             err = l_err '||wwv_flow.LF||
'      where  id = p_task_id;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'  '||
'      L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2,p_install_name in varchar2:=null) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select param_val'||wwv_flow.LF||
'    from   tm_install_params'||wwv_flow.LF||
'    where  param_name = p_param '||wwv_flow.LF||
'    and    (install_name = p_install_name or install_name is null'||
')'||wwv_flow.LF||
'    order by decode(install_name,null,0,1)'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031125','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801283846030301045
 ,p_command => 
'select * from v$session'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031138','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801470316963341885
 ,p_command => 
'select * from APEX_WORKSPACE_SESSIONS'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031145','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801481463425346419
 ,p_command => 
'select * from APEX_WORKSPACE_SESSIONS'||wwv_flow.LF||
''||wwv_flow.LF||
'update tb_install_progress set status = ''E'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031145','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801485757851348623
 ,p_command => 
'select * from APEX_WORKSPACE_SESSIONS'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031146','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801614054494364416
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by o'||
'rd'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'              PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'      '||
'            raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_name            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                jo'||
'b_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for j in 1..3000'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if j >= 2000'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          --time out..'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_'||
'install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        sleep(2);'||wwv_flow.LF||
'        --dbms_session.sleep(20);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        wher'||
'e  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    status in (''E'');'||wwv_flow.LF||
'        if l_cnt > 0'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where'||
' install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_file)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_na'||
'me(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'    --job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'  '||
'      apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'  l_install_name varchar2(100);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_'||
'install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    commit;'||wwv_flow.LF||
'    select prop_val'||wwv_flow.LF||
'    into   l_install_name'||wwv_flow.LF||
'    from   tb_install_props p'||wwv_flow.LF||
'    where  p.install_id = i.install_id '||wwv_flow.LF||
'    and    p.prop_name = ''install.name'';'||wwv_flow.LF||
'    i.script := fn_replace(i.script,i.install_id);'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id ='||
' i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name != ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'             '||
' ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"command": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if;'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||'''||
'",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_head'||
'ers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.script_type)||''_url'',l_install_name),'||wwv_flow.LF||
'      p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'        select json_value(l_resp, ''$.exitStatus'') exitStatus, json_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'        into   l_stat,l_err'||wwv_flow.LF||
'        FROM   dual;'||wwv_flow.LF||
'    '||
'    if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'      exception when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'exception'||
''||wwv_flow.LF||
'  when others'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      l_err := substr(sqlerrm||chr(10)||dbms_utility.format_error_backtrace,1,4000);'||wwv_flow.LF||
'      update tb_install_progress '||wwv_flow.LF||
'      set    status = ''E'', '||wwv_flow.LF||
'             err = l_err '||wwv_flow.LF||
'      where  id = p_task_id;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from '||
'tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2,p_install_name in varchar2:=null) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select param_val'||wwv_flow.LF||
'    '||
'from   tm_install_params'||wwv_flow.LF||
'    where  param_name = p_param '||wwv_flow.LF||
'    and    (install_name = p_install_name or install_name is null)'||wwv_flow.LF||
'    order by decode(install_name,null,0,1)'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031148','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801692438229417078
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by o'||
'rd'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'              PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'      '||
'            raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_name            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                jo'||
'b_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for j in 1..3000'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if j >= 2000'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          --time out..'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_'||
'install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        sleep(2);'||wwv_flow.LF||
'        --dbms_session.sleep(20);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        wher'||
'e  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    status in (''E'');'||wwv_flow.LF||
'        if l_cnt > 0'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where'||
' install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_file)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_na'||
'me(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'    --job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'  '||
'      apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'  l_install_name varchar2(100);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_'||
'install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    commit;'||wwv_flow.LF||
'    select prop_val'||wwv_flow.LF||
'    into   l_install_name'||wwv_flow.LF||
'    from   tb_install_props p'||wwv_flow.LF||
'    where  p.install_id = i.install_id '||wwv_flow.LF||
'    and    p.prop_name = ''install.name'';'||wwv_flow.LF||
'    i.script := fn_replace(i.script,i.install_id);'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id ='||
' i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name != ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'             '||
' ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"command": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if;'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||'''||
'",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"doNotOverWrite": true,'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).name := ''Content-Ty'||
'pe'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.script_type)||''_url'',l_install_name),'||wwv_flow.LF||
'      p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'        select json_value(l_resp, ''$.exitStatus'') exitStatus, json_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'        i'||
'nto   l_stat,l_err'||wwv_flow.LF||
'        FROM   dual;'||wwv_flow.LF||
'        if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'      exception when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err where rowid ='||
' i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when others'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      l_err := substr(sqlerrm||chr(10)||dbms_utility.format_error_backtrace,1,4000);'||wwv_flow.LF||
'      update tb_install_progress '||wwv_flow.LF||
'      set    status = ''E'', '||wwv_flow.LF||
'             err = l_err '||wwv_flow.LF||
'      where  id = p_task_id;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) '||
':= P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2,p_install_name in varchar2:=null) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||
''||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select param_val'||wwv_flow.LF||
'    from   tm_install_params'||wwv_flow.LF||
'    where  param_name = p_param '||wwv_flow.LF||
'    and    (install_name = p_install_name or install_name is null)'||wwv_flow.LF||
'    order by decode(install_name,null,1,0)'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031157','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 801721637564147862
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by o'||
'rd'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'              PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'      '||
'            raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_name            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                jo'||
'b_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for j in 1..3000'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if j >= 2000'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          --time out..'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_'||
'install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        sleep(2);'||wwv_flow.LF||
'        --dbms_session.sleep(20);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        wher'||
'e  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    status in (''E'');'||wwv_flow.LF||
'        if l_cnt > 0'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where'||
' install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_file)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_na'||
'me(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'    --job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'  '||
'      apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'  l_install_name varchar2(100);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_'||
'install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    commit;'||wwv_flow.LF||
'    select prop_val'||wwv_flow.LF||
'    into   l_install_name'||wwv_flow.LF||
'    from   tb_install_props p'||wwv_flow.LF||
'    where  p.install_id = i.install_id '||wwv_flow.LF||
'    and    p.prop_name = ''install.name'';'||wwv_flow.LF||
'    i.script := fn_replace(i.script,i.install_id);'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id ='||
' i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name != ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'             '||
' ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"command": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if;'||wwv_flow.LF||
'         l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||'''||
'",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"doNotOverWrite": true,'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).name := ''Content-Ty'||
'pe'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.script_type)||''_url'',l_install_name),'||wwv_flow.LF||
'      p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'        select json_value(l_resp, ''$.exitStatus'') exitStatus, json_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'        i'||
'nto   l_stat,l_err'||wwv_flow.LF||
'        FROM   dual;'||wwv_flow.LF||
'        if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'      exception when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err where rowid ='||
' i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when others'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      l_err := substr(sqlerrm||chr(10)||dbms_utility.format_error_backtrace,1,4000);'||wwv_flow.LF||
'      update tb_install_progress '||wwv_flow.LF||
'      set    status = ''E'', '||wwv_flow.LF||
'             err = l_err '||wwv_flow.LF||
'      where  id = p_task_id;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) '||
':= P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2,p_install_name in varchar2:=null) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||
''||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select param_val'||wwv_flow.LF||
'    from   tm_install_params'||wwv_flow.LF||
'    where  param_name = p_param '||wwv_flow.LF||
'    and    (install_name = p_install_name or install_name is null)'||wwv_flow.LF||
'    order by decode(install_name,null,0,1)'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031150','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 803157052162587303
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by o'||
'rd'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'              PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'      '||
'            raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_name            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                jo'||
'b_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for j in 1..3000'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if j >= 2000'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          --time out..'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_'||
'install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        sleep(2);'||wwv_flow.LF||
'        --dbms_session.sleep(20);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        wher'||
'e  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    status in (''E'');'||wwv_flow.LF||
'        if l_cnt > 0'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where'||
' install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_file)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_na'||
'me(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'    --job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'  '||
'      apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'  l_install_name varchar2(100);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_'||
'install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    commit;'||wwv_flow.LF||
'    select prop_val'||wwv_flow.LF||
'    into   l_install_name'||wwv_flow.LF||
'    from   tb_install_props p'||wwv_flow.LF||
'    where  p.install_id = i.install_id '||wwv_flow.LF||
'    and    p.prop_name = ''install.name'';'||wwv_flow.LF||
'    i.script := fn_replace(i.script,i.install_id);'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id ='||
' i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''{properties.file}'' and j.prop_name != ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'             '||
' ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"command": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''{properties.file}'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if;'||wwv_flow.LF||
'         i.scp_file := fn_replace(i.scp_file,i.install_id);'||wwv_flow.LF||
'         l_req :=  ''{"port":'||
'22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"doNotOverWrite": true,'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'   '||
'   apex_web_service.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.script_type)||''_url'',l_install_name),'||wwv_flow.LF||
'      p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'        select json_value(l_resp, ''$.exitSt'||
'atus'') exitStatus, json_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'        into   l_stat,l_err'||wwv_flow.LF||
'        FROM   dual;'||wwv_flow.LF||
'        if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'      exception when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat'||
' = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when others'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      l_err := substr(sqlerrm||chr(10)||dbms_utility.format_error_backtrace,1,4000);'||wwv_flow.LF||
'      update tb_install_progress '||wwv_flow.LF||
'      set    status = ''E'', '||wwv_flow.LF||
'             err = l_err '||wwv_flow.LF||
'      where  id = p_task_id;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID'||
' IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2,p_install_n'||
'ame in varchar2:=null) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select param_val'||wwv_flow.LF||
'    from   tm_install_params'||wwv_flow.LF||
'    where  param_name = p_param '||wwv_flow.LF||
'    and    (install_name = p_install_name or install_name is null)'||wwv_flow.LF||
'    order by decode(install_name,null,1,0)'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031226','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 803656105375708720
 ,p_command => 
'update tm_install_steps set scp_file = ''{ri.images.dir}/resetWLSPass.sh'' where scp_file=''{ri.images.dir}/docker-images/resetWLSPass.sh'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031246','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 803651302710704715
 ,p_command => 
'select * from tm_install_steps'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031245','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 803701946548480458
 ,p_command => 
'select * from tm_install_steps'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031246','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 811485846763503202
 ,p_command => 
'select * from tm_installs'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031458','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 812139330795536911
 ,p_command => 
'select * from tm_installs'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031504','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 811606125029505880
 ,p_command => 
'alter table tm_installs add card_img blob'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031459','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 812156068146539373
 ,p_command => 
'alter table tm_installs add card_mime_type varchar2(100)'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031504','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 817669916535934260
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY PKG_INSTALL_UTIL'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'e_error exception;'||wwv_flow.LF||
'PROCEDURE PR_VALIDATE_HOST(P_ID IN VARCHAR2,P_INSTALL_NAME IN VARCHAR2, P_HOST_NAME IN VARCHAR2,P_USER_ID  IN VARCHAR2, P_PASS  IN VARCHAR2)'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  procedure pr_ins (p_prop in varchar2, p_prop_val in varchar2)'||wwv_flow.LF||
'  is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    insert into tb_install_props(id,install_id,ord,prop_name,prop_val)'||wwv_flow.LF||
'    values (sys_guid(),p_id,0,p_prop,p'||
'_prop_val);'||wwv_flow.LF||
'  end;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  delete tb_install_props where install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_props(id,install_id,ord,prop_name,prop_val,prop_descr,prop_type,editable) '||wwv_flow.LF||
'  select sys_guid(),p_id,ord,prop_name,prop_val,prop_descr,prop_type,editable from TM_INSTALL_PROPS'||wwv_flow.LF||
'  where install_name = p_install_name;'||wwv_flow.LF||
'  pr_ins(''install.name'',P_INSTALL_NAME);'||wwv_flow.LF||
'  pr_ins(''host.name'',P_HOST_NAME);'||wwv_flow.LF||
'  pr_ins('||
'''host.user'',P_USER_ID);'||wwv_flow.LF||
'  pr_ins(''host.pass'',P_PASS);'||wwv_flow.LF||
'  pr_ins(''install.id'',p_id);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  --dbms_session.sleep(20);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  if p_user_id = ''cvr'''||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    apex_util.set_session_state(''P2_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'    raise e_error;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'function fn_status(p_task_id in varchar2) return varchar2'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_stat varchar2(1);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   select status'||wwv_flow.LF||
'   into   l_stat'||wwv_flow.LF||
'   from   tb_install_progres'||
's'||wwv_flow.LF||
'   where  id = p_task_id;'||wwv_flow.LF||
'   return l_stat;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'PROCEDURE PR_RUN_TASKS_PARALLEL(P_INSTALL_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'l_cnt      number;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in'||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select count(1) c,'||wwv_flow.LF||
'           ord'||wwv_flow.LF||
'    from   tb_install_progress a'||wwv_flow.LF||
'    where  install_id = p_install_id'||wwv_flow.LF||
'    and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'    and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'    group by ord'||wwv_flow.LF||
'    order by o'||
'rd'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'      for j in '||wwv_flow.LF||
'        ('||wwv_flow.LF||
'        select id from tb_install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    nvl(status,''N'') = ''N'''||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        )'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if i.c = 1'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'              PR_TASK(p_task_id => j.id);'||wwv_flow.LF||
'              if fn_status(j.id) = ''E'''||wwv_flow.LF||
'              then'||wwv_flow.LF||
'      '||
'            raise e_error;'||wwv_flow.LF||
'              end if;'||wwv_flow.LF||
'        else'||wwv_flow.LF||
'              update tb_install_progress'||wwv_flow.LF||
'              set    status = ''S'''||wwv_flow.LF||
'              where  id = j.id;'||wwv_flow.LF||
'              l_jobname := dbms_scheduler.generate_job_name(''RI_'');'||wwv_flow.LF||
'              dbms_scheduler.create_job('||wwv_flow.LF||
'                job_name            => l_jobname,'||wwv_flow.LF||
'                job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'                jo'||
'b_action          => ''begin PKG_INSTALL_UTIL.PR_TASK(''''''||j.id||''''''); end;'','||wwv_flow.LF||
'                enabled             => true);'||wwv_flow.LF||
'              commit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    if i.c != 1'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for j in 1..3000'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if j >= 2000'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          --time out..'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_'||
'install_progress'||wwv_flow.LF||
'        where  install_id = p_install_id'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    status in (''Y'',''E'');'||wwv_flow.LF||
'        if l_cnt = i.c'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          exit;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'        sleep(2);'||wwv_flow.LF||
'        --dbms_session.sleep(20);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'        select count(1)'||wwv_flow.LF||
'        into   l_cnt'||wwv_flow.LF||
'        from   tb_install_progress'||wwv_flow.LF||
'        wher'||
'e  install_id = p_install_id'||wwv_flow.LF||
'        and    lower(script_type) in (''ssh'',''scp'')'||wwv_flow.LF||
'        and    ord = i.ord'||wwv_flow.LF||
'        and    status in (''E'');'||wwv_flow.LF||
'        if l_cnt > 0'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          raise e_error;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when e_error'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'    null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_SUBMIT_INSTALL(P_ID IN VARCHAR2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'l_jobname  varchar2(255);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  delete tb_install_progress where'||
' install_id = p_id;'||wwv_flow.LF||
'  insert into tb_install_progress(id, install_id,ord,script,descr,progress,status,SCRIPT_TYPE,scp_file)'||wwv_flow.LF||
'  select sys_guid(),p_id,ord,script,descr,0,''N'',SCRIPT_TYPE,scp_file'||wwv_flow.LF||
'  from   tm_install_steps'||wwv_flow.LF||
'  where  install_name = (select prop_val from tb_install_props p where p.install_id = p_id and p.prop_name = ''install.name'');'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'  l_jobname := dbms_scheduler.generate_job_na'||
'me(''RI_'');'||wwv_flow.LF||
'  dbms_scheduler.create_job('||wwv_flow.LF||
'    job_name            => l_jobname,'||wwv_flow.LF||
'    job_type            => ''PLSQL_BLOCK'','||wwv_flow.LF||
'    --job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    job_action          => ''begin PKG_INSTALL_UTIL.PR_RUN_TASKS_PARALLEL(''''''||P_ID||''''''); end;'','||wwv_flow.LF||
'    enabled             => true);'||wwv_flow.LF||
'  commit;'||wwv_flow.LF||
'exception when others'||wwv_flow.LF||
'  then'||wwv_flow.LF||
'        rollback;'||wwv_flow.LF||
'  '||
'      apex_util.set_session_state(''P3_ERRM'', ''Error Occurred'');'||wwv_flow.LF||
'        raise e_error;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'PROCEDURE PR_TASK(p_task_id in varchar2)'||wwv_flow.LF||
'is'||wwv_flow.LF||
'  l_req  varchar2(32767);'||wwv_flow.LF||
'  l_resp clob;'||wwv_flow.LF||
'  type ty is table of varchar2(1000) index by varchar2(255);'||wwv_flow.LF||
'  l_tb ty;'||wwv_flow.LF||
'  l_prop varchar2(32767);'||wwv_flow.LF||
'  l_stat number;'||wwv_flow.LF||
'  l_err  varchar2(32767);'||wwv_flow.LF||
'  l_install_name varchar2(100);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in (select a.rowid rid, a.* from tb_'||
'install_progress a where id = p_task_id)'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    update tb_install_progress set status = ''W'' where rowid = i.rid;'||wwv_flow.LF||
'    commit;'||wwv_flow.LF||
'    select prop_val'||wwv_flow.LF||
'    into   l_install_name'||wwv_flow.LF||
'    from   tb_install_props p'||wwv_flow.LF||
'    where  p.install_id = i.install_id '||wwv_flow.LF||
'    and    p.prop_name = ''install.name'';'||wwv_flow.LF||
'    i.script := fn_replace(i.script,i.install_id);'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id ='||
' i.install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      l_tb(j.prop_name) := j.prop_val;'||wwv_flow.LF||
'      if i.scp_file = ''#properties.file#'' and j.prop_name != ''host.pass'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         l_prop := l_prop||j.prop_name||''=''||j.prop_val||''\n'';'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    case lower(i.script_type)'||wwv_flow.LF||
'      when ''ssh'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_req :=  ''{"port":22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'             '||
' ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"command": "''||i.script||''"}'';'||wwv_flow.LF||
'      when ''scp'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'         if i.scp_file = ''#properties.file#'''||wwv_flow.LF||
'         then'||wwv_flow.LF||
'           i.scp_file := ''/tmp/''||i.install_id||''.properties'';'||wwv_flow.LF||
'         end if;'||wwv_flow.LF||
'         i.scp_file := fn_replace(i.scp_file,i.install_id);'||wwv_flow.LF||
'         l_req :=  ''{"port":'||
'22,'''||wwv_flow.LF||
'              ||  ''"hostName": "''||l_tb(''host.name'')||''",'''||wwv_flow.LF||
'              ||  ''"usr": "''||l_tb(''host.user'')||''",'''||wwv_flow.LF||
'              ||  ''"pwd": "''||l_tb(''host.pass'')||''",'''||wwv_flow.LF||
'              ||  ''"localfileName": "''||i.scp_file||''",'''||wwv_flow.LF||
'              ||  ''"remotefileName": "''||i.script||''",'''||wwv_flow.LF||
'              ||  ''"doNotOverWrite": true,'''||wwv_flow.LF||
'              ||  ''"fileContent": "''||l_prop||''"}'';'||wwv_flow.LF||
'      end case;'||wwv_flow.LF||
'   '||
'   apex_web_service.g_request_headers(1).name := ''Content-Type'';  '||wwv_flow.LF||
'      apex_web_service.g_request_headers(1).value := ''application/json'';'||wwv_flow.LF||
'      l_resp := apex_web_service.make_rest_request'||wwv_flow.LF||
'      (p_url => FN_PARAM(lower(i.script_type)||''_url'',l_install_name),'||wwv_flow.LF||
'      p_http_method  => ''POST'', p_body =>l_req,p_transfer_timeout => 3600);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'        select json_value(l_resp, ''$.exitSt'||
'atus'') exitStatus, json_value(l_resp, ''$.err'') err'||wwv_flow.LF||
'        into   l_stat,l_err'||wwv_flow.LF||
'        FROM   dual;'||wwv_flow.LF||
'        if l_stat = 0 and l_err like ''%Auth fail'''||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'      exception when others'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_stat := 1;'||wwv_flow.LF||
'          l_err := ''Unknown Json Format'';'||wwv_flow.LF||
'      end;'||wwv_flow.LF||
'      update tb_install_progress set log_text = l_resp, status = case when l_stat'||
' = 0 then ''Y'' else ''E'' end, '||wwv_flow.LF||
'      err = l_err where rowid = i.rid;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'   end loop;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'  when others'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      l_err := substr(sqlerrm||chr(10)||dbms_utility.format_error_backtrace,1,4000);'||wwv_flow.LF||
'      update tb_install_progress '||wwv_flow.LF||
'      set    status = ''E'', '||wwv_flow.LF||
'             err = l_err '||wwv_flow.LF||
'      where  id = p_task_id;'||wwv_flow.LF||
'      commit;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'FUNCTION FN_REPLACE(P_TXT IN VARCHAR2, P_INSTALL_ID'||
' IN VARCHAR2) RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  L_RETVAL VARCHAR2(32767) := P_TXT;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    for j in (select * from tb_install_props where install_id = P_install_id)'||wwv_flow.LF||
'    loop'||wwv_flow.LF||
'      if instr(L_RETVAL,''{''||j.prop_name||''}'') > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        L_RETVAL := replace(L_RETVAL,''{''||j.prop_name||''}'',j.prop_val);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end loop;'||wwv_flow.LF||
'    return l_retval;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'FUNCTION FN_PARAM(p_param in varchar2,p_install_n'||
'ame in varchar2:=null) return varchar2 result_cache'||wwv_flow.LF||
'is'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'  for i in '||wwv_flow.LF||
'    ('||wwv_flow.LF||
'    select param_val'||wwv_flow.LF||
'    from   tm_install_params'||wwv_flow.LF||
'    where  param_name = p_param '||wwv_flow.LF||
'    and    (install_name = p_install_name or install_name is null)'||wwv_flow.LF||
'    order by decode(install_name,null,1,0)'||wwv_flow.LF||
'    )'||wwv_flow.LF||
'  loop'||wwv_flow.LF||
'    return i.param_val;'||wwv_flow.LF||
'  end loop;'||wwv_flow.LF||
'  return null;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004031648','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 854157325535702322
 ,p_command => 
'delete tb_install_props'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004040238','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 854157522343704902
 ,p_command => 
'select * from apex_active_sessions'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004040239','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 855529652357524251
 ,p_command => 
'select * from tb_install_progress where status = ''E'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004040247','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 856455693170935957
 ,p_command => 
'select * from tb_install_progress'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004040317','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 860234367702384950
 ,p_command => 
'delete tb_install_progress'
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004040432','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 860302417836038019
 ,p_command => 
'select * from tb_install_progress'||wwv_flow.LF||
'where script like ''%resetWLS%'''
    ,p_created_by => 'RANJITH.VIJAYAN@ORACLE.COM'
    ,p_created_on => to_date('202004040412','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'FSGBUJAPACRI');
end;
/
----------------
--user access log
--
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'is_login_password_valid',
    p_app => 4350,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004030126','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'is_login_password_valid',
    p_app => 4350,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004030127','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'is_login_password_valid',
    p_app => 4350,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004030127','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004030125','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202004040207','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003280943','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202003280943','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003281432','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003290259','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003291315','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202003291315','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003300145','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003300857','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003301457','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RVIJAYAN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003310301','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003310301','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003310618','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RVIJAYAN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003310819','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RVIJAYAN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003310819','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003310819','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003310822','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003310829','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003310832','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003311330','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003311409','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202003311409','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004010117','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004020400','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004030120','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004030128','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004030125','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004030125','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004030125','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004030125','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004030929','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RVIJAYAN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031130','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031130','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031142','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031144','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031457','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031458','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031503','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031504','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031505','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031526','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031531','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031648','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RVIJAYAN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031648','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'CAN SEND CUSTOM EVENTS',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031724','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004031724','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_200100',
    p_access_date => to_date('202004040237','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202003290304','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202003300145','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202003300858','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202003301538','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202003310323','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202003310620','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202003311421','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202004010136','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202004020401','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'VIKRAM.VENKATESH@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202004021108','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'VIKRAM.VENKATESH@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202004021109','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202004030106','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'RANJITH.VIJAYAN@ORACLE.COM',
    p_auth_method => 'Single Sign On (SSO)',
    p_app => 38189,
    p_owner => 'FSGBUJAPACRI',
    p_access_date => to_date('202004030832','YYYYMMDDHH24MI'),
    p_ip_address => '140.84.54.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'FSGBUJAPACRI';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA FSGBUJAPACRI - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_200100
-- Exported 07:41 Saturday April 4, 2020 by: RANJITH.VIJAYAN@ORACLE.COM
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 07:41 Saturday April 4, 2020 by: RANJITH.VIJAYAN@ORACLE.COM
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'FSGBU_JAPAC_RI';
 
end;
/

begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
