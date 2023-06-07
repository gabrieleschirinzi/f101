prompt --application/shared_components/security/app_access_control/amministratore
begin
--   Manifest
--     ACL ROLE: Amministratore
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.3'
,p_default_workspace_id=>22028075290766633
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SVIL_APEX'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(22334553763170501)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Amministratore'
,p_description=>'Ruolo assegnato agli amministratori dell''applicazione.'
);
wwv_flow_imp.component_end;
end;
/
