prompt --application/shared_components/user_interface/lovs/p19_ricerca_codart
begin
--   Manifest
--     P19_RICERCA_CODART
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
 p_id=>wwv_flow_imp.id(56761194136828902)
,p_lov_name=>'P19_RICERCA_CODART'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    ART_ESP.ROWID ART_ESP_ID,',
'    ART_ESP.CODART,',
'    ART_ESP.ESP,',
'    ART.DESCR,',
'    decode(DB.CODART, null, ''Da creare'', ''Inserita'') STATO',
'from ',
'    ARTICOLI_ESPONENTI ART_ESP,',
'    ARTICOLI ART,',
'    DB_TEST DB',
'where',
'    ART.CODART = ART_ESP.CODART and',
'    DB.CODART(+) = ART_ESP.CODART and',
'    DB.ESP(+) = ART_ESP.ESP'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'DB_TEST'
,p_return_column_name=>'ART_ESP_ID'
,p_display_column_name=>'CODART'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(56781915450045511)
,p_query_column_name=>'ART_ESP_ID'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(56923726329836598)
,p_query_column_name=>'CODART'
,p_heading=>'Codice'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(56924198480836598)
,p_query_column_name=>'ESP'
,p_heading=>'Esponente'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(56770249160961698)
,p_query_column_name=>'DESCR'
,p_heading=>'Descrizione'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(56770653506961698)
,p_query_column_name=>'STATO'
,p_heading=>'Stato'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
