prompt --application/shared_components/navigation/lists/report_attività
begin
--   Manifest
--     LIST: Report attività
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
 p_id=>wwv_flow_imp.id(22520533545171042)
,p_name=>unistr('Report attivit\00E0')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(22332330866170498)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22520948482171042)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>unistr('Visualizza metriche di attivit\00E0 dell''applicazione')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22521362232171042)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Primi utenti'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report delle visualizzazioni di pagina aggregate per utente'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22521767932171043)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Log degli errori dell''applicazione'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report degli errori registrati da questa applicazione'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22522106580171043)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Prestazioni della pagina'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>unistr('Report dell''attivit\00E0 e delle prestazioni in base alla pagina dell''applicazione')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22522566686171043)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Visualizzazioni di pagina'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report di ciascuna visualizzazione di pagina in base all''utente, inclusi data di accesso e tempo trascorso'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22522939707171044)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Log automazioni'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report delle esecuzioni delle automazioni e dei messaggi registrati da questa applicazione'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
