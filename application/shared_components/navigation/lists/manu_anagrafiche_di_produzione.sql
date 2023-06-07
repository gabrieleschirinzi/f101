prompt --application/shared_components/navigation/lists/manu_anagrafiche_di_produzione
begin
--   Manifest
--     LIST: Manu anagrafiche di produzione
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
 p_id=>wwv_flow_imp.id(57781023764037439)
,p_name=>'Manu anagrafiche di produzione'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(57787600930037443)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Lista Distinte Base'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-sitemap-vertical'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,19'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(57782804711037440)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Gestione Distinta Base'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19:::'
,p_list_item_icon=>'fa-tree-org'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
