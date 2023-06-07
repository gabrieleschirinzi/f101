prompt --application/shared_components/navigation/search_config/prova
begin
--   Manifest
--     SEARCH CONFIG: Prova
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.3'
,p_default_workspace_id=>22028075290766633
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SVIL_APEX'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(22574537350371092)
,p_label=>'Prova'
,p_static_id=>'prova'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'GRUPPI_MERC'
,p_searchable_columns=>'COD_GM:DESCR:COD_CATEG'
,p_pk_column_name=>'COD_GM'
,p_title_column_name=>'DESCR'
,p_description_column_name=>'DESCR'
,p_icon_source_type=>'INITIALS'
);
wwv_flow_imp.component_end;
end;
/
