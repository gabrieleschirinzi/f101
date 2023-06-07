prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.3'
,p_default_workspace_id=>22028075290766633
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SVIL_APEX'
);
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Categorie Costo Distinta'
,p_alias=>'CATEGORIE-COSTO-DISTINTA'
,p_step_title=>'Categorie Costo Distinta'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARCO.DIPAOLA'
,p_last_upd_yyyymmddhh24miss=>'20230427132732'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61243241966082823)
,p_plug_name=>'Categorie Costo Distinta'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(22217015700170387)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DB_COSTI_CATEG'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Categorie Costo Distinta'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(61243358828082823)
,p_name=>'Categorie Costo Distinta'
,p_max_row_count_message=>unistr('Il conteggio massimo di righe per questo report \00E8 #MAX_ROW_COUNT# righe. Applicare un filtro per ridurre il numero di record nella query.')
,p_no_data_found_message=>'Nessun dato trovato.'
,p_base_pk1=>'CODCATEG'
,p_base_pk2=>'DESCR'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:RP:P26_CODCATEG,P26_DESCR:\#CODCATEG#\,\#DESCR#\'
,p_detail_link_text=>'<span aria-label="Modifica"><span class="fa fa-edit" aria-hidden="true" title="Modifica"></span></span>'
,p_owner=>'MARCO.DIPAOLA'
,p_internal_uid=>61243358828082823
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61244184149082830)
,p_db_column_name=>'DESCR'
,p_display_order=>0
,p_column_identifier=>'B'
,p_column_label=>'Descrizione'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61243719710082829)
,p_db_column_name=>'CODCATEG'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Codice'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(61248006383092038)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'612481'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODCATEG:DESCR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61246302697082836)
,p_plug_name=>'Indicatore di percorso'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(22239269777170398)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(22129577048170305)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(22306726286170449)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61244602276082831)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61243241966082823)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:26::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61244905595082831)
,p_name=>'Modifica report - Finestra di dialogo chiusa'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(61243241966082823)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61245407924082833)
,p_event_id=>wwv_flow_imp.id(61244905595082831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61243241966082823)
);
wwv_flow_imp.component_end;
end;
/
