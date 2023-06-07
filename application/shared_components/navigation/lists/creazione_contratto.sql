prompt --application/shared_components/navigation/lists/creazione_contratto
begin
--   Manifest
--     LIST: Creazione Contratto
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.3'
,p_default_workspace_id=>22028075290766633
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SVIL_APEX'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(58349484816159814)
,p_name=>'Creazione Contratto'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/
