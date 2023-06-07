prompt --application/shared_components/navigation/lists/interfaccia_utente
begin
--   Manifest
--     LIST: Interfaccia utente
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
 p_id=>wwv_flow_imp.id(22519830775171041)
,p_name=>'Interfaccia utente'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(22333027589170498)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22520296940171042)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Selezione stile tema'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Imposta l''aspetto predefinito dell''applicazione'
,p_required_patch=>wwv_flow_imp.id(22333027589170498)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
