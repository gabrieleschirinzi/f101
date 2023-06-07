prompt --application/shared_components/user_interface/lovs/periodicità_contratti_statica
begin
--   Manifest
--     PERIODICITÀ CONTRATTI [STATICA]
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.3'
,p_default_workspace_id=>22028075290766633
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SVIL_APEX'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(58418485835606986)
,p_lov_name=>unistr('PERIODICIT\00C0 CONTRATTI [STATICA]')
,p_lov_query=>'.'||wwv_flow_imp.id(58418485835606986)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(58418795057606988)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Annuale'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(58419190557606989)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Semetrale'
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(58419500996606989)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Trimestrale'
,p_lov_return_value=>'T'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(58419921460606989)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Bimestrale'
,p_lov_return_value=>'B'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(58420376375606990)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Mensile'
,p_lov_return_value=>'M'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(58420726014606990)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Unica/Totale'
,p_lov_return_value=>'U'
);
wwv_flow_imp.component_end;
end;
/
