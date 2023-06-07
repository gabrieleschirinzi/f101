prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'Form Gruppo Merceologico'
,p_alias=>'FORM-GRUPPO-MERCEOLOGICO'
,p_page_mode=>'MODAL'
,p_step_title=>'Gruppo Merceologico'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'MARCO.DIPAOLA'
,p_last_upd_yyyymmddhh24miss=>'20230403152617'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31687365590410013)
,p_plug_name=>'Form Gruppo Merceologico'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(22166277348170358)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GRUPPI_MERC'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31690551008410016)
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
 p_id=>wwv_flow_imp.id(31690917887410016)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31690551008410016)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_image_alt=>'Annulla'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31692374832410017)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31690551008410016)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_image_alt=>'Elimina'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_CODGM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31692725138410018)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31690551008410016)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Applica modifiche'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_CODGM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31693153984410018)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31690551008410016)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(22305149526170448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_CODGM'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31687717853410013)
,p_name=>'P15_CODGM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31687365590410013)
,p_item_source_plug_id=>wwv_flow_imp.id(31687365590410013)
,p_prompt=>'Nuovo'
,p_source=>'CODGM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_read_only_when=>'P15_CODGM'
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
 p_id=>wwv_flow_imp.id(31688132509410014)
,p_name=>'P15_CODLAV'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31687365590410013)
,p_item_source_plug_id=>wwv_flow_imp.id(31687365590410013)
,p_source=>'CODLAV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31688517986410014)
,p_name=>'P15_DESCR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31687365590410013)
,p_item_source_plug_id=>wwv_flow_imp.id(31687365590410013)
,p_prompt=>'Descr'
,p_source=>'DESCR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(22302757619170444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31688903510410015)
,p_name=>'P15_PESO_SPECIFICO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31687365590410013)
,p_item_source_plug_id=>wwv_flow_imp.id(31687365590410013)
,p_prompt=>'Peso Specifico'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PESO_SPECIFICO'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31691042872410016)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31690917887410016)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31691850653410017)
,p_event_id=>wwv_flow_imp.id(31691042872410016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31693983621410018)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31687365590410013)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Elabora Form Gruppo Merceologico'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31694366719410019)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Chiudi finestra di dialogo'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31693586240410018)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(31687365590410013)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inizializza Form Gruppo Merceologico'
);
wwv_flow_imp.component_end;
end;
/