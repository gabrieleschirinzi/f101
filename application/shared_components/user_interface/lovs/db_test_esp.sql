prompt --application/shared_components/user_interface/lovs/db_test_esp
begin
--   Manifest
--     DB_TEST.ESP
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
 p_id=>wwv_flow_imp.id(56646439767034520)
,p_lov_name=>'DB_TEST.ESP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    DB.ESP',
'from ',
'    DB_TEST DB'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'DB_TEST'
,p_return_column_name=>'ESP'
,p_display_column_name=>'ESP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(56647508470034522)
,p_query_column_name=>'ESP'
,p_heading=>'Esponente'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
