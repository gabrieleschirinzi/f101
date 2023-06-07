prompt --application/pages/page_10042
begin
--   Manifest
--     PAGE: 10042
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
 p_id=>10042
,p_name=>'Gestisci accesso utente'
,p_alias=>'USER_ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Gestisci accesso utente'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22336595400170509)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(22334960883170502)
,p_required_patch=>wwv_flow_imp.id(22332278197170498)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Usare questo form per immettere gli utenti, i rispettivi indirizzi di posta elettronica e impostarne il livello di accesso.',
unistr('Le impostazioni definite in <em>Configura controllo dell''accesso</em> determineranno se il nome utente deve essere l''indirizzo di posta elettronica o pu\00F2 essere qualsiasi immissione alfanumerica.</p>'),
'<p>Questa applicazione supporta i tre livelli di accesso seguenti: Lettore, Redattore e Amministratore.</p>',
'<ul>',
'  <li>I <strong>lettori</strong> hanno accesso in sola lettura a tutte le informazioni e possono anche visualizzare i report.</li>',
'  <li>I <strong>redattori</strong> possono creare, modificare ed eliminare le informazioni e visualizzare i report.</li>',
unistr('  <li>Gli <strong>amministratori</strong>, oltre alle funzionalit\00E0 previste per i collaboratori, possono eseguire anche la configurazione dell''applicazione accedendo alla sezione Amministrazione dell''applicazione.</li>'),
'</ul>',
unistr('<p>Quando si modifica un utente esistente, \00E8 possibile bloccare il relativo account impedendone quindi l''accesso all''applicazione.</p>'),
unistr('<p><em><strong>Nota:</strong> se si utilizzano account Oracle APEX, gli utenti immessi in questo form devono essere definiti come utenti finali anche da un amministratore dell''area di lavoro, che pu\00F2 impostarne le password.</em></p>')))
,p_page_component_map=>'02'
,p_last_updated_by=>'MARCO.DIPAOLA'
,p_last_upd_yyyymmddhh24miss=>'20230331114019'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22451139977170890)
,p_plug_name=>'Form su Gestisci accesso utente'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(22166277348170358)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22451229452170890)
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
 p_id=>wwv_flow_imp.id(22454001724170892)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(22451229452170890)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Applica modifiche'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22454436929170893)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(22451229452170890)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aggiungi utente'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22452200220170891)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22451229452170890)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_image_alt=>'Annulla'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22453662492170892)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22451229452170890)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_image_alt=>'Elimina'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22454789883170893)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22451139977170890)
,p_item_source_plug_id=>wwv_flow_imp.id(22451139977170890)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22455146179170893)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22451139977170890)
,p_item_source_plug_id=>wwv_flow_imp.id(22451139977170890)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22455544901170894)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22451139977170890)
,p_item_source_plug_id=>wwv_flow_imp.id(22451139977170890)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nome utente'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(22303946193170445)
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22455940204170894)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22451139977170890)
,p_item_source_plug_id=>wwv_flow_imp.id(22451139977170890)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ruoli'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>wwv_flow_imp.id(22303946193170445)
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Quando il controllo dell''accesso \00E8 abilitato, gli amministratori possono limitare l''accesso degli utenti autenticati a determinate funzioni dell''applicazione. Questa applicazione supporta i tre ruoli seguenti: Lettore, Collaboratore e Amministrato')
||'re.</p>',
'<ul>',
'  <li>I <strong>lettori</strong> hanno accesso in sola lettura a tutte le informazioni e possono anche visualizzare i report.</li>',
'  <li>I <strong>collaboratori</strong> possono creare, modificare ed eliminare le informazioni e visualizzare i report.</li>',
unistr('  <li>Gli <strong>amministratori</strong>, oltre alle funzionalit\00E0 previste per i collaboratori, possono eseguire anche la configurazione dell''applicazione.</li>'),
'</ul>'))
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(22457254110170901)
,p_validation_name=>'Impossibile rimuovere se stessi dal ruolo di amministratore'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Impossibile rimuovere il ruolo di amministrazione da se stessi.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22452318240170891)
,p_name=>'Annulla finestra di dialogo'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22452200220170891)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22453005652170892)
,p_event_id=>wwv_flow_imp.id(22452318240170891)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22457508905170902)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(22451139977170890)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inizializza form Gestisci accesso utente'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22457967240170902)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22451139977170890)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Elabora form Gestisci accesso utente'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22458385482170902)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Chiudi finestra di dialogo'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
