prompt --application/shared_components/user_interface/lovs/costo_ass_perc_preventivo
begin
--   Manifest
--     COSTO ASS_PERC PREVENTIVO
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
 p_id=>wwv_flow_imp.id(61113251200125650)
,p_lov_name=>'COSTO ASS_PERC PREVENTIVO'
,p_lov_query=>'.'||wwv_flow_imp.id(61113251200125650)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61113579572125650)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'%'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(61113936305125650)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\20AC')
,p_lov_return_value=>'A'
);
wwv_flow_imp.component_end;
end;
/
