prompt --application/shared_components/navigation/lists/menu_anagrafiche_di_magazzino
begin
--   Manifest
--     LIST: Menu anagrafiche di magazzino
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
 p_id=>wwv_flow_imp.id(57712088841450586)
,p_name=>'Menu anagrafiche di magazzino'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(57717075989450589)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Tipologie Componenti'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-sitemap'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12,13'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(57713445862450587)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Gruppi Merceologici'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-object-group'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(57716236315450589)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Lista Articoli'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list-alt'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(57735629410597130)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Gestione Articolo'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-package'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
