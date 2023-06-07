prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Codici IVA'
,p_alias=>'CODICI-IVA'
,p_step_title=>'Codici IVA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARCO.DIPAOLA'
,p_last_upd_yyyymmddhh24miss=>'20230417123002'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31628800547128007)
,p_plug_name=>'Codici IVA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(22217015700170387)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CODICI_IVA'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'DESCR'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Codici IVA'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(31628981889128007)
,p_name=>'Codici IVA'
,p_max_row_count_message=>unistr('Il conteggio massimo di righe per questo report \00E8 #MAX_ROW_COUNT# righe. Applicare un filtro per ridurre il numero di record nella query.')
,p_no_data_found_message=>'Nessun dato trovato.'
,p_base_pk1=>'CODIVA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_CODIVA:\#CODIVA#\'
,p_detail_link_text=>'<span aria-label="Modifica"><span class="fa fa-edit" aria-hidden="true" title="Modifica"></span></span>'
,p_owner=>'MARCO.DIPAOLA'
,p_internal_uid=>31628981889128007
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31629350131128008)
,p_db_column_name=>'CODIVA'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Codice'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31629719126128009)
,p_db_column_name=>'DESCR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Descrizione'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31630107230128009)
,p_db_column_name=>'ALIQ'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Aliquota %'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31630576239128009)
,p_db_column_name=>'INDETR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('Indetraibilit\00E0 %')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31630937867128010)
,p_db_column_name=>'BOLDOG'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Bolla Doganale'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31649610549251856)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31631302027128010)
,p_db_column_name=>'PLAFOND'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Plafond'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31649610549251856)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31631724639128010)
,p_db_column_name=>'DICHINTENTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dich. Intento'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31649610549251856)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31632189730128010)
,p_db_column_name=>'CODTIPO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31618989009127998)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31632566860128011)
,p_db_column_name=>'INC_LIQ_IVA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Inc Liq Iva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31632910351128011)
,p_db_column_name=>'SE_AUTOFT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Autofattura'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31649610549251856)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31633322306128011)
,p_db_column_name=>'IVA_INTRA'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Op. Intracomunitarie'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31649610549251856)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31636333880135316)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316364'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIVA:DESCR:ALIQ:INDETR:BOLDOG:PLAFOND:DICHINTENTO:SE_AUTOFT:IVA_INTRA:CODTIPO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31635541746128013)
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
 p_id=>wwv_flow_imp.id(31633810253128012)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31628800547128007)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:11::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31634100517128012)
,p_name=>'Modifica report - Finestra di dialogo chiusa'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(31628800547128007)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31634634842128012)
,p_event_id=>wwv_flow_imp.id(31634100517128012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31628800547128007)
);
wwv_flow_imp.component_end;
end;
/