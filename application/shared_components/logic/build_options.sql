prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.3'
,p_default_workspace_id=>22028075290766633
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SVIL_APEX'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22128992101170303)
,p_build_option_name=>'Commentato'
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22332278197170498)
,p_build_option_name=>'Funzione: Controllo dell''accesso'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorpora un ruolo basato sull''autenticazione utente nell''applicazione e consente di gestire i mapping dei nomi utente ai ruoli applicazione.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22332330866170498)
,p_build_option_name=>unistr('Funzione: Generazione report su attivit\00E0')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>unistr('Include numerosi report e grafici sull''attivit\00E0 dell''utente finale.')
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22332406152170498)
,p_build_option_name=>'Funzione: Feedback'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Fornisce un meccanismo per gli utenti finali in modo che possano inviare i propri commenti agli amministratori e agli sviluppatori delle applicazioni.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22332648590170498)
,p_build_option_name=>'Funzione: Opzioni di configurazione'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>unistr('Consente agli amministratori dell''applicazione di abilitare o disabilitare le funzionalit\00E0 specifiche associate a un''opzione di creazione di Oracle APEX dall''applicazione.')
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22332972152170498)
,p_build_option_name=>'Funzione: Pagina delle informazioni'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'Pagina Informazioni sull''applicazione.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22333027589170498)
,p_build_option_name=>'Funzione: Selezione stile tema'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Consente agli amministratori di selezionare una combinazione di colori predefinita (stile tema) per l''applicazione. Gli amministratori possono inoltre decidere di autorizzare gli utenti finali a scegliere uno stile di tema personalizzato. '
);
wwv_flow_imp.component_end;
end;
/
