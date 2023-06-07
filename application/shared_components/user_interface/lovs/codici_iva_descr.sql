prompt --application/shared_components/user_interface/lovs/codici_iva_descr
begin
--   Manifest
--     CODICI_IVA.DESCR
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
 p_id=>wwv_flow_imp.id(31730366939461064)
,p_lov_name=>'CODICI_IVA.DESCR'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CODICI_IVA'
,p_return_column_name=>'CODIVA'
,p_display_column_name=>'DESCR'
,p_default_sort_column_name=>'DESCR'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/