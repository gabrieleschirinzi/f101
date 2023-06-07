prompt --application/shared_components/navigation/lists/configurazione_applicazione
begin
--   Manifest
--     LIST: Configurazione applicazione
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.3'
,p_default_workspace_id=>22028075290766633
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SVIL_APEX'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(22519142758171041)
,p_name=>'Configurazione applicazione'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(22332648590170498)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22519512085171041)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Opzioni di configurazione'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Abilita o disabilita le funzioni dell''applicazione'
,p_required_patch=>wwv_flow_imp.id(22332648590170498)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
