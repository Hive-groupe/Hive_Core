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