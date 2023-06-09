prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>'Form Codice IVA'
,p_alias=>'FORM-CODICE-IVA'
,p_page_mode=>'MODAL'
,p_step_title=>'Codice IVA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'MARCO.DIPAOLA'
,p_last_upd_yyyymmddhh24miss=>'20230403145522'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31615678545127994)
,p_plug_name=>'Form Codice IVA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(22166277348170358)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CODICI_IVA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31624095831128004)
,p_plug_name=>'Pulsanti'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(22169082598170359)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31624430814128004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31624095831128004)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_image_alt=>'Annulla'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31625802840128005)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31624095831128004)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_image_alt=>'Elimina'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_CODIVA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31626273010128005)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31624095831128004)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Applica modifiche'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_CODIVA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31626643977128005)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31624095831128004)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_CODIVA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31616039159127994)
,p_name=>'P11_CODIVA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_source_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_prompt=>'Codice'
,p_source=>'CODIVA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>3
,p_cMaxlength=>3
,p_read_only_when=>'P11_CODIVA'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(22302757619170444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31616497516127994)
,p_name=>'P11_DESCR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_source_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_prompt=>'Descrizione'
,p_source=>'DESCR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>40
,p_field_template=>wwv_flow_imp.id(22302757619170444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31616870177127995)
,p_name=>'P11_ALIQ'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_source_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_prompt=>'Aliquota %'
,p_source=>'ALIQ'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(22302409863170444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31617203991127995)
,p_name=>'P11_INDETR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_source_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_prompt=>unistr('Indetraibilit\00E0 %')
,p_source=>'INDETR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(22302409863170444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31617664214127996)
,p_name=>'P11_BOLDOG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_source_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_default=>'N'
,p_prompt=>'Bolla Doganale'
,p_source=>'BOLDOG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(22302409863170444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31618080390127996)
,p_name=>'P11_PLAFOND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_source_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_default=>'N'
,p_prompt=>'Plafond'
,p_source=>'PLAFOND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(22302409863170444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31618417173127996)
,p_name=>'P11_DICHINTENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_source_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_default=>'N'
,p_prompt=>'Dich. Intento'
,p_source=>'DICHINTENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(22302409863170444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31618894815127997)
,p_name=>'P11_CODTIPO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_source_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_prompt=>'Tipo'
,p_source=>'CODTIPO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'TIPI_RAGG_IVA.DESCR'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(22302409863170444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31619543143128000)
,p_name=>'P11_INC_LIQ_IVA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_source_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_source=>'INC_LIQ_IVA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31619955598128001)
,p_name=>'P11_SE_AUTOFT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_source_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_default=>'N'
,p_prompt=>'Autofattura'
,p_source=>'SE_AUTOFT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(22302409863170444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31620303134128001)
,p_name=>'P11_IVA_INTRA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_source_plug_id=>wwv_flow_imp.id(31615678545127994)
,p_item_default=>'N'
,p_prompt=>'Op. Intracomunitarie'
,p_source=>'IVA_INTRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(22302409863170444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31624531723128004)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31624430814128004)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31625316431128005)
,p_event_id=>wwv_flow_imp.id(31624531723128004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31627460396128006)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31615678545127994)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Elabora Form Codice IVA'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31627824817128006)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Chiudi finestra di dialogo'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31627034026128006)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(31615678545127994)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inizializza Form Codice IVA'
);
wwv_flow_imp.component_end;
end;
/
