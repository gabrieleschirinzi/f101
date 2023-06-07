prompt --application/shared_components/navigation/lists/controllo_dell_accesso
begin
--   Manifest
--     LIST: Controllo dell'accesso
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
 p_id=>wwv_flow_imp.id(22523276834171044)
,p_name=>'Controllo dell''accesso'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(22332278197170498)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22523652979171044)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Utenti'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Imposta il livello di accesso per gli utenti autenticati di questa applicazione'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22524039836171045)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Controllo dell''accesso'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Modifica le impostazioni del controllo dell''accesso e lo disabilita'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
