prompt --application/pages/page_10040
begin
--   Manifest
--     PAGE: 10040
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
 p_id=>10040
,p_name=>'Configura controllo dell''accesso'
,p_alias=>'CONFIGURA-CONTROLLO-DELL-ACCESSO'
,p_page_mode=>'MODAL'
,p_step_title=>'Configura controllo dell''accesso'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22336595400170509)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(22334960883170502)
,p_required_patch=>wwv_flow_imp.id(22332278197170498)
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Selezionare l''opzione appropriata per qualsiasi utente autenticato.<br>',
unistr('Se si seleziona <strong>No</strong>, si garantisce maggiore sicurezza all''applicazione poich\00E9 solo gli utenti specificati potranno accedere all''applicazione.'),
unistr('Tuttavia, se la community di utenti dell''applicazione \00E8 estesa, gestirli tutti potrebbe diventare oneroso. In questo caso, sarebbe preferibile scegliere <strong>S\00EC</strong> e immettere solo gli amministratori dell''applicazione ed eventualmente i coll')
||'aboratori.<br>',
unistr('Se si seleziona <strong>S\00EC</strong>, \00E8 necessario selezionare anche come gestire gli utenti non inclusi nell''apposita lista.</p>'),
'<p>Effettuare una selezione tra la richiesta di indirizzi di posta elettronica e qualsiasi valore numerico per Nomi utente.<br>',
unistr('In genere, \00E8 consigliabile impostare questa opzione su <strong>Indirizzo di posta elettronica</strong> se l''applicazione utilizza (o verr\00E0 configurata per usare) uno schema di autenticazione centralizzato come Oracle Access Manager o SSO.</p>'),
'<p><em><strong>Nota:</strong> questa applicazione supporta i tre livelli di accesso seguenti: Lettore, Collaboratore e Amministratore.',
'<ul>',
'  <li>I <strong>lettori</strong> hanno accesso in sola lettura a tutte le informazioni e possono visualizzare i report.</li>',
'  <li>I <strong>collaboratori</strong> possono creare, modificare ed eliminare le informazioni e visualizzare i report.</li>',
unistr('  <li>Gli <strong>amministratori</strong>, oltre alla funzionalit\00E0 previste per i collaboratori, possono eseguire anche la configurazione dell''applicazione accedendo alla sezione Amministrazione dell''applicazione.</li>'),
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
,p_last_updated_by=>'MARCO.DIPAOLA'
,p_last_upd_yyyymmddhh24miss=>'20230331114019'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22440659162170876)
,p_plug_name=>'Configurazione di controllo dell''accesso'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(22166277348170358)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22440725209170876)
,p_plug_name=>'Pulsanti'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(22169082598170359)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22441997325170877)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22440725209170876)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Applica modifiche'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22442206351170878)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22440725209170876)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_image_alt=>'Annulla'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22443620803170879)
,p_branch_name=>'Dirama a pagina amministrativa'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22443963773170879)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22440659162170876)
,p_prompt=>unistr('Qualsiasi utente autenticato pu\00F2 accedere a questa applicazione')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(22302409863170444)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('Scegliere <strong>No</strong> se tutti gli utenti sono definiti nella lista di controllo dell''accesso. Scegliere <strong>S\00EC</strong>, se questa applicazione pu\00F2 essere usata anche dagli utenti autenticati che non si trovano nella lista di controllo d')
||'ell''accesso.'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22442374262170878)
,p_name=>'Annulla finestra di dialogo'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22442206351170878)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22443061549170878)
,p_event_id=>wwv_flow_imp.id(22442374262170878)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22444321225170879)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Imposta controllo dell''accesso'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Impostazioni controllo dell''accesso salvate.'
);
wwv_flow_imp.component_end;
end;
/
