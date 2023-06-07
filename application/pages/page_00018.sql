prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_name=>'Distinte Base'
,p_alias=>'DISTINTE-BASE'
,p_step_title=>'Distinte Base'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARCO.DIPAOLA'
,p_last_upd_yyyymmddhh24miss=>'20230428093829'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56280086140017887)
,p_plug_name=>'Distinte Base'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(22217015700170387)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    DB.CODART,',
'    ART.DESCR,',
'    ART.TIPO,',
'    ART.MATRICOLA,',
'    ART.LUNGHEZZA,',
'    ART.LARGHEZZA,',
'    ART.SPESSORE,',
'    --DB.DESCR,',
'    DB.DTVAR,',
'    DB.QTSUDDIV,',
'    DB.QTRESTO,',
'    DB.UTENTE,',
'    DB.PROVV,',
'    DB.CODSTAMPO,',
'    DB.NOTE,',
'    DB.DATA_CREAZIONE,',
'    --DB.DISEGNOPATH,',
'    ESP.DISEGNOPATH,',
'    DB.ESP,',
'    DB.DTCREA,',
'    DB.TOTMQ,',
'    DB.PREZZOVERN,',
'    DB.TOTPESO,',
'    DB.PREZZOTRASP,',
'    DB.PERCIMB,',
'    DB.PREZZOART,',
'    DB.PREZZOARTCONS,',
'    DB.ATTIVA,',
'    DB.CODCF,',
'    DB.PERC_GEST,',
'    DB.TOTMQZ,',
'    DB.PREZZOZINCATURA,',
'    DB.PREZZOCONTRATTATO,',
'    DB.PERCGEST,',
'    DB.MATERIALE,',
'    DB.PREZZO_LAMIERA,',
'    sys.dbms_lob.getlength(DB.DISEGNO_TECNICO) DISEGNO_TECNICO,',
'    DB.FLG_SUPERATO',
'from ',
'    DB_TEST DB,',
'    ARTICOLI ART,',
'    ARTICOLI_ESPONENTI ESP',
'where',
'    DB.CODART = ART.CODART and',
'    DB.CODART = ESP.CODART and',
'    DB.ESP = ESP.ESP',
'order by',
'    ART.DESCR',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Distinte Base'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(56280181808017887)
,p_name=>'Distinte Base'
,p_max_row_count_message=>unistr('Il conteggio massimo di righe per questo report \00E8 #MAX_ROW_COUNT# righe. Applicare un filtro per ridurre il numero di record nella query.')
,p_no_data_found_message=>'Nessun dato trovato.'
,p_base_pk2=>'ESP'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,:P19_CODART,P19_ESP,P19_CODART_SELECTED,P19_ESP_SELECTED,P19_SELECTED:\#CODART#\,\#ESP#\,\#CODART#\,\#ESP#\,\#CODART#_#ESP#\'
,p_detail_link_text=>'<span aria-label="Modifica"><span class="fa fa-edit" aria-hidden="true" title="Modifica"></span></span>'
,p_owner=>'MARCO.DIPAOLA'
,p_internal_uid=>56280181808017887
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56280585447017889)
,p_db_column_name=>'CODART'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Codice'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(32155679028317014)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56286585343017897)
,p_db_column_name=>'ESP'
,p_display_order=>0
,p_column_identifier=>'P'
,p_column_label=>'Esponente'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56280965279017892)
,p_db_column_name=>'DESCR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Descrizione'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56281369184017893)
,p_db_column_name=>'DTVAR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Data Ultima Variazione'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56285301242017896)
,p_db_column_name=>'NOTE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Note'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56286913868017897)
,p_db_column_name=>'DTCREA'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Data Creazione'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56290151131017900)
,p_db_column_name=>'ATTIVA'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Attiva'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31649610549251856)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56290535787017900)
,p_db_column_name=>'CODCF'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Cod. Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56292992635017902)
,p_db_column_name=>'MATERIALE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Materiale'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56294102351017903)
,p_db_column_name=>'FLG_SUPERATO'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Esponente Superato'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31649610549251856)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38782225746693613)
,p_db_column_name=>'TIPO'
,p_display_order=>45
,p_column_identifier=>'AJ'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38782370112693614)
,p_db_column_name=>'MATRICOLA'
,p_display_order=>55
,p_column_identifier=>'AK'
,p_column_label=>'Matricola'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38782472186693615)
,p_db_column_name=>'LUNGHEZZA'
,p_display_order=>65
,p_column_identifier=>'AL'
,p_column_label=>'Lunghezza'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38782515627693616)
,p_db_column_name=>'LARGHEZZA'
,p_display_order=>75
,p_column_identifier=>'AM'
,p_column_label=>'Larghezza'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38782636011693617)
,p_db_column_name=>'SPESSORE'
,p_display_order=>85
,p_column_identifier=>'AN'
,p_column_label=>'Spessore'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56293317532017902)
,p_db_column_name=>'PREZZO_LAMIERA'
,p_display_order=>95
,p_column_identifier=>'AG'
,p_column_label=>'Prezzo Lamiera'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56286136053017896)
,p_db_column_name=>'DISEGNOPATH'
,p_display_order=>145
,p_column_identifier=>'O'
,p_column_label=>'Percorso File Disegno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56287375377017897)
,p_db_column_name=>'TOTMQ'
,p_display_order=>155
,p_column_identifier=>'R'
,p_column_label=>'Totale Metri Quadri'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56287723753017898)
,p_db_column_name=>'PREZZOVERN'
,p_display_order=>165
,p_column_identifier=>'S'
,p_column_label=>'Prezzo Verniciatura'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56288117058017898)
,p_db_column_name=>'TOTPESO'
,p_display_order=>175
,p_column_identifier=>'T'
,p_column_label=>'Totale Peso'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56288526213017898)
,p_db_column_name=>'PREZZOTRASP'
,p_display_order=>185
,p_column_identifier=>'U'
,p_column_label=>'Prezzo Trasporto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56288964748017899)
,p_db_column_name=>'PERCIMB'
,p_display_order=>195
,p_column_identifier=>'V'
,p_column_label=>'Percimb'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56289330022017899)
,p_db_column_name=>'PREZZOART'
,p_display_order=>205
,p_column_identifier=>'W'
,p_column_label=>'Prezzoart'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56289791623017899)
,p_db_column_name=>'PREZZOARTCONS'
,p_display_order=>215
,p_column_identifier=>'X'
,p_column_label=>'Prezzoartcons'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56291326109017901)
,p_db_column_name=>'TOTMQZ'
,p_display_order=>225
,p_column_identifier=>'AB'
,p_column_label=>'Totmqz'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56291769964017901)
,p_db_column_name=>'PREZZOZINCATURA'
,p_display_order=>235
,p_column_identifier=>'AC'
,p_column_label=>'Prezzo Zincatura'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56292190084017901)
,p_db_column_name=>'PREZZOCONTRATTATO'
,p_display_order=>245
,p_column_identifier=>'AD'
,p_column_label=>'Prezzo Contrattato'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56292522714017902)
,p_db_column_name=>'PERCGEST'
,p_display_order=>255
,p_column_identifier=>'AE'
,p_column_label=>'Percgest'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56281761290017893)
,p_db_column_name=>'QTSUDDIV'
,p_display_order=>265
,p_column_identifier=>'D'
,p_column_label=>'Qtsuddiv'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56282106105017893)
,p_db_column_name=>'QTRESTO'
,p_display_order=>275
,p_column_identifier=>'E'
,p_column_label=>'Qtresto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56282569829017894)
,p_db_column_name=>'UTENTE'
,p_display_order=>285
,p_column_identifier=>'F'
,p_column_label=>'Utente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56284523331017895)
,p_db_column_name=>'PROVV'
,p_display_order=>295
,p_column_identifier=>'K'
,p_column_label=>'Provv'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56284965731017895)
,p_db_column_name=>'CODSTAMPO'
,p_display_order=>305
,p_column_identifier=>'L'
,p_column_label=>'Codstampo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56285768756017896)
,p_db_column_name=>'DATA_CREAZIONE'
,p_display_order=>315
,p_column_identifier=>'N'
,p_column_label=>'Data Creazione'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56290982288017900)
,p_db_column_name=>'PERC_GEST'
,p_display_order=>325
,p_column_identifier=>'AA'
,p_column_label=>'Perc Gest'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56293793164017903)
,p_db_column_name=>'DISEGNO_TECNICO'
,p_display_order=>335
,p_column_identifier=>'AH'
,p_column_label=>'Disegno Tecnico'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(56297040852018768)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'562971'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODART:ESP:DESCR:TIPO:MATRICOLA:MATERIALE:LUNGHEZZA:LARGHEZZA:SPESSORE:CODCF:DTCREA:DTVAR:FLG_SUPERATO:ATTIVA'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(56447447660431938)
,p_report_id=>wwv_flow_imp.id(56297040852018768)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'FLG_SUPERATO'
,p_operator=>'='
,p_expr=>'No'
,p_condition_sql=>'"FLG_SUPERATO" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''No''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(56447891362431938)
,p_report_id=>wwv_flow_imp.id(56297040852018768)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ATTIVA'
,p_operator=>'='
,p_expr=>'Si'
,p_condition_sql=>'"ATTIVA" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Si''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56296322010017905)
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
 p_id=>wwv_flow_imp.id(56294673257017903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56280086140017887)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:19::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56294970958017903)
,p_name=>'Modifica report - Finestra di dialogo chiusa'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(56280086140017887)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56295453913017904)
,p_event_id=>wwv_flow_imp.id(56294970958017903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56280086140017887)
);
wwv_flow_imp.component_end;
end;
/
