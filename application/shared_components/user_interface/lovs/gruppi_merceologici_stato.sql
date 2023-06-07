prompt --application/shared_components/user_interface/lovs/gruppi_merceologici_stato
begin
--   Manifest
--     GRUPPI MERCEOLOGICI > STATO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.3'
,p_default_workspace_id=>22028075290766633
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SVIL_APEX'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22612733471223918)
,p_lov_name=>'GRUPPI MERCEOLOGICI > STATO'
,p_lov_query=>'.'||wwv_flow_imp.id(22612733471223918)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22613007288223919)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Attivo'
,p_lov_return_value=>'A'
);
wwv_flow_imp.component_end;
end;
/
