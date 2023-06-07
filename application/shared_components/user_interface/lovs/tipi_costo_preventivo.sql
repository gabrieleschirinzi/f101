prompt --application/shared_components/user_interface/lovs/tipi_costo_preventivo
begin
--   Manifest
--     TIPI COSTO PREVENTIVO
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
 p_id=>wwv_flow_imp.id(61111690227089970)
,p_lov_name=>'TIPI COSTO PREVENTIVO'
,p_lov_query=>'.'||wwv_flow_imp.id(61111690227089970)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61111955148089975)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Gestione'
,p_lov_return_value=>'G'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61112395023089976)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Vario'
,p_lov_return_value=>'V'
);
wwv_flow_imp.component_end;
end;
/
