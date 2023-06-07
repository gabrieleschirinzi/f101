prompt --application/pages/page_10060
begin
--   Manifest
--     PAGE: 10060
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
 p_id=>10060
,p_name=>'Informazioni'
,p_alias=>'HELP'
,p_step_title=>'Informazioni'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22336595400170509)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(22332972152170498)
,p_protection_level=>'C'
,p_help_text=>unistr('In questa pagina \00E8 possibile accedere a tutto il testo della Guida sull''applicazione. I collegamenti presenti nell''area "Documentazione" offrono una spiegazione pi\00F9 approfondita delle caratteristiche e delle funzionalit\00E0 dell''applicazione.')
,p_page_component_map=>'11'
,p_last_updated_by=>'MARCO.DIPAOLA'
,p_last_upd_yyyymmddhh24miss=>'20230331114020'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22512679299171031)
,p_plug_name=>'Pagina delle informazioni'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(22194667376170374)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>unistr('Il testo relativo all''applicazione specifica pu\00F2 essere inserito in questo campo.')
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp.component_end;
end;
/
