prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Preventivatore'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'MARCO.DIPAOLA'
,p_last_upd_yyyymmddhh24miss=>'20230412163719'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22344583317170536)
,p_plug_name=>'Preventivatore'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(22199275461170377)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57462159430120931)
,p_plug_name=>'Menu'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_imp.id(22166277348170358)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(57638972905140352)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(22280973027170428)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp.component_end;
end;
/
