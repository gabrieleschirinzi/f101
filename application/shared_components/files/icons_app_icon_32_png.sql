prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.3'
,p_default_workspace_id=>22028075290766633
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SVIL_APEX'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000001064944415458476334987FFB3FC30002C651078C86C068080C99109063FCC0602D2F84B3C43879F739C3ADEFEC0C2C3C022495';
wwv_flow_imp.g_varchar2_table(2) := '2A449703918A4C0CF14692380DCFDD748B8193838DE1DCF3AF243982AA0ED0951767B8F3F23D498EA09A03DAF7DF6378F6F90F3884FEFEF8C2708F599CA8A8A09A03906D5B78EE39C3F2FBFF68EF80638F3E3358C9F16258441707ECBAF31E6CB19B8A20';
wwv_flow_imp.g_varchar2_table(3) := 'C3C2B3CFE18E88379664A0A9033AF7DF635015E365E06167015B0E02200B6100945368EA802FBFFE315C7CF195C11A4BD0C31C4153071093B2E8E680D144389A087125489A24427075AC80BB3A4676CCD1871F191EFDC32C21B13998E8BA8098EC478E9A';
wwv_flow_imp.g_varchar2_table(4) := '51078C86C068080C78080000BD7BE641A139072F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(22331491219170495)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
