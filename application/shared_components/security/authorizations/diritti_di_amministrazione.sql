prompt --application/shared_components/security/authorizations/diritti_di_amministrazione
begin
--   Manifest
--     SECURITY SCHEME: Diritti di amministrazione
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.3'
,p_default_workspace_id=>22028075290766633
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SVIL_APEX'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(22334960883170502)
,p_name=>'Diritti di amministrazione'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Amministratore'
,p_attribute_02=>'A'
,p_error_message=>unistr('Privilegi insufficienti: l''utente non \00E8 un amministratore')
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
