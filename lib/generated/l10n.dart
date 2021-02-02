// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `assets/images/`
  String get asset_images {
    return Intl.message(
      'assets/images/',
      name: 'asset_images',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_icon.png`
  String get image_icon_hive {
    return Intl.message(
      'assets/images/hive_icon.png',
      name: 'image_icon_hive',
      desc: '',
      args: [],
    );
  }

  /// `Hive Job Control`
  String get app_title {
    return Intl.message(
      'Hive Job Control',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Guardar`
  String get save {
    return Intl.message(
      'Guardar',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Editar`
  String get edit {
    return Intl.message(
      'Editar',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar`
  String get delete {
    return Intl.message(
      'Eliminar',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Descargar`
  String get download {
    return Intl.message(
      'Descargar',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Aplicar`
  String get filter {
    return Intl.message(
      'Aplicar',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Copiar enlace`
  String get copy {
    return Intl.message(
      'Copiar enlace',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `Enviar`
  String get send {
    return Intl.message(
      'Enviar',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Compartir en...`
  String get share {
    return Intl.message(
      'Compartir en...',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Oh, oh, algo ha fallado...`
  String get default_error {
    return Intl.message(
      'Oh, oh, algo ha fallado...',
      name: 'default_error',
      desc: '',
      args: [],
    );
  }

  /// `Error inesperado`
  String get unknown_error {
    return Intl.message(
      'Error inesperado',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `Tutorial`
  String get tutorial {
    return Intl.message(
      'Tutorial',
      name: 'tutorial',
      desc: '',
      args: [],
    );
  }

  /// `Saltar tutorial`
  String get skip_tutorial {
    return Intl.message(
      'Saltar tutorial',
      name: 'skip_tutorial',
      desc: '',
      args: [],
    );
  }

  /// `Monitor`
  String get monitor {
    return Intl.message(
      'Monitor',
      name: 'monitor',
      desc: '',
      args: [],
    );
  }

  /// `Historial`
  String get record {
    return Intl.message(
      'Historial',
      name: 'record',
      desc: '',
      args: [],
    );
  }

  /// `Minimo`
  String get minimum {
    return Intl.message(
      'Minimo',
      name: 'minimum',
      desc: '',
      args: [],
    );
  }

  /// `Media`
  String get average {
    return Intl.message(
      'Media',
      name: 'average',
      desc: '',
      args: [],
    );
  }

  /// `Maximo`
  String get maximum {
    return Intl.message(
      'Maximo',
      name: 'maximum',
      desc: '',
      args: [],
    );
  }

  /// `Generar informe`
  String get generate_report {
    return Intl.message(
      'Generar informe',
      name: 'generate_report',
      desc: '',
      args: [],
    );
  }

  /// `Idioma`
  String get language {
    return Intl.message(
      'Idioma',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Idioma del sistema`
  String get systemLanguage {
    return Intl.message(
      'Idioma del sistema',
      name: 'systemLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Te permite obtener la información mas relevante de un solo vistazo mediante resúmenes, graficas y estadísticas.`
  String get general_tutorial_monitor {
    return Intl.message(
      'Te permite obtener la información mas relevante de un solo vistazo mediante resúmenes, graficas y estadísticas.',
      name: 'general_tutorial_monitor',
      desc: '',
      args: [],
    );
  }

  /// `En la pestaña Historial, pobras encontrar un listado de todos los documentos generados, por defecto estos vienen ordenados por fecha de tal modo que los elementos mas recientes se muestran en primer lugar. Puedes utilizar la herramienta 'Filtros' para ordenarlos y filtrarlos.`
  String get general_tutorial_record {
    return Intl.message(
      'En la pestaña Historial, pobras encontrar un listado de todos los documentos generados, por defecto estos vienen ordenados por fecha de tal modo que los elementos mas recientes se muestran en primer lugar. Puedes utilizar la herramienta \'Filtros\' para ordenarlos y filtrarlos.',
      name: 'general_tutorial_record',
      desc: '',
      args: [],
    );
  }

  /// `Utiliza los filtros para encontrar los documentos que estas buscando y obtener estadísticas detalladas de los elementos encontrados.`
  String get general_tutorial_filter {
    return Intl.message(
      'Utiliza los filtros para encontrar los documentos que estas buscando y obtener estadísticas detalladas de los elementos encontrados.',
      name: 'general_tutorial_filter',
      desc: '',
      args: [],
    );
  }

  /// `Filtrar`
  String get filter_appbar_filter_title {
    return Intl.message(
      'Filtrar',
      name: 'filter_appbar_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Ordenar`
  String get filter_appbar_order_title {
    return Intl.message(
      'Ordenar',
      name: 'filter_appbar_order_title',
      desc: '',
      args: [],
    );
  }

  /// `Ver`
  String get filter_appbar_view_title {
    return Intl.message(
      'Ver',
      name: 'filter_appbar_view_title',
      desc: '',
      args: [],
    );
  }

  /// `user`
  String get user_title {
    return Intl.message(
      'user',
      name: 'user_title',
      desc: '',
      args: [],
    );
  }

  /// `Perfil`
  String get user_profile_title {
    return Intl.message(
      'Perfil',
      name: 'user_profile_title',
      desc: '',
      args: [],
    );
  }

  /// `Editar perfil`
  String get user_edit_profile {
    return Intl.message(
      'Editar perfil',
      name: 'user_edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Cerrar sesión`
  String get user_signout {
    return Intl.message(
      'Cerrar sesión',
      name: 'user_signout',
      desc: '',
      args: [],
    );
  }

  /// `Perfil`
  String get profile_form_title {
    return Intl.message(
      'Perfil',
      name: 'profile_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Nombre`
  String get profile_form_name_holder_label {
    return Intl.message(
      'Nombre',
      name: 'profile_form_name_holder_label',
      desc: '',
      args: [],
    );
  }

  /// `Nombre`
  String get profile_form_name_holder_hint {
    return Intl.message(
      'Nombre',
      name: 'profile_form_name_holder_hint',
      desc: '',
      args: [],
    );
  }

  /// `Nombre invalido`
  String get profile_form_name_holder_error {
    return Intl.message(
      'Nombre invalido',
      name: 'profile_form_name_holder_error',
      desc: '',
      args: [],
    );
  }

  /// `Primer apellido`
  String get profile_form_firstname_holder_label {
    return Intl.message(
      'Primer apellido',
      name: 'profile_form_firstname_holder_label',
      desc: '',
      args: [],
    );
  }

  /// `Primer apellido`
  String get profile_form_firstname_holder_hint {
    return Intl.message(
      'Primer apellido',
      name: 'profile_form_firstname_holder_hint',
      desc: '',
      args: [],
    );
  }

  /// `Primer apellido invalido`
  String get profile_form_firstname_holder_error {
    return Intl.message(
      'Primer apellido invalido',
      name: 'profile_form_firstname_holder_error',
      desc: '',
      args: [],
    );
  }

  /// `Segundo apellido`
  String get profile_form_secondname_holder_label {
    return Intl.message(
      'Segundo apellido',
      name: 'profile_form_secondname_holder_label',
      desc: '',
      args: [],
    );
  }

  /// `Segundo apellido`
  String get profile_form_secondname_holder_hint {
    return Intl.message(
      'Segundo apellido',
      name: 'profile_form_secondname_holder_hint',
      desc: '',
      args: [],
    );
  }

  /// `Segundo apellido invalido`
  String get profile_form_secondname_holder_error {
    return Intl.message(
      'Segundo apellido invalido',
      name: 'profile_form_secondname_holder_error',
      desc: '',
      args: [],
    );
  }

  /// `Apodo`
  String get profile_form_nickname_holder_label {
    return Intl.message(
      'Apodo',
      name: 'profile_form_nickname_holder_label',
      desc: '',
      args: [],
    );
  }

  /// `Apodo`
  String get profile_form_nickname_holder_hint {
    return Intl.message(
      'Apodo',
      name: 'profile_form_nickname_holder_hint',
      desc: '',
      args: [],
    );
  }

  /// `Apodo invalido`
  String get profile_form_nickname_holder_error {
    return Intl.message(
      'Apodo invalido',
      name: 'profile_form_nickname_holder_error',
      desc: '',
      args: [],
    );
  }

  /// `Genero`
  String get profile_form_gender_holder {
    return Intl.message(
      'Genero',
      name: 'profile_form_gender_holder',
      desc: '',
      args: [],
    );
  }

  /// `Configuración`
  String get user_settings_title {
    return Intl.message(
      'Configuración',
      name: 'user_settings_title',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro?`
  String get user_settings_close_confirmation_seasion {
    return Intl.message(
      '¿Estas seguro?',
      name: 'user_settings_close_confirmation_seasion',
      desc: '',
      args: [],
    );
  }

  /// `Notificaciones`
  String get notifications_title {
    return Intl.message(
      'Notificaciones',
      name: 'notifications_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_list_empty.svg`
  String get notifications_assets_images_loading {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_list_empty.svg',
      name: 'notifications_assets_images_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/no_data.svg`
  String get notifications_assets_images_empty {
    return Intl.message(
      'assets/images/hive_job_control/no_data.svg',
      name: 'notifications_assets_images_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/error.svg`
  String get notifications_assets_images_error {
    return Intl.message(
      'assets/images/hive_job_control/error.svg',
      name: 'notifications_assets_images_error',
      desc: '',
      args: [],
    );
  }

  /// `Cargando notificaciones`
  String get notifications_list_loading {
    return Intl.message(
      'Cargando notificaciones',
      name: 'notifications_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `No hay notificaciones`
  String get notifications_list_empty {
    return Intl.message(
      'No hay notificaciones',
      name: 'notifications_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get notifications_list_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'notifications_list_error',
      desc: '',
      args: [],
    );
  }

  /// `Cuenta`
  String get settings_account_title {
    return Intl.message(
      'Cuenta',
      name: 'settings_account_title',
      desc: '',
      args: [],
    );
  }

  /// `Cambiar contraseña`
  String get settings_update_password {
    return Intl.message(
      'Cambiar contraseña',
      name: 'settings_update_password',
      desc: '',
      args: [],
    );
  }

  /// `Cuentas conectadas`
  String get settings_connected_accounts {
    return Intl.message(
      'Cuentas conectadas',
      name: 'settings_connected_accounts',
      desc: '',
      args: [],
    );
  }

  /// `Dispositivos`
  String get settings_devices {
    return Intl.message(
      'Dispositivos',
      name: 'settings_devices',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_core/devices/devices_empty.svg`
  String get settings_devices_assets_images_empty {
    return Intl.message(
      'assets/images/hive_core/devices/devices_empty.svg',
      name: 'settings_devices_assets_images_empty',
      desc: '',
      args: [],
    );
  }

  /// `Cargando dispositivos`
  String get settings_devices_list_loading {
    return Intl.message(
      'Cargando dispositivos',
      name: 'settings_devices_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón dispositivos! \n\n😢`
  String get settings_devices_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón dispositivos! \n\n😢',
      name: 'settings_devices_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Métodos de pago`
  String get settings_payment_methods {
    return Intl.message(
      'Métodos de pago',
      name: 'settings_payment_methods',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar cuenta`
  String get settings_delete_account {
    return Intl.message(
      'Eliminar cuenta',
      name: 'settings_delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Applicatión`
  String get settings_application_title {
    return Intl.message(
      'Applicatión',
      name: 'settings_application_title',
      desc: '',
      args: [],
    );
  }

  /// `Tema`
  String get settings_application_theme {
    return Intl.message(
      'Tema',
      name: 'settings_application_theme',
      desc: '',
      args: [],
    );
  }

  /// `Lenguaje`
  String get settings_application_locale {
    return Intl.message(
      'Lenguaje',
      name: 'settings_application_locale',
      desc: '',
      args: [],
    );
  }

  /// `Notificaciones`
  String get settings_application_notifications {
    return Intl.message(
      'Notificaciones',
      name: 'settings_application_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get settings_application_chat {
    return Intl.message(
      'Chat',
      name: 'settings_application_chat',
      desc: '',
      args: [],
    );
  }

  /// ` assets/images/hive_core/chat/chat_empty.svg`
  String get settings_application_chat_assets_images_empty {
    return Intl.message(
      ' assets/images/hive_core/chat/chat_empty.svg',
      name: 'settings_application_chat_assets_images_empty',
      desc: '',
      args: [],
    );
  }

  /// `Cargando chats`
  String get settings_application_chat_list_loading {
    return Intl.message(
      'Cargando chats',
      name: 'settings_application_chat_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón chats! \n\n😢`
  String get settings_application_chat_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón chats! \n\n😢',
      name: 'settings_application_chat_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Descargas`
  String get settings_application_downloads {
    return Intl.message(
      'Descargas',
      name: 'settings_application_downloads',
      desc: '',
      args: [],
    );
  }

  /// `Reproducción`
  String get settings_application_reproduction {
    return Intl.message(
      'Reproducción',
      name: 'settings_application_reproduction',
      desc: '',
      args: [],
    );
  }

  /// `Ayuda`
  String get settings_help_title {
    return Intl.message(
      'Ayuda',
      name: 'settings_help_title',
      desc: '',
      args: [],
    );
  }

  /// `Preguntas frecuentes`
  String get settings_help_frequent_questions {
    return Intl.message(
      'Preguntas frecuentes',
      name: 'settings_help_frequent_questions',
      desc: '',
      args: [],
    );
  }

  /// `Contactenos`
  String get settings_help_contact {
    return Intl.message(
      'Contactenos',
      name: 'settings_help_contact',
      desc: '',
      args: [],
    );
  }

  /// `Condiciones y privacidad`
  String get settings_help_conditions {
    return Intl.message(
      'Condiciones y privacidad',
      name: 'settings_help_conditions',
      desc: '',
      args: [],
    );
  }

  /// `info. de la aplicación`
  String get settings_help_info {
    return Intl.message(
      'info. de la aplicación',
      name: 'settings_help_info',
      desc: '',
      args: [],
    );
  }

  /// `Sing in`
  String get login_form_title {
    return Intl.message(
      'Sing in',
      name: 'login_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando usuario`
  String get login_form_loading {
    return Intl.message(
      'Cargando usuario',
      name: 'login_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `Usuario o contraseña incorrectos`
  String get login_form_error {
    return Intl.message(
      'Usuario o contraseña incorrectos',
      name: 'login_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Usuario`
  String get login_form_username_holder_label {
    return Intl.message(
      'Usuario',
      name: 'login_form_username_holder_label',
      desc: '',
      args: [],
    );
  }

  /// `you@example.com`
  String get login_form_username_holder_hint {
    return Intl.message(
      'you@example.com',
      name: 'login_form_username_holder_hint',
      desc: '',
      args: [],
    );
  }

  /// `Usuario invalido`
  String get login_form_username_holder_error {
    return Intl.message(
      'Usuario invalido',
      name: 'login_form_username_holder_error',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get login_form_password_holder_label {
    return Intl.message(
      'Contraseña',
      name: 'login_form_password_holder_label',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get login_form_password_holder_hint {
    return Intl.message(
      'Contraseña',
      name: 'login_form_password_holder_hint',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña invalida`
  String get login_form_password_holder_error {
    return Intl.message(
      'Contraseña invalida',
      name: 'login_form_password_holder_error',
      desc: '',
      args: [],
    );
  }

  /// `Registrarme`
  String get login_form_register_button {
    return Intl.message(
      'Registrarme',
      name: 'login_form_register_button',
      desc: '',
      args: [],
    );
  }

  /// `He olvidado mi contraseña`
  String get login_form_recover_password_button {
    return Intl.message(
      'He olvidado mi contraseña',
      name: 'login_form_recover_password_button',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_form_login_button {
    return Intl.message(
      'Login',
      name: 'login_form_login_button',
      desc: '',
      args: [],
    );
  }

  /// `Información de contacto`
  String get social_form_title {
    return Intl.message(
      'Información de contacto',
      name: 'social_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Telefono`
  String get social_form_holder_phone {
    return Intl.message(
      'Telefono',
      name: 'social_form_holder_phone',
      desc: '',
      args: [],
    );
  }

  /// `Correo electronico`
  String get social_form_holder_email {
    return Intl.message(
      'Correo electronico',
      name: 'social_form_holder_email',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get social_form_holder_facebook {
    return Intl.message(
      'Facebook',
      name: 'social_form_holder_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Instagram`
  String get social_form_holder_instagram {
    return Intl.message(
      'Instagram',
      name: 'social_form_holder_instagram',
      desc: '',
      args: [],
    );
  }

  /// `Twitter`
  String get social_form_holder_twitter {
    return Intl.message(
      'Twitter',
      name: 'social_form_holder_twitter',
      desc: '',
      args: [],
    );
  }

  /// `Telefono no valido`
  String get social_form_holder_phone_invalid {
    return Intl.message(
      'Telefono no valido',
      name: 'social_form_holder_phone_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Correo electronico no valido`
  String get social_form_holder_email_invalid {
    return Intl.message(
      'Correo electronico no valido',
      name: 'social_form_holder_email_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Facebook no valido`
  String get social_form_holder_facebook_invalid {
    return Intl.message(
      'Facebook no valido',
      name: 'social_form_holder_facebook_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Instagram no valido`
  String get social_form_holder_instagram_invalid {
    return Intl.message(
      'Instagram no valido',
      name: 'social_form_holder_instagram_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Twitter no valido`
  String get social_form_holder_twitter_invalid {
    return Intl.message(
      'Twitter no valido',
      name: 'social_form_holder_twitter_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Factura`
  String get bill_title {
    return Intl.message(
      'Factura',
      name: 'bill_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/bill/bill_list_empty.svg`
  String get bill_assets_images_list_empty {
    return Intl.message(
      'assets/images/hive_job_control/bill/bill_list_empty.svg',
      name: 'bill_assets_images_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/bill/bill_list_error.svg`
  String get bill_assets_images_list_error {
    return Intl.message(
      'assets/images/hive_job_control/bill/bill_list_error.svg',
      name: 'bill_assets_images_list_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/bill/bill_list_loading.svg`
  String get bill_assets_images_list_loading {
    return Intl.message(
      'assets/images/hive_job_control/bill/bill_list_loading.svg',
      name: 'bill_assets_images_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/bill/bill_monitor.svg`
  String get bill_assets_images_monitor {
    return Intl.message(
      'assets/images/hive_job_control/bill/bill_monitor.svg',
      name: 'bill_assets_images_monitor',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/bill/bill_monitor_error.svg`
  String get bill_assets_images_monitor_error {
    return Intl.message(
      'assets/images/hive_job_control/bill/bill_monitor_error.svg',
      name: 'bill_assets_images_monitor_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/bill/bill_monitor_loading.svg`
  String get bill_assets_images_monitor_loading {
    return Intl.message(
      'assets/images/hive_job_control/bill/bill_monitor_loading.svg',
      name: 'bill_assets_images_monitor_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/bill/bill_screen_error.svg`
  String get bill_assets_images_screen_error {
    return Intl.message(
      'assets/images/hive_job_control/bill/bill_screen_error.svg',
      name: 'bill_assets_images_screen_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/bill/bill_screen_loading.svg`
  String get bill_assets_images_screen_loading {
    return Intl.message(
      'assets/images/hive_job_control/bill/bill_screen_loading.svg',
      name: 'bill_assets_images_screen_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/bill/bill_table_empty.svg`
  String get bill_assets_images_table_empty {
    return Intl.message(
      'assets/images/hive_job_control/bill/bill_table_empty.svg',
      name: 'bill_assets_images_table_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/bill/bill_table_error.svg`
  String get bill_assets_images_table_error {
    return Intl.message(
      'assets/images/hive_job_control/bill/bill_table_error.svg',
      name: 'bill_assets_images_table_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/bill/bill_table_loading.svg`
  String get bill_assets_images_table_loading {
    return Intl.message(
      'assets/images/hive_job_control/bill/bill_table_loading.svg',
      name: 'bill_assets_images_table_loading',
      desc: '',
      args: [],
    );
  }

  /// `Encuentra tu factura`
  String get bill_filter_title {
    return Intl.message(
      'Encuentra tu factura',
      name: 'bill_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get bill_filter_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'bill_filter_error',
      desc: '',
      args: [],
    );
  }

  /// `Filtrando factura`
  String get bill_filter_loading {
    return Intl.message(
      'Filtrando factura',
      name: 'bill_filter_loading',
      desc: '',
      args: [],
    );
  }

  /// `Empresa`
  String get bill_filter_holder_business {
    return Intl.message(
      'Empresa',
      name: 'bill_filter_holder_business',
      desc: '',
      args: [],
    );
  }

  /// `Estadisiticas de facturas`
  String get bill_statistics_title {
    return Intl.message(
      'Estadisiticas de facturas',
      name: 'bill_statistics_title',
      desc: '',
      args: [],
    );
  }

  /// `Calculando estadisticas...`
  String get bill_statistics_loading {
    return Intl.message(
      'Calculando estadisticas...',
      name: 'bill_statistics_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se pudo calcular las estadisticas! \n\n😢`
  String get bill_statistics_error {
    return Intl.message(
      '¡Vaya no se pudo calcular las estadisticas! \n\n😢',
      name: 'bill_statistics_error',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural,  one{Factura} other{Facturas}}`
  String bill_statistics_length(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Factura',
      other: 'Facturas',
      name: 'bill_statistics_length',
      desc: '',
      args: [howMany],
    );
  }

  /// `Facturas`
  String get bill_list_title {
    return Intl.message(
      'Facturas',
      name: 'bill_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando factuas`
  String get bill_list_loading {
    return Intl.message(
      'Cargando factuas',
      name: 'bill_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón facturas! \n\n😢`
  String get bill_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón facturas! \n\n😢',
      name: 'bill_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Nueva factura`
  String get bill_form_title {
    return Intl.message(
      'Nueva factura',
      name: 'bill_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get bill_form_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'bill_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Salvando factura`
  String get bill_form_loading {
    return Intl.message(
      'Salvando factura',
      name: 'bill_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `Cantidad`
  String get bill_form_holder_quantity {
    return Intl.message(
      'Cantidad',
      name: 'bill_form_holder_quantity',
      desc: '',
      args: [],
    );
  }

  /// `Concepto`
  String get bill_form_holder_concept {
    return Intl.message(
      'Concepto',
      name: 'bill_form_holder_concept',
      desc: '',
      args: [],
    );
  }

  /// `Editar factura`
  String get bill_item_settings_edit {
    return Intl.message(
      'Editar factura',
      name: 'bill_item_settings_edit',
      desc: '',
      args: [],
    );
  }

  /// `Duplicar factura`
  String get bill_item_settings_double {
    return Intl.message(
      'Duplicar factura',
      name: 'bill_item_settings_double',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar factura`
  String get bill_item_settings_delete {
    return Intl.message(
      'Eliminar factura',
      name: 'bill_item_settings_delete',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro de que deseas eliminar la factura?`
  String get bill_item_settings_delete_confirm {
    return Intl.message(
      '¿Estas seguro de que deseas eliminar la factura?',
      name: 'bill_item_settings_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Cuando tengas un gasto asociado a una empresa, puedes registrarlo y generar una factura a la entidad correspondiente, de esta manera tendrás a acceso a todas tus facturas en cualquier momento y lugar de una manera rápida y totalmente ordenada. La función 'Facturas' también te permite llevar un control de las facturas que solicitaste a un determinado proveedor o empresa y cuales fueron cobradas o no. Lo que te permite tener un mayor control financiero de tus gastos.`
  String get bill_tutorial_description {
    return Intl.message(
      'Cuando tengas un gasto asociado a una empresa, puedes registrarlo y generar una factura a la entidad correspondiente, de esta manera tendrás a acceso a todas tus facturas en cualquier momento y lugar de una manera rápida y totalmente ordenada. La función \'Facturas\' también te permite llevar un control de las facturas que solicitaste a un determinado proveedor o empresa y cuales fueron cobradas o no. Lo que te permite tener un mayor control financiero de tus gastos.',
      name: 'bill_tutorial_description',
      desc: '',
      args: [],
    );
  }

  /// `Empresa`
  String get business_title {
    return Intl.message(
      'Empresa',
      name: 'business_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/business/business_list_empty.svg`
  String get business_assets_images_list_empty {
    return Intl.message(
      'assets/images/hive_job_control/business/business_list_empty.svg',
      name: 'business_assets_images_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/business/business_list_error.svg`
  String get business_assets_images_list_error {
    return Intl.message(
      'assets/images/hive_job_control/business/business_list_error.svg',
      name: 'business_assets_images_list_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/business/business_list_loading.svg`
  String get business_assets_images_list_loading {
    return Intl.message(
      'assets/images/hive_job_control/business/business_list_loading.svg',
      name: 'business_assets_images_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/business/business_screen_error.svg`
  String get business_assets_images_screen_error {
    return Intl.message(
      'assets/images/hive_job_control/business/business_screen_error.svg',
      name: 'business_assets_images_screen_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/business/business_screen_loading.svg`
  String get business_assets_images_screen_loading {
    return Intl.message(
      'assets/images/hive_job_control/business/business_screen_loading.svg',
      name: 'business_assets_images_screen_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/business/business_table_empty.svg`
  String get business_assets_images_table_empty {
    return Intl.message(
      'assets/images/hive_job_control/business/business_table_empty.svg',
      name: 'business_assets_images_table_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/business/business_table_error.svg`
  String get business_assets_images_table_error {
    return Intl.message(
      'assets/images/hive_job_control/business/business_table_error.svg',
      name: 'business_assets_images_table_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/business/business_table_loading.svg`
  String get business_assets_images_table_loading {
    return Intl.message(
      'assets/images/hive_job_control/business/business_table_loading.svg',
      name: 'business_assets_images_table_loading',
      desc: '',
      args: [],
    );
  }

  /// `Empresas`
  String get business_list_title {
    return Intl.message(
      'Empresas',
      name: 'business_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando empresas`
  String get business_list_loading {
    return Intl.message(
      'Cargando empresas',
      name: 'business_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón empresas! \n\n😢`
  String get business_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón empresas! \n\n😢',
      name: 'business_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Encuentra tu empresa`
  String get business_filter_title {
    return Intl.message(
      'Encuentra tu empresa',
      name: 'business_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get business_filter_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'business_filter_error',
      desc: '',
      args: [],
    );
  }

  /// `Filtrando empresas`
  String get business_filter_loading {
    return Intl.message(
      'Filtrando empresas',
      name: 'business_filter_loading',
      desc: '',
      args: [],
    );
  }

  /// `Buscar: Nombre, CID...`
  String get business_filter_holder_search {
    return Intl.message(
      'Buscar: Nombre, CID...',
      name: 'business_filter_holder_search',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural,  one{1 empresa} other{{howMany} empresas}}`
  String business_statistics_length(num howMany) {
    return Intl.plural(
      howMany,
      one: '1 empresa',
      other: '$howMany empresas',
      name: 'business_statistics_length',
      desc: '',
      args: [howMany],
    );
  }

  /// `Nueva empresa`
  String get business_form_title_new {
    return Intl.message(
      'Nueva empresa',
      name: 'business_form_title_new',
      desc: '',
      args: [],
    );
  }

  /// `Editar empresa`
  String get business_form_title_edit {
    return Intl.message(
      'Editar empresa',
      name: 'business_form_title_edit',
      desc: '',
      args: [],
    );
  }

  /// `Datos generales`
  String get business_form_title_steep_1 {
    return Intl.message(
      'Datos generales',
      name: 'business_form_title_steep_1',
      desc: '',
      args: [],
    );
  }

  /// `Información de contacto`
  String get business_form_title_steep_2 {
    return Intl.message(
      'Información de contacto',
      name: 'business_form_title_steep_2',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get business_form_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'business_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Salvando empresa`
  String get business_form_loading {
    return Intl.message(
      'Salvando empresa',
      name: 'business_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `URL del logotipo de la empresa`
  String get business_form_holder_url_logo {
    return Intl.message(
      'URL del logotipo de la empresa',
      name: 'business_form_holder_url_logo',
      desc: '',
      args: [],
    );
  }

  /// `Nombre de la empresa`
  String get business_form_holder_name {
    return Intl.message(
      'Nombre de la empresa',
      name: 'business_form_holder_name',
      desc: '',
      args: [],
    );
  }

  /// `Descripción`
  String get business_form_holder_description {
    return Intl.message(
      'Descripción',
      name: 'business_form_holder_description',
      desc: '',
      args: [],
    );
  }

  /// `CID`
  String get business_form_holder_cid {
    return Intl.message(
      'CID',
      name: 'business_form_holder_cid',
      desc: '',
      args: [],
    );
  }

  /// `Dirección de la pagina web`
  String get business_form_holder_webUrl {
    return Intl.message(
      'Dirección de la pagina web',
      name: 'business_form_holder_webUrl',
      desc: '',
      args: [],
    );
  }

  /// `URL invalida`
  String get business_form_error_holder_url_logo {
    return Intl.message(
      'URL invalida',
      name: 'business_form_error_holder_url_logo',
      desc: '',
      args: [],
    );
  }

  /// `Nombre invalido`
  String get business_form_error_holder_name {
    return Intl.message(
      'Nombre invalido',
      name: 'business_form_error_holder_name',
      desc: '',
      args: [],
    );
  }

  /// `Descripción invalida`
  String get business_form_error_holder_description {
    return Intl.message(
      'Descripción invalida',
      name: 'business_form_error_holder_description',
      desc: '',
      args: [],
    );
  }

  /// `CID invalido`
  String get business_form_error_holder_cid {
    return Intl.message(
      'CID invalido',
      name: 'business_form_error_holder_cid',
      desc: '',
      args: [],
    );
  }

  /// `Dirección de la pagina web invalida`
  String get business_form_error_holder_webUrl {
    return Intl.message(
      'Dirección de la pagina web invalida',
      name: 'business_form_error_holder_webUrl',
      desc: '',
      args: [],
    );
  }

  /// `Editar empresa`
  String get business_menu_item_edit {
    return Intl.message(
      'Editar empresa',
      name: 'business_menu_item_edit',
      desc: '',
      args: [],
    );
  }

  /// `Duplicar empresa`
  String get business_menu_item_double {
    return Intl.message(
      'Duplicar empresa',
      name: 'business_menu_item_double',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar empresa`
  String get business_menu_item_delete {
    return Intl.message(
      'Eliminar empresa',
      name: 'business_menu_item_delete',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro de que deseas eliminar la empresa?`
  String get business_menu_item_delete_confirm {
    return Intl.message(
      '¿Estas seguro de que deseas eliminar la empresa?',
      name: 'business_menu_item_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// `CID Copied to Clipboard`
  String get business_item_copy_cid {
    return Intl.message(
      'CID Copied to Clipboard',
      name: 'business_item_copy_cid',
      desc: '',
      args: [],
    );
  }

  /// `Registra las empresas con las que tienes una relación laboral, para tener siempre a mano sus datos de contacto (Teléfonos, correos electrónicos, CID...). Al tener guardadas tus empresas puedes imputar tus facturas, nominas, horas, km.. Lo que te permite establecer una relación entre la empresa y las actividades relacionadas con dicha entidad.`
  String get business_tutorial_description {
    return Intl.message(
      'Registra las empresas con las que tienes una relación laboral, para tener siempre a mano sus datos de contacto (Teléfonos, correos electrónicos, CID...). Al tener guardadas tus empresas puedes imputar tus facturas, nominas, horas, km.. Lo que te permite establecer una relación entre la empresa y las actividades relacionadas con dicha entidad.',
      name: 'business_tutorial_description',
      desc: '',
      args: [],
    );
  }

  /// `Contrato`
  String get contract_title {
    return Intl.message(
      'Contrato',
      name: 'contract_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/contract/contract_list_empty.svg`
  String get contract_assets_images_list_empty {
    return Intl.message(
      'assets/images/hive_job_control/contract/contract_list_empty.svg',
      name: 'contract_assets_images_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/contract/contract_list_error.svg`
  String get contract_assets_images_list_error {
    return Intl.message(
      'assets/images/hive_job_control/contract/contract_list_error.svg',
      name: 'contract_assets_images_list_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/contract/contract_list_loading.svg`
  String get contract_assets_images_list_loading {
    return Intl.message(
      'assets/images/hive_job_control/contract/contract_list_loading.svg',
      name: 'contract_assets_images_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/contract/contract_screen_error.svg`
  String get contract_assets_images_screen_error {
    return Intl.message(
      'assets/images/hive_job_control/contract/contract_screen_error.svg',
      name: 'contract_assets_images_screen_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/contract/contract_screen_loading.svg`
  String get contract_assets_images_screen_loading {
    return Intl.message(
      'assets/images/hive_job_control/contract/contract_screen_loading.svg',
      name: 'contract_assets_images_screen_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/contract/contract_table_empty.svg`
  String get contract_assets_images_table_empty {
    return Intl.message(
      'assets/images/hive_job_control/contract/contract_table_empty.svg',
      name: 'contract_assets_images_table_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/contract/contract_table_error.svg`
  String get contract_assets_images_table_error {
    return Intl.message(
      'assets/images/hive_job_control/contract/contract_table_error.svg',
      name: 'contract_assets_images_table_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/contract/contract_table_loading.svg`
  String get contract_assets_images_table_loading {
    return Intl.message(
      'assets/images/hive_job_control/contract/contract_table_loading.svg',
      name: 'contract_assets_images_table_loading',
      desc: '',
      args: [],
    );
  }

  /// `Encuentra tu contrato`
  String get contract_filter_title {
    return Intl.message(
      'Encuentra tu contrato',
      name: 'contract_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get contract_filter_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'contract_filter_error',
      desc: '',
      args: [],
    );
  }

  /// `Filtrando contractos`
  String get contract_filter_loading {
    return Intl.message(
      'Filtrando contractos',
      name: 'contract_filter_loading',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural,  one{1 contracto} other{{howMany} contratos}}`
  String contract_statistics_length(num howMany) {
    return Intl.plural(
      howMany,
      one: '1 contracto',
      other: '$howMany contratos',
      name: 'contract_statistics_length',
      desc: '',
      args: [howMany],
    );
  }

  /// `Contratos`
  String get contract_list_title {
    return Intl.message(
      'Contratos',
      name: 'contract_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando contratos`
  String get contract_list_loading {
    return Intl.message(
      'Cargando contratos',
      name: 'contract_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón contratos! \n\n😢`
  String get contract_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón contratos! \n\n😢',
      name: 'contract_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Nuevo contrato`
  String get contract_form_title {
    return Intl.message(
      'Nuevo contrato',
      name: 'contract_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get contract_form_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'contract_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Salvando contrato`
  String get contract_form_loading {
    return Intl.message(
      'Salvando contrato',
      name: 'contract_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `Professional category`
  String get contract_form_holder_professional_category {
    return Intl.message(
      'Professional category',
      name: 'contract_form_holder_professional_category',
      desc: '',
      args: [],
    );
  }

  /// `Precio hora base`
  String get contract_form_holder_base_hour_price {
    return Intl.message(
      'Precio hora base',
      name: 'contract_form_holder_base_hour_price',
      desc: '',
      args: [],
    );
  }

  /// `Precio hora extra`
  String get contract_form_holder_extra_hour_price {
    return Intl.message(
      'Precio hora extra',
      name: 'contract_form_holder_extra_hour_price',
      desc: '',
      args: [],
    );
  }

  /// `Precio hora nocturna`
  String get contract_form_holder_night_time_price {
    return Intl.message(
      'Precio hora nocturna',
      name: 'contract_form_holder_night_time_price',
      desc: '',
      args: [],
    );
  }

  /// `Precio hora de viaje`
  String get contract_form_holder_travel_time {
    return Intl.message(
      'Precio hora de viaje',
      name: 'contract_form_holder_travel_time',
      desc: '',
      args: [],
    );
  }

  /// `Precio km`
  String get contract_form_holder_km_price {
    return Intl.message(
      'Precio km',
      name: 'contract_form_holder_km_price',
      desc: '',
      args: [],
    );
  }

  /// `Precio dieta`
  String get contract_form_holder_diet_price {
    return Intl.message(
      'Precio dieta',
      name: 'contract_form_holder_diet_price',
      desc: '',
      args: [],
    );
  }

  /// `Precio media dieta`
  String get contract_form_holder_average_diet_price {
    return Intl.message(
      'Precio media dieta',
      name: 'contract_form_holder_average_diet_price',
      desc: '',
      args: [],
    );
  }

  /// `Editar contracto`
  String get contract_item_settings_edit {
    return Intl.message(
      'Editar contracto',
      name: 'contract_item_settings_edit',
      desc: '',
      args: [],
    );
  }

  /// `Duplicar contrato`
  String get contract_item_settings_double {
    return Intl.message(
      'Duplicar contrato',
      name: 'contract_item_settings_double',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar contracto`
  String get contract_item_settings_delete {
    return Intl.message(
      'Eliminar contracto',
      name: 'contract_item_settings_delete',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro de que deseas eliminar el contracto?`
  String get contract_item_settings_delete_confirm {
    return Intl.message(
      '¿Estas seguro de que deseas eliminar el contracto?',
      name: 'contract_item_settings_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get contract_tutorial_description {
    return Intl.message(
      '',
      name: 'contract_tutorial_description',
      desc: '',
      args: [],
    );
  }

  /// `Diario`
  String get daily_title {
    return Intl.message(
      'Diario',
      name: 'daily_title',
      desc: '',
      args: [],
    );
  }

  /// `Este mes`
  String get daily_this_month_title {
    return Intl.message(
      'Este mes',
      name: 'daily_this_month_title',
      desc: '',
      args: [],
    );
  }

  /// `Pluses y dietas`
  String get diet_title {
    return Intl.message(
      'Pluses y dietas',
      name: 'diet_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/plus/plus_list_empty.svg`
  String get plus_assets_images_list_empty {
    return Intl.message(
      'assets/images/hive_job_control/plus/plus_list_empty.svg',
      name: 'plus_assets_images_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/plus/plus_list_error.svg`
  String get plus_assets_images_list_error {
    return Intl.message(
      'assets/images/hive_job_control/plus/plus_list_error.svg',
      name: 'plus_assets_images_list_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/plus/plus_list_loading.svg`
  String get plus_assets_images_list_loading {
    return Intl.message(
      'assets/images/hive_job_control/plus/plus_list_loading.svg',
      name: 'plus_assets_images_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/plus/plus_monitor.svg`
  String get plus_assets_images_monitor {
    return Intl.message(
      'assets/images/hive_job_control/plus/plus_monitor.svg',
      name: 'plus_assets_images_monitor',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/plus/plus_monitor_error.svg`
  String get plus_assets_images_monitor_error {
    return Intl.message(
      'assets/images/hive_job_control/plus/plus_monitor_error.svg',
      name: 'plus_assets_images_monitor_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/plus/plus_monitor_loading.svg`
  String get plus_assets_images_monitor_loading {
    return Intl.message(
      'assets/images/hive_job_control/plus/plus_monitor_loading.svg',
      name: 'plus_assets_images_monitor_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/plus/plus_screen_error.svg`
  String get plus_assets_images_screen_error {
    return Intl.message(
      'assets/images/hive_job_control/plus/plus_screen_error.svg',
      name: 'plus_assets_images_screen_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/plus/plus_screen_loading.svg`
  String get plus_assets_images_screen_loading {
    return Intl.message(
      'assets/images/hive_job_control/plus/plus_screen_loading.svg',
      name: 'plus_assets_images_screen_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/plus/plus_table_empty.svg`
  String get plus_assets_images_table_empty {
    return Intl.message(
      'assets/images/hive_job_control/plus/plus_table_empty.svg',
      name: 'plus_assets_images_table_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/plus/plus_table_error.svg`
  String get plus_assets_images_table_error {
    return Intl.message(
      'assets/images/hive_job_control/plus/plus_table_error.svg',
      name: 'plus_assets_images_table_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/plus/plus_table_loading.svg`
  String get plus_assets_images_table_loading {
    return Intl.message(
      'assets/images/hive_job_control/plus/plus_table_loading.svg',
      name: 'plus_assets_images_table_loading',
      desc: '',
      args: [],
    );
  }

  /// `Encuentra tu pluses`
  String get diet_filter_title {
    return Intl.message(
      'Encuentra tu pluses',
      name: 'diet_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get plus_filter_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'plus_filter_error',
      desc: '',
      args: [],
    );
  }

  /// `Filtrando pluses`
  String get plus_filter_loading {
    return Intl.message(
      'Filtrando pluses',
      name: 'plus_filter_loading',
      desc: '',
      args: [],
    );
  }

  /// `Empresa`
  String get diet_filter_holder_business {
    return Intl.message(
      'Empresa',
      name: 'diet_filter_holder_business',
      desc: '',
      args: [],
    );
  }

  /// `Estadisiticas de pluese`
  String get diet_statistics_title {
    return Intl.message(
      'Estadisiticas de pluese',
      name: 'diet_statistics_title',
      desc: '',
      args: [],
    );
  }

  /// `Calculando estadisticas...`
  String get diet_statistics_loading {
    return Intl.message(
      'Calculando estadisticas...',
      name: 'diet_statistics_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se pudo calcular las estadisticas! \n\n😢`
  String get diet_statistics_error {
    return Intl.message(
      '¡Vaya no se pudo calcular las estadisticas! \n\n😢',
      name: 'diet_statistics_error',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural,  one{Plus} other{Pluses}}`
  String plus_statistics_length(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Plus',
      other: 'Pluses',
      name: 'plus_statistics_length',
      desc: '',
      args: [howMany],
    );
  }

  /// `Pluses y dietas`
  String get diet_list_title {
    return Intl.message(
      'Pluses y dietas',
      name: 'diet_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando pluses`
  String get diet_list_loading {
    return Intl.message(
      'Cargando pluses',
      name: 'diet_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón pluses! \n\n😢`
  String get diet_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón pluses! \n\n😢',
      name: 'diet_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Nueva plus`
  String get diet_form_title {
    return Intl.message(
      'Nueva plus',
      name: 'diet_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get plus_form_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'plus_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Salvando plus`
  String get plus_form_loading {
    return Intl.message(
      'Salvando plus',
      name: 'plus_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `Editar plus`
  String get diet_item_settings_edit {
    return Intl.message(
      'Editar plus',
      name: 'diet_item_settings_edit',
      desc: '',
      args: [],
    );
  }

  /// `Duplicar plus`
  String get diet_item_settings_double {
    return Intl.message(
      'Duplicar plus',
      name: 'diet_item_settings_double',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar plus`
  String get diet_item_settings_delete {
    return Intl.message(
      'Eliminar plus',
      name: 'diet_item_settings_delete',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro de que deseas eliminar el plus?`
  String get diet_item_settings_delete_confirm {
    return Intl.message(
      '¿Estas seguro de que deseas eliminar el plus?',
      name: 'diet_item_settings_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get diet_tutorial_description {
    return Intl.message(
      '',
      name: 'diet_tutorial_description',
      desc: '',
      args: [],
    );
  }

  /// `Horas`
  String get hours_title {
    return Intl.message(
      'Horas',
      name: 'hours_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_list_empty.svg`
  String get hours_assets_images_list_empty {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_list_empty.svg',
      name: 'hours_assets_images_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_list_error.svg`
  String get hours_assets_images_list_error {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_list_error.svg',
      name: 'hours_assets_images_list_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_list_loading.svg`
  String get hours_assets_images_list_loading {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_list_loading.svg',
      name: 'hours_assets_images_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_monitor.svg`
  String get hours_assets_images_monitor {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_monitor.svg',
      name: 'hours_assets_images_monitor',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_monitor_error.svg`
  String get hours_assets_images_monitor_error {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_monitor_error.svg',
      name: 'hours_assets_images_monitor_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_monitor_loading.svg`
  String get hours_assets_images_monitor_loading {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_monitor_loading.svg',
      name: 'hours_assets_images_monitor_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_screen_error.svg`
  String get hours_assets_images_screen_error {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_screen_error.svg',
      name: 'hours_assets_images_screen_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_screen_loading.svg`
  String get hours_assets_images_screen_loading {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_screen_loading.svg',
      name: 'hours_assets_images_screen_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_table_empty.svg`
  String get hours_assets_images_table_empty {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_table_empty.svg',
      name: 'hours_assets_images_table_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_table_error.svg`
  String get hours_assets_images_table_error {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_table_error.svg',
      name: 'hours_assets_images_table_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/hours/hours_table_loading.svg`
  String get hours_assets_images_table_loading {
    return Intl.message(
      'assets/images/hive_job_control/hours/hours_table_loading.svg',
      name: 'hours_assets_images_table_loading',
      desc: '',
      args: [],
    );
  }

  /// `Encuentra tu horas`
  String get hours_filter_title {
    return Intl.message(
      'Encuentra tu horas',
      name: 'hours_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Empresa`
  String get hours_filter_holder_business {
    return Intl.message(
      'Empresa',
      name: 'hours_filter_holder_business',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get hours_filter_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'hours_filter_error',
      desc: '',
      args: [],
    );
  }

  /// `Filtrando horas`
  String get hours_filter_loading {
    return Intl.message(
      'Filtrando horas',
      name: 'hours_filter_loading',
      desc: '',
      args: [],
    );
  }

  /// `Estadisiticas de horass`
  String get hours_statistics_title {
    return Intl.message(
      'Estadisiticas de horass',
      name: 'hours_statistics_title',
      desc: '',
      args: [],
    );
  }

  /// `Calculando estadisticas...`
  String get hours_statistics_loading {
    return Intl.message(
      'Calculando estadisticas...',
      name: 'hours_statistics_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se pudo calcular las estadisticas! \n\n😢`
  String get hours_statistics_error {
    return Intl.message(
      '¡Vaya no se pudo calcular las estadisticas! \n\n😢',
      name: 'hours_statistics_error',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural,  one{Hora} other{Horas}}`
  String hours_statistics_length(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Hora',
      other: 'Horas',
      name: 'hours_statistics_length',
      desc: '',
      args: [howMany],
    );
  }

  /// `Horas`
  String get hours_list_title {
    return Intl.message(
      'Horas',
      name: 'hours_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando jornadas`
  String get hours_list_loading {
    return Intl.message(
      'Cargando jornadas',
      name: 'hours_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón horas! \n\n😢`
  String get hours_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón horas! \n\n😢',
      name: 'hours_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Nueva horas`
  String get hours_form_title {
    return Intl.message(
      'Nueva horas',
      name: 'hours_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get hours_form_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'hours_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Salvando horas`
  String get hours_form_loading {
    return Intl.message(
      'Salvando horas',
      name: 'hours_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `Cantidad`
  String get hours_form_holder_quantity {
    return Intl.message(
      'Cantidad',
      name: 'hours_form_holder_quantity',
      desc: '',
      args: [],
    );
  }

  /// `Concepto`
  String get hours_form_holder_concept {
    return Intl.message(
      'Concepto',
      name: 'hours_form_holder_concept',
      desc: '',
      args: [],
    );
  }

  /// `Editar horas`
  String get hours_item_settings_edit {
    return Intl.message(
      'Editar horas',
      name: 'hours_item_settings_edit',
      desc: '',
      args: [],
    );
  }

  /// `Duplicar horas`
  String get hours_item_settings_double {
    return Intl.message(
      'Duplicar horas',
      name: 'hours_item_settings_double',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar horas`
  String get hours_item_settings_delete {
    return Intl.message(
      'Eliminar horas',
      name: 'hours_item_settings_delete',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro de que deseas eliminar la horas?`
  String get hours_item_settings_delete_confirm {
    return Intl.message(
      '¿Estas seguro de que deseas eliminar la horas?',
      name: 'hours_item_settings_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// `En el apartado 'Horas' puedes registrar las jornadas de trabajo que realizas, bien sea por numero de horas o por periodos de tiempo. El trabajo realizado puede relacionarse con una empresa o proyecto, lo que te permite filtrar y encontrar con mayor facilidad las jornadas realizadas para una organización concreta en un determinado día. En el apartado 'Horas', también encontraras información, sobre las horas extras que realizas o la remuneración que te corresponde por el trabajo realizado.`
  String get hours_tutorial_description {
    return Intl.message(
      'En el apartado \'Horas\' puedes registrar las jornadas de trabajo que realizas, bien sea por numero de horas o por periodos de tiempo. El trabajo realizado puede relacionarse con una empresa o proyecto, lo que te permite filtrar y encontrar con mayor facilidad las jornadas realizadas para una organización concreta en un determinado día. En el apartado \'Horas\', también encontraras información, sobre las horas extras que realizas o la remuneración que te corresponde por el trabajo realizado.',
      name: 'hours_tutorial_description',
      desc: '',
      args: [],
    );
  }

  /// `Km`
  String get km_title {
    return Intl.message(
      'Km',
      name: 'km_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/km/km_list_empty.svg`
  String get km_assets_images_list_empty {
    return Intl.message(
      'assets/images/hive_job_control/km/km_list_empty.svg',
      name: 'km_assets_images_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/km/km_list_error.svg`
  String get km_assets_images_list_error {
    return Intl.message(
      'assets/images/hive_job_control/km/km_list_error.svg',
      name: 'km_assets_images_list_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/km/km_list_loading.svg`
  String get km_assets_images_list_loading {
    return Intl.message(
      'assets/images/hive_job_control/km/km_list_loading.svg',
      name: 'km_assets_images_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/km/km_monitor.svg`
  String get km_assets_images_monitor {
    return Intl.message(
      'assets/images/hive_job_control/km/km_monitor.svg',
      name: 'km_assets_images_monitor',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/km/km_monitor_error.svg`
  String get km_assets_images_monitor_error {
    return Intl.message(
      'assets/images/hive_job_control/km/km_monitor_error.svg',
      name: 'km_assets_images_monitor_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/km/km_monitor_loading.svg`
  String get km_assets_images_monitor_loading {
    return Intl.message(
      'assets/images/hive_job_control/km/km_monitor_loading.svg',
      name: 'km_assets_images_monitor_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/km/km_screen_error.svg`
  String get km_assets_images_screen_error {
    return Intl.message(
      'assets/images/hive_job_control/km/km_screen_error.svg',
      name: 'km_assets_images_screen_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/km/km_screen_loading.svg`
  String get km_assets_images_screen_loading {
    return Intl.message(
      'assets/images/hive_job_control/km/km_screen_loading.svg',
      name: 'km_assets_images_screen_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/km/km_table_empty.svg`
  String get km_assets_images_table_empty {
    return Intl.message(
      'assets/images/hive_job_control/km/km_table_empty.svg',
      name: 'km_assets_images_table_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/km/km_table_error.svg`
  String get km_assets_images_table_error {
    return Intl.message(
      'assets/images/hive_job_control/km/km_table_error.svg',
      name: 'km_assets_images_table_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/km/km_table_loading.svg`
  String get km_assets_images_table_loading {
    return Intl.message(
      'assets/images/hive_job_control/km/km_table_loading.svg',
      name: 'km_assets_images_table_loading',
      desc: '',
      args: [],
    );
  }

  /// `Encuentra tu Km`
  String get km_filter_title {
    return Intl.message(
      'Encuentra tu Km',
      name: 'km_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get km_filter_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'km_filter_error',
      desc: '',
      args: [],
    );
  }

  /// `Filtrando Km`
  String get km_filter_loading {
    return Intl.message(
      'Filtrando Km',
      name: 'km_filter_loading',
      desc: '',
      args: [],
    );
  }

  /// `Empresa`
  String get km_filter_holder_business {
    return Intl.message(
      'Empresa',
      name: 'km_filter_holder_business',
      desc: '',
      args: [],
    );
  }

  /// `Estadisiticas de Km`
  String get km_statistics_title {
    return Intl.message(
      'Estadisiticas de Km',
      name: 'km_statistics_title',
      desc: '',
      args: [],
    );
  }

  /// `Calculando estadisticas...`
  String get km_statistics_loading {
    return Intl.message(
      'Calculando estadisticas...',
      name: 'km_statistics_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se pudo calcular las estadisticas! \n\n😢`
  String get km_statistics_error {
    return Intl.message(
      '¡Vaya no se pudo calcular las estadisticas! \n\n😢',
      name: 'km_statistics_error',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural,  one{Kilometro} other{Kilometros}}`
  String km_statistics_length(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Kilometro',
      other: 'Kilometros',
      name: 'km_statistics_length',
      desc: '',
      args: [howMany],
    );
  }

  /// `Km`
  String get km_list_title {
    return Intl.message(
      'Km',
      name: 'km_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando Km`
  String get km_list_loading {
    return Intl.message(
      'Cargando Km',
      name: 'km_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón Km! \n\n😢`
  String get km_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón Km! \n\n😢',
      name: 'km_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Nuevo Km`
  String get km_form_title {
    return Intl.message(
      'Nuevo Km',
      name: 'km_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get km_form_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'km_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Salvando Km`
  String get km_form_loading {
    return Intl.message(
      'Salvando Km',
      name: 'km_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `Editar Km`
  String get km_item_settings_edit {
    return Intl.message(
      'Editar Km',
      name: 'km_item_settings_edit',
      desc: '',
      args: [],
    );
  }

  /// `Duplicar Km`
  String get km_item_settings_double {
    return Intl.message(
      'Duplicar Km',
      name: 'km_item_settings_double',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar Km`
  String get km_item_settings_delete {
    return Intl.message(
      'Eliminar Km',
      name: 'km_item_settings_delete',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro de que deseas eliminar los Km?`
  String get km_item_settings_delete_confirm {
    return Intl.message(
      '¿Estas seguro de que deseas eliminar los Km?',
      name: 'km_item_settings_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Cando necesites viajar y tengas Km que imputar, almacénalos en este apartado. Tener tus viajes registrados te permitirá obtener información instantánea de los viajes que realizaste, los destinos en los que estuviste, o el dinero que te corresponde por el traslado.`
  String get km_tutorial_description {
    return Intl.message(
      'Cando necesites viajar y tengas Km que imputar, almacénalos en este apartado. Tener tus viajes registrados te permitirá obtener información instantánea de los viajes que realizaste, los destinos en los que estuviste, o el dinero que te corresponde por el traslado.',
      name: 'km_tutorial_description',
      desc: '',
      args: [],
    );
  }

  /// `Nómina`
  String get payroll_title {
    return Intl.message(
      'Nómina',
      name: 'payroll_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/payroll/payroll_list_empty.svg`
  String get payroll_assets_images_list_empty {
    return Intl.message(
      'assets/images/hive_job_control/payroll/payroll_list_empty.svg',
      name: 'payroll_assets_images_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/payroll/payroll_list_error.svg`
  String get payroll_assets_images_list_error {
    return Intl.message(
      'assets/images/hive_job_control/payroll/payroll_list_error.svg',
      name: 'payroll_assets_images_list_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/payroll/payroll_list_loading.svg`
  String get payroll_assets_images_list_loading {
    return Intl.message(
      'assets/images/hive_job_control/payroll/payroll_list_loading.svg',
      name: 'payroll_assets_images_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/payroll/payroll_monitor.svg`
  String get payroll_assets_images_monitor {
    return Intl.message(
      'assets/images/hive_job_control/payroll/payroll_monitor.svg',
      name: 'payroll_assets_images_monitor',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/payroll/payroll_monitor_error.svg`
  String get payroll_assets_images_monitor_error {
    return Intl.message(
      'assets/images/hive_job_control/payroll/payroll_monitor_error.svg',
      name: 'payroll_assets_images_monitor_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/payroll/payroll_monitor_loading.svg`
  String get payroll_assets_images_monitor_loading {
    return Intl.message(
      'assets/images/hive_job_control/payroll/payroll_monitor_loading.svg',
      name: 'payroll_assets_images_monitor_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/payroll/payroll_screen_error.svg`
  String get payroll_assets_images_screen_error {
    return Intl.message(
      'assets/images/hive_job_control/payroll/payroll_screen_error.svg',
      name: 'payroll_assets_images_screen_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/payroll/payroll_screen_loading.svg`
  String get payroll_assets_images_screen_loading {
    return Intl.message(
      'assets/images/hive_job_control/payroll/payroll_screen_loading.svg',
      name: 'payroll_assets_images_screen_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/payroll/payroll_table_empty.svg`
  String get payroll_assets_images_table_empty {
    return Intl.message(
      'assets/images/hive_job_control/payroll/payroll_table_empty.svg',
      name: 'payroll_assets_images_table_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/payroll/payroll_table_error.svg`
  String get payroll_assets_images_table_error {
    return Intl.message(
      'assets/images/hive_job_control/payroll/payroll_table_error.svg',
      name: 'payroll_assets_images_table_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/payroll/payroll_table_loading.svg`
  String get payroll_assets_images_table_loading {
    return Intl.message(
      'assets/images/hive_job_control/payroll/payroll_table_loading.svg',
      name: 'payroll_assets_images_table_loading',
      desc: '',
      args: [],
    );
  }

  /// `Encuentra tu nomina`
  String get payroll_filter_title {
    return Intl.message(
      'Encuentra tu nomina',
      name: 'payroll_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get payroll_filter_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'payroll_filter_error',
      desc: '',
      args: [],
    );
  }

  /// `Filtrando nominas`
  String get payroll_filter_loading {
    return Intl.message(
      'Filtrando nominas',
      name: 'payroll_filter_loading',
      desc: '',
      args: [],
    );
  }

  /// `Estadisticas de nominas`
  String get payroll_statistics_title {
    return Intl.message(
      'Estadisticas de nominas',
      name: 'payroll_statistics_title',
      desc: '',
      args: [],
    );
  }

  /// `Calculando estadisticas...`
  String get payroll_statistics_loading {
    return Intl.message(
      'Calculando estadisticas...',
      name: 'payroll_statistics_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se pudo calcular las estadisticas! \n\n😢`
  String get payroll_statistics_error {
    return Intl.message(
      '¡Vaya no se pudo calcular las estadisticas! \n\n😢',
      name: 'payroll_statistics_error',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural,  one{Nómina} other{Nóminas}}`
  String payroll_statistics_length(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Nómina',
      other: 'Nóminas',
      name: 'payroll_statistics_length',
      desc: '',
      args: [howMany],
    );
  }

  /// `Nóminas`
  String get payroll_list_title {
    return Intl.message(
      'Nóminas',
      name: 'payroll_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando nominas`
  String get payroll_list_loading {
    return Intl.message(
      'Cargando nominas',
      name: 'payroll_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón nominas! \n\n😢`
  String get payroll_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón nominas! \n\n😢',
      name: 'payroll_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Nueva nomina`
  String get payroll_form_title {
    return Intl.message(
      'Nueva nomina',
      name: 'payroll_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get payroll_form_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'payroll_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Salvando nomina`
  String get payroll_form_loading {
    return Intl.message(
      'Salvando nomina',
      name: 'payroll_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `Professional category`
  String get payroll_form_holder_professional_category {
    return Intl.message(
      'Professional category',
      name: 'payroll_form_holder_professional_category',
      desc: '',
      args: [],
    );
  }

  /// `Salario base`
  String get payroll_form_holder_base_salary {
    return Intl.message(
      'Salario base',
      name: 'payroll_form_holder_base_salary',
      desc: '',
      args: [],
    );
  }

  /// `Total a deducir`
  String get payroll_form_holder_total_to_deduct {
    return Intl.message(
      'Total a deducir',
      name: 'payroll_form_holder_total_to_deduct',
      desc: '',
      args: [],
    );
  }

  /// `I.R.P.F.`
  String get payroll_form_holder_irpf {
    return Intl.message(
      'I.R.P.F.',
      name: 'payroll_form_holder_irpf',
      desc: '',
      args: [],
    );
  }

  /// `Editar nomina`
  String get payroll_item_settings_edit {
    return Intl.message(
      'Editar nomina',
      name: 'payroll_item_settings_edit',
      desc: '',
      args: [],
    );
  }

  /// `Duplicar nomina`
  String get payroll_item_settings_double {
    return Intl.message(
      'Duplicar nomina',
      name: 'payroll_item_settings_double',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar nomina`
  String get payroll_item_settings_delete {
    return Intl.message(
      'Eliminar nomina',
      name: 'payroll_item_settings_delete',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro de que deseas eliminar la nomina?`
  String get payroll_item_settings_delete_confirm {
    return Intl.message(
      '¿Estas seguro de que deseas eliminar la nomina?',
      name: 'payroll_item_settings_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get payroll_tutorial_description {
    return Intl.message(
      '',
      name: 'payroll_tutorial_description',
      desc: '',
      args: [],
    );
  }

  /// `Proyecto`
  String get project_title {
    return Intl.message(
      'Proyecto',
      name: 'project_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/project/project_list_empty.svg`
  String get project_assets_images_list_empty {
    return Intl.message(
      'assets/images/hive_job_control/project/project_list_empty.svg',
      name: 'project_assets_images_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/project/project_list_error.svg`
  String get project_assets_images_list_error {
    return Intl.message(
      'assets/images/hive_job_control/project/project_list_error.svg',
      name: 'project_assets_images_list_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/project/project_list_loading.svg`
  String get project_assets_images_list_loading {
    return Intl.message(
      'assets/images/hive_job_control/project/project_list_loading.svg',
      name: 'project_assets_images_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/project/project_screen_error.svg`
  String get project_assets_images_screen_error {
    return Intl.message(
      'assets/images/hive_job_control/project/project_screen_error.svg',
      name: 'project_assets_images_screen_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/project/project_screen_loading.svg`
  String get project_assets_images_screen_loading {
    return Intl.message(
      'assets/images/hive_job_control/project/project_screen_loading.svg',
      name: 'project_assets_images_screen_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/project/project_table_empty.svg`
  String get project_assets_images_table_empty {
    return Intl.message(
      'assets/images/hive_job_control/project/project_table_empty.svg',
      name: 'project_assets_images_table_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/project/project_table_error.svg`
  String get project_assets_images_table_error {
    return Intl.message(
      'assets/images/hive_job_control/project/project_table_error.svg',
      name: 'project_assets_images_table_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/project/project_table_loading.svg`
  String get project_assets_images_table_loading {
    return Intl.message(
      'assets/images/hive_job_control/project/project_table_loading.svg',
      name: 'project_assets_images_table_loading',
      desc: '',
      args: [],
    );
  }

  /// `Encuentra tu proyecto`
  String get project_filter_title {
    return Intl.message(
      'Encuentra tu proyecto',
      name: 'project_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get project_filter_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'project_filter_error',
      desc: '',
      args: [],
    );
  }

  /// `Filtrando proyectos`
  String get project_filter_loading {
    return Intl.message(
      'Filtrando proyectos',
      name: 'project_filter_loading',
      desc: '',
      args: [],
    );
  }

  /// `Estadisticas de proyectos`
  String get project_statistics_title {
    return Intl.message(
      'Estadisticas de proyectos',
      name: 'project_statistics_title',
      desc: '',
      args: [],
    );
  }

  /// `Calculando estadisticas...`
  String get project_statistics_loading {
    return Intl.message(
      'Calculando estadisticas...',
      name: 'project_statistics_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se pudo calcular las estadisticas! \n\n😢`
  String get project_statistics_error {
    return Intl.message(
      '¡Vaya no se pudo calcular las estadisticas! \n\n😢',
      name: 'project_statistics_error',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural,  one{1 proyecto} other{{howMany} proyectos}}`
  String project_statistics_length(num howMany) {
    return Intl.plural(
      howMany,
      one: '1 proyecto',
      other: '$howMany proyectos',
      name: 'project_statistics_length',
      desc: '',
      args: [howMany],
    );
  }

  /// `Proyectos`
  String get project_list_title {
    return Intl.message(
      'Proyectos',
      name: 'project_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando proyectos`
  String get project_list_loading {
    return Intl.message(
      'Cargando proyectos',
      name: 'project_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón proyectos! \n\n😢`
  String get project_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón proyectos! \n\n😢',
      name: 'project_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Nuevo proyecto`
  String get project_form_title {
    return Intl.message(
      'Nuevo proyecto',
      name: 'project_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get project_form_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'project_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Salvando proyecto`
  String get project_form_loading {
    return Intl.message(
      'Salvando proyecto',
      name: 'project_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `Nombre del proyecto`
  String get project_form_holder_name {
    return Intl.message(
      'Nombre del proyecto',
      name: 'project_form_holder_name',
      desc: '',
      args: [],
    );
  }

  /// `CDG`
  String get project_form_holder_cdg {
    return Intl.message(
      'CDG',
      name: 'project_form_holder_cdg',
      desc: '',
      args: [],
    );
  }

  /// `Editar proyecto`
  String get project_item_settings_edit {
    return Intl.message(
      'Editar proyecto',
      name: 'project_item_settings_edit',
      desc: '',
      args: [],
    );
  }

  /// `Duplicar proyecto`
  String get project_item_settings_double {
    return Intl.message(
      'Duplicar proyecto',
      name: 'project_item_settings_double',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar proyecto`
  String get project_item_settings_delete {
    return Intl.message(
      'Eliminar proyecto',
      name: 'project_item_settings_delete',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro de que deseas eliminar el proyecto?`
  String get project_item_settings_delete_confirm {
    return Intl.message(
      '¿Estas seguro de que deseas eliminar el proyecto?',
      name: 'project_item_settings_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get project_tutorial_description {
    return Intl.message(
      '',
      name: 'project_tutorial_description',
      desc: '',
      args: [],
    );
  }

  /// `Cronografo`
  String get stopwatch_title {
    return Intl.message(
      'Cronografo',
      name: 'stopwatch_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/stopwatch/stopwatch_list_empty.svg`
  String get stopwatch_assets_images_list_empty {
    return Intl.message(
      'assets/images/hive_job_control/stopwatch/stopwatch_list_empty.svg',
      name: 'stopwatch_assets_images_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/stopwatch/stopwatch_list_error.svg`
  String get stopwatch_assets_images_list_error {
    return Intl.message(
      'assets/images/hive_job_control/stopwatch/stopwatch_list_error.svg',
      name: 'stopwatch_assets_images_list_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/stopwatch/stopwatch_list_loading.svg`
  String get stopwatch_assets_images_list_loading {
    return Intl.message(
      'assets/images/hive_job_control/stopwatch/stopwatch_list_loading.svg',
      name: 'stopwatch_assets_images_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/stopwatch/stopwatch_screen_error.svg`
  String get stopwatch_assets_images_screen_error {
    return Intl.message(
      'assets/images/hive_job_control/stopwatch/stopwatch_screen_error.svg',
      name: 'stopwatch_assets_images_screen_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/stopwatch/stopwatch_screen_loading.svg`
  String get stopwatch_assets_images_screen_loading {
    return Intl.message(
      'assets/images/hive_job_control/stopwatch/stopwatch_screen_loading.svg',
      name: 'stopwatch_assets_images_screen_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/stopwatch/stopwatch_table_empty.svg`
  String get stopwatch_assets_images_table_empty {
    return Intl.message(
      'assets/images/hive_job_control/stopwatch/stopwatch_table_empty.svg',
      name: 'stopwatch_assets_images_table_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/stopwatch/stopwatch_table_error.svg`
  String get stopwatch_assets_images_table_error {
    return Intl.message(
      'assets/images/hive_job_control/stopwatch/stopwatch_table_error.svg',
      name: 'stopwatch_assets_images_table_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/stopwatch/stopwatch_table_loading.svg`
  String get stopwatch_assets_images_table_loading {
    return Intl.message(
      'assets/images/hive_job_control/stopwatch/stopwatch_table_loading.svg',
      name: 'stopwatch_assets_images_table_loading',
      desc: '',
      args: [],
    );
  }

  /// `Cronografos`
  String get stopwatch_list_title {
    return Intl.message(
      'Cronografos',
      name: 'stopwatch_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando ronografos`
  String get stopwatch_list_loading {
    return Intl.message(
      'Cargando ronografos',
      name: 'stopwatch_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón ronografos! \n\n😢`
  String get stopwatch_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón ronografos! \n\n😢',
      name: 'stopwatch_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Encuentra tu cronografo`
  String get stopwatch_filter_title {
    return Intl.message(
      'Encuentra tu cronografo',
      name: 'stopwatch_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get stopwatch_filter_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'stopwatch_filter_error',
      desc: '',
      args: [],
    );
  }

  /// `Filtrando factura`
  String get stopwatch_filter_loading {
    return Intl.message(
      'Filtrando factura',
      name: 'stopwatch_filter_loading',
      desc: '',
      args: [],
    );
  }

  /// `Buscar: Nombre, CID...`
  String get stopwatch_filter_holder_search {
    return Intl.message(
      'Buscar: Nombre, CID...',
      name: 'stopwatch_filter_holder_search',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural,  one{1 cronografo} other{{howMany} cronografos}}`
  String stopwatch_statistics_length(num howMany) {
    return Intl.plural(
      howMany,
      one: '1 cronografo',
      other: '$howMany cronografos',
      name: 'stopwatch_statistics_length',
      desc: '',
      args: [howMany],
    );
  }

  /// `Nueva cronografo`
  String get stopwatch_form_title_new {
    return Intl.message(
      'Nueva cronografo',
      name: 'stopwatch_form_title_new',
      desc: '',
      args: [],
    );
  }

  /// `Editar cronografo`
  String get stopwatch_form_title_edit {
    return Intl.message(
      'Editar cronografo',
      name: 'stopwatch_form_title_edit',
      desc: '',
      args: [],
    );
  }

  /// `Datos generales`
  String get stopwatch_form_title_steep_1 {
    return Intl.message(
      'Datos generales',
      name: 'stopwatch_form_title_steep_1',
      desc: '',
      args: [],
    );
  }

  /// `Información de contacto`
  String get stopwatch_form_title_steep_2 {
    return Intl.message(
      'Información de contacto',
      name: 'stopwatch_form_title_steep_2',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get stopwatch_form_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'stopwatch_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Salvando cronografo`
  String get stopwatch_form_loading {
    return Intl.message(
      'Salvando cronografo',
      name: 'stopwatch_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `URL del logotipo de la cronografo`
  String get stopwatch_form_holder_url_logo {
    return Intl.message(
      'URL del logotipo de la cronografo',
      name: 'stopwatch_form_holder_url_logo',
      desc: '',
      args: [],
    );
  }

  /// `Nombre de la cronografo`
  String get stopwatch_form_holder_name {
    return Intl.message(
      'Nombre de la cronografo',
      name: 'stopwatch_form_holder_name',
      desc: '',
      args: [],
    );
  }

  /// `Descripción`
  String get stopwatch_form_holder_description {
    return Intl.message(
      'Descripción',
      name: 'stopwatch_form_holder_description',
      desc: '',
      args: [],
    );
  }

  /// `CID`
  String get stopwatch_form_holder_cid {
    return Intl.message(
      'CID',
      name: 'stopwatch_form_holder_cid',
      desc: '',
      args: [],
    );
  }

  /// `Dirección de la pagina web`
  String get stopwatch_form_holder_webUrl {
    return Intl.message(
      'Dirección de la pagina web',
      name: 'stopwatch_form_holder_webUrl',
      desc: '',
      args: [],
    );
  }

  /// `URL invalida`
  String get stopwatch_form_error_holder_url_logo {
    return Intl.message(
      'URL invalida',
      name: 'stopwatch_form_error_holder_url_logo',
      desc: '',
      args: [],
    );
  }

  /// `Nombre invalido`
  String get stopwatch_form_error_holder_name {
    return Intl.message(
      'Nombre invalido',
      name: 'stopwatch_form_error_holder_name',
      desc: '',
      args: [],
    );
  }

  /// `Descripción invalida`
  String get stopwatch_form_error_holder_description {
    return Intl.message(
      'Descripción invalida',
      name: 'stopwatch_form_error_holder_description',
      desc: '',
      args: [],
    );
  }

  /// `CID invalido`
  String get stopwatch_form_error_holder_cid {
    return Intl.message(
      'CID invalido',
      name: 'stopwatch_form_error_holder_cid',
      desc: '',
      args: [],
    );
  }

  /// `Dirección de la pagina web invalida`
  String get stopwatch_form_error_holder_webUrl {
    return Intl.message(
      'Dirección de la pagina web invalida',
      name: 'stopwatch_form_error_holder_webUrl',
      desc: '',
      args: [],
    );
  }

  /// `Editar cronografo`
  String get stopwatch_menu_item_edit {
    return Intl.message(
      'Editar cronografo',
      name: 'stopwatch_menu_item_edit',
      desc: '',
      args: [],
    );
  }

  /// `Duplicar cronografo`
  String get stopwatch_menu_item_double {
    return Intl.message(
      'Duplicar cronografo',
      name: 'stopwatch_menu_item_double',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar cronografo`
  String get stopwatch_menu_item_delete {
    return Intl.message(
      'Eliminar cronografo',
      name: 'stopwatch_menu_item_delete',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro de que deseas eliminar la cronografo?`
  String get stopwatch_menu_item_delete_confirm {
    return Intl.message(
      '¿Estas seguro de que deseas eliminar la cronografo?',
      name: 'stopwatch_menu_item_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// `CID Copied to Clipboard`
  String get stopwatch_item_copy_cid {
    return Intl.message(
      'CID Copied to Clipboard',
      name: 'stopwatch_item_copy_cid',
      desc: '',
      args: [],
    );
  }

  /// `Registra las ronografos con las que tienes una relación laboral, para tener siempre a mano sus datos de contacto (Teléfonos, correos electrónicos, CID...). Al tener guardadas tus ronografos puedes imputar tus facturas, nominas, horas, km.. Lo que te permite establecer una relación entre la empresa y las actividades relacionadas con dicha entidad.`
  String get stopwatch_tutorial_description {
    return Intl.message(
      'Registra las ronografos con las que tienes una relación laboral, para tener siempre a mano sus datos de contacto (Teléfonos, correos electrónicos, CID...). Al tener guardadas tus ronografos puedes imputar tus facturas, nominas, horas, km.. Lo que te permite establecer una relación entre la empresa y las actividades relacionadas con dicha entidad.',
      name: 'stopwatch_tutorial_description',
      desc: '',
      args: [],
    );
  }

  /// `Calendario laboral`
  String get work_calendar_title {
    return Intl.message(
      'Calendario laboral',
      name: 'work_calendar_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_calendar/work_calendar_list_empty.svg`
  String get work_calendar_assets_images_list_empty {
    return Intl.message(
      'assets/images/hive_job_control/work_calendar/work_calendar_list_empty.svg',
      name: 'work_calendar_assets_images_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_calendar/work_calendar_list_error.svg`
  String get work_calendar_assets_images_list_error {
    return Intl.message(
      'assets/images/hive_job_control/work_calendar/work_calendar_list_error.svg',
      name: 'work_calendar_assets_images_list_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_calendar/work_calendar_list_loading.svg`
  String get work_calendar_assets_images_list_loading {
    return Intl.message(
      'assets/images/hive_job_control/work_calendar/work_calendar_list_loading.svg',
      name: 'work_calendar_assets_images_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_calendar/work_calendar_screen_error.svg`
  String get work_calendar_assets_images_screen_error {
    return Intl.message(
      'assets/images/hive_job_control/work_calendar/work_calendar_screen_error.svg',
      name: 'work_calendar_assets_images_screen_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_calendar/work_calendar_screen_loading.svg`
  String get work_calendar_assets_images_screen_loading {
    return Intl.message(
      'assets/images/hive_job_control/work_calendar/work_calendar_screen_loading.svg',
      name: 'work_calendar_assets_images_screen_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_calendar/work_calendar_table_empty.svg`
  String get work_calendar_assets_images_table_empty {
    return Intl.message(
      'assets/images/hive_job_control/work_calendar/work_calendar_table_empty.svg',
      name: 'work_calendar_assets_images_table_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_calendar/work_calendar_table_error.svg`
  String get work_calendar_assets_images_table_error {
    return Intl.message(
      'assets/images/hive_job_control/work_calendar/work_calendar_table_error.svg',
      name: 'work_calendar_assets_images_table_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_calendar/work_calendar_list_loading.svg`
  String get work_calendar_assets_images_table_loading {
    return Intl.message(
      'assets/images/hive_job_control/work_calendar/work_calendar_list_loading.svg',
      name: 'work_calendar_assets_images_table_loading',
      desc: '',
      args: [],
    );
  }

  /// `Festivo local`
  String get work_calendar_local_holiday {
    return Intl.message(
      'Festivo local',
      name: 'work_calendar_local_holiday',
      desc: '',
      args: [],
    );
  }

  /// `Festivo regional`
  String get work_calendar_regional_holiday {
    return Intl.message(
      'Festivo regional',
      name: 'work_calendar_regional_holiday',
      desc: '',
      args: [],
    );
  }

  /// `Festivo nacional`
  String get work_calendar_national_holiday {
    return Intl.message(
      'Festivo nacional',
      name: 'work_calendar_national_holiday',
      desc: '',
      args: [],
    );
  }

  /// `Encuentra tu calendario`
  String get work_calendar_filter_title {
    return Intl.message(
      'Encuentra tu calendario',
      name: 'work_calendar_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get work_calendar_filter_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'work_calendar_filter_error',
      desc: '',
      args: [],
    );
  }

  /// `Filtrando calendarios`
  String get work_calendar_filter_loading {
    return Intl.message(
      'Filtrando calendarios',
      name: 'work_calendar_filter_loading',
      desc: '',
      args: [],
    );
  }

  /// `Estadisticas de calendarios laborales`
  String get work_calendar_statistics_title {
    return Intl.message(
      'Estadisticas de calendarios laborales',
      name: 'work_calendar_statistics_title',
      desc: '',
      args: [],
    );
  }

  /// `Calculando estadisticas...`
  String get work_calendar_statistics_loading {
    return Intl.message(
      'Calculando estadisticas...',
      name: 'work_calendar_statistics_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se pudo calcular las estadisticas! \n\n😢`
  String get work_calendar_statistics_error {
    return Intl.message(
      '¡Vaya no se pudo calcular las estadisticas! \n\n😢',
      name: 'work_calendar_statistics_error',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural,  one{1 calendario laboral} other{{howMany} calendarios laborales}}`
  String work_calendar_statistics_length(num howMany) {
    return Intl.plural(
      howMany,
      one: '1 calendario laboral',
      other: '$howMany calendarios laborales',
      name: 'work_calendar_statistics_length',
      desc: '',
      args: [howMany],
    );
  }

  /// `Calendarios laborales`
  String get work_calendar_list_title {
    return Intl.message(
      'Calendarios laborales',
      name: 'work_calendar_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando calendarios`
  String get work_calendar_list_loading {
    return Intl.message(
      'Cargando calendarios',
      name: 'work_calendar_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón calendarios laborales! \n\n😢`
  String get work_calendar_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón calendarios laborales! \n\n😢',
      name: 'work_calendar_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Nuevo calendario laboral`
  String get work_calendar_form_title {
    return Intl.message(
      'Nuevo calendario laboral',
      name: 'work_calendar_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get work_calendar_form_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'work_calendar_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Salvando calendario laboral`
  String get work_calendar_form_loading {
    return Intl.message(
      'Salvando calendario laboral',
      name: 'work_calendar_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `Editar calendario laboral`
  String get work_calendar_item_settings_edit {
    return Intl.message(
      'Editar calendario laboral',
      name: 'work_calendar_item_settings_edit',
      desc: '',
      args: [],
    );
  }

  /// `Duplicar calendario laboral`
  String get work_calendar_item_settings_double {
    return Intl.message(
      'Duplicar calendario laboral',
      name: 'work_calendar_item_settings_double',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar calendario laboral`
  String get work_calendar_item_settings_delete {
    return Intl.message(
      'Eliminar calendario laboral',
      name: 'work_calendar_item_settings_delete',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro de que deseas eliminar el calendario laboral?`
  String get work_calendar_item_settings_delete_confirm {
    return Intl.message(
      '¿Estas seguro de que deseas eliminar el calendario laboral?',
      name: 'work_calendar_item_settings_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get work_calendar_tutorial_description {
    return Intl.message(
      '',
      name: 'work_calendar_tutorial_description',
      desc: '',
      args: [],
    );
  }

  /// `Turnos de trabajo`
  String get work_shift_title {
    return Intl.message(
      'Turnos de trabajo',
      name: 'work_shift_title',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_shift/work_shift_list_empty.svg`
  String get work_shift_assets_images_list_empty {
    return Intl.message(
      'assets/images/hive_job_control/work_shift/work_shift_list_empty.svg',
      name: 'work_shift_assets_images_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_shift/work_shift_list_error.svg`
  String get work_shift_assets_images_list_error {
    return Intl.message(
      'assets/images/hive_job_control/work_shift/work_shift_list_error.svg',
      name: 'work_shift_assets_images_list_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_shift/work_shift_list_loading.svg`
  String get work_shift_assets_images_list_loading {
    return Intl.message(
      'assets/images/hive_job_control/work_shift/work_shift_list_loading.svg',
      name: 'work_shift_assets_images_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_shift/work_shift_screen_error.svg`
  String get work_shift_assets_images_screen_error {
    return Intl.message(
      'assets/images/hive_job_control/work_shift/work_shift_screen_error.svg',
      name: 'work_shift_assets_images_screen_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_shift/work_shift_screen_loading.svg`
  String get work_shift_assets_images_screen_loading {
    return Intl.message(
      'assets/images/hive_job_control/work_shift/work_shift_screen_loading.svg',
      name: 'work_shift_assets_images_screen_loading',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_shift/work_shift_table_empty.svg`
  String get work_shift_assets_images_table_empty {
    return Intl.message(
      'assets/images/hive_job_control/work_shift/work_shift_table_empty.svg',
      name: 'work_shift_assets_images_table_empty',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_shift/work_shift_table_error.svg`
  String get work_shift_assets_images_table_error {
    return Intl.message(
      'assets/images/hive_job_control/work_shift/work_shift_table_error.svg',
      name: 'work_shift_assets_images_table_error',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/hive_job_control/work_shift/work_shift_list_loading.svg`
  String get work_shift_assets_images_table_loading {
    return Intl.message(
      'assets/images/hive_job_control/work_shift/work_shift_list_loading.svg',
      name: 'work_shift_assets_images_table_loading',
      desc: '',
      args: [],
    );
  }

  /// `Encuentra tu turno`
  String get work_shift_filter_title {
    return Intl.message(
      'Encuentra tu turno',
      name: 'work_shift_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get work_shift_filter_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'work_shift_filter_error',
      desc: '',
      args: [],
    );
  }

  /// `Filtrando turnos`
  String get work_shift_filter_loading {
    return Intl.message(
      'Filtrando turnos',
      name: 'work_shift_filter_loading',
      desc: '',
      args: [],
    );
  }

  /// `Estadisticas de turnos`
  String get work_shift_statistics_title {
    return Intl.message(
      'Estadisticas de turnos',
      name: 'work_shift_statistics_title',
      desc: '',
      args: [],
    );
  }

  /// `Calculando estadisticas...`
  String get work_shift_statistics_loading {
    return Intl.message(
      'Calculando estadisticas...',
      name: 'work_shift_statistics_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se pudo calcular las estadisticas! \n\n😢`
  String get work_shift_statistics_error {
    return Intl.message(
      '¡Vaya no se pudo calcular las estadisticas! \n\n😢',
      name: 'work_shift_statistics_error',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural,  one{1 turno} other{{howMany} turnos}}`
  String work_shift_statistics_length(num howMany) {
    return Intl.plural(
      howMany,
      one: '1 turno',
      other: '$howMany turnos',
      name: 'work_shift_statistics_length',
      desc: '',
      args: [howMany],
    );
  }

  /// `Turnos de trabajo`
  String get work_shift_list_title {
    return Intl.message(
      'Turnos de trabajo',
      name: 'work_shift_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Cargando turnos de trabajo`
  String get work_shift_list_loading {
    return Intl.message(
      'Cargando turnos de trabajo',
      name: 'work_shift_list_loading',
      desc: '',
      args: [],
    );
  }

  /// `¡Vaya no se encontrarón turnos de trabajo! \n\n😢`
  String get work_shift_list_empty {
    return Intl.message(
      '¡Vaya no se encontrarón turnos de trabajo! \n\n😢',
      name: 'work_shift_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Nuevo trueno de trabajo`
  String get work_shift_form_title {
    return Intl.message(
      'Nuevo trueno de trabajo',
      name: 'work_shift_form_title',
      desc: '',
      args: [],
    );
  }

  /// `Ocurrio un error in esperado`
  String get work_shift_form_error {
    return Intl.message(
      'Ocurrio un error in esperado',
      name: 'work_shift_form_error',
      desc: '',
      args: [],
    );
  }

  /// `Salvando turno de trabajo`
  String get work_shift_form_loading {
    return Intl.message(
      'Salvando turno de trabajo',
      name: 'work_shift_form_loading',
      desc: '',
      args: [],
    );
  }

  /// `Editar trueno de trabajo`
  String get work_shift_item_settings_edit {
    return Intl.message(
      'Editar trueno de trabajo',
      name: 'work_shift_item_settings_edit',
      desc: '',
      args: [],
    );
  }

  /// `Duplicar trueno de trabajo`
  String get work_shift_item_settings_double {
    return Intl.message(
      'Duplicar trueno de trabajo',
      name: 'work_shift_item_settings_double',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar trueno de trabajo`
  String get work_shift_item_settings_delete {
    return Intl.message(
      'Eliminar trueno de trabajo',
      name: 'work_shift_item_settings_delete',
      desc: '',
      args: [],
    );
  }

  /// `¿Estas seguro de que deseas eliminar el trueno de trabajo?`
  String get work_shift_item_settings_delete_confirm {
    return Intl.message(
      '¿Estas seguro de que deseas eliminar el trueno de trabajo?',
      name: 'work_shift_item_settings_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get work_shift_tutorial_description {
    return Intl.message(
      '',
      name: 'work_shift_tutorial_description',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es', countryCode: 'ES'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}