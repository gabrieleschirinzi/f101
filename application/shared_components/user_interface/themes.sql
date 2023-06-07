prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.3'
,p_default_workspace_id=>22028075290766633
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SVIL_APEX'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(22308167996170460)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(22157621059170348)
,p_default_dialog_template=>wwv_flow_imp.id(22145004363170341)
,p_error_template=>wwv_flow_imp.id(22142415459170339)
,p_printer_friendly_template=>wwv_flow_imp.id(22157621059170348)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(22142415459170339)
,p_default_button_template=>wwv_flow_imp.id(22305149526170448)
,p_default_region_template=>wwv_flow_imp.id(22226853334170392)
,p_default_chart_template=>wwv_flow_imp.id(22226853334170392)
,p_default_form_template=>wwv_flow_imp.id(22226853334170392)
,p_default_reportr_template=>wwv_flow_imp.id(22226853334170392)
,p_default_tabform_template=>wwv_flow_imp.id(22226853334170392)
,p_default_wizard_template=>wwv_flow_imp.id(22226853334170392)
,p_default_menur_template=>wwv_flow_imp.id(22239269777170398)
,p_default_listr_template=>wwv_flow_imp.id(22226853334170392)
,p_default_irr_template=>wwv_flow_imp.id(22217015700170387)
,p_default_report_template=>wwv_flow_imp.id(22261566291170414)
,p_default_label_template=>wwv_flow_imp.id(22302690002170444)
,p_default_menu_template=>wwv_flow_imp.id(22306726286170449)
,p_default_calendar_template=>wwv_flow_imp.id(22306847315170451)
,p_default_list_template=>wwv_flow_imp.id(22293307745170436)
,p_default_nav_list_template=>wwv_flow_imp.id(22290704285170434)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(22290704285170434)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(22297147286170439)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(22169082598170359)
,p_default_dialogr_template=>wwv_flow_imp.id(22166277348170358)
,p_default_option_label=>wwv_flow_imp.id(22302690002170444)
,p_default_required_label=>wwv_flow_imp.id(22303946193170445)
,p_default_navbar_list_template=>wwv_flow_imp.id(22290373647170434)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/22.2/')
,p_files_version=>79
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
