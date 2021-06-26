// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(howMany) =>
      "${Intl.plural(howMany, one: 'Kilometro', other: 'Kilometros')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "app_title": MessageLookupByLibrary.simpleMessage("Hive laboral life"),
        "asset_images": MessageLookupByLibrary.simpleMessage("assets/images/"),
        "average": MessageLookupByLibrary.simpleMessage("Average"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "copy": MessageLookupByLibrary.simpleMessage("Copiar enlace"),
        "default_error":
            MessageLookupByLibrary.simpleMessage("Oh, oh, algo ha fallado..."),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "download": MessageLookupByLibrary.simpleMessage("Descargar"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "image_icon_hive":
            MessageLookupByLibrary.simpleMessage("assets/images/hive_icon.png"),
        "km_assets_images_list_empty": MessageLookupByLibrary.simpleMessage(
            "assets/images/hive_job_control/km/km_list_empty.svg"),
        "km_assets_images_list_error": MessageLookupByLibrary.simpleMessage(
            "assets/images/hive_job_control/km/km_list_error.svg"),
        "km_assets_images_list_loading": MessageLookupByLibrary.simpleMessage(
            "assets/images/hive_job_control/km/km_list_loading.svg"),
        "km_assets_images_monitor": MessageLookupByLibrary.simpleMessage(
            "assets/images/hive_job_control/km/km_monitor.svg"),
        "km_assets_images_monitor_error": MessageLookupByLibrary.simpleMessage(
            "assets/images/hive_job_control/km/km_monitor_error.svg"),
        "km_assets_images_monitor_loading":
            MessageLookupByLibrary.simpleMessage(
                "assets/images/hive_job_control/km/km_monitor_loading.svg"),
        "km_assets_images_screen_error": MessageLookupByLibrary.simpleMessage(
            "assets/images/hive_job_control/km/km_screen_error.svg"),
        "km_assets_images_screen_loading": MessageLookupByLibrary.simpleMessage(
            "assets/images/hive_job_control/km/km_screen_loading.svg"),
        "km_assets_images_table_empty": MessageLookupByLibrary.simpleMessage(
            "assets/images/hive_job_control/km/km_table_empty.svg"),
        "km_assets_images_table_error": MessageLookupByLibrary.simpleMessage(
            "assets/images/hive_job_control/km/km_table_error.svg"),
        "km_assets_images_table_loading": MessageLookupByLibrary.simpleMessage(
            "assets/images/hive_job_control/km/km_table_loading.svg"),
        "km_filter_error": MessageLookupByLibrary.simpleMessage(
            "Ocurrio un error in esperado"),
        "km_filter_holder_business":
            MessageLookupByLibrary.simpleMessage("Empresa"),
        "km_filter_loading":
            MessageLookupByLibrary.simpleMessage("Filtrando Km"),
        "km_filter_title":
            MessageLookupByLibrary.simpleMessage("Encuentra tu Km"),
        "km_form_error": MessageLookupByLibrary.simpleMessage(
            "Ocurrio un error in esperado"),
        "km_form_loading": MessageLookupByLibrary.simpleMessage("Salvando Km"),
        "km_form_title": MessageLookupByLibrary.simpleMessage("Nuevo Km"),
        "km_item_settings_delete":
            MessageLookupByLibrary.simpleMessage("Eliminar Km"),
        "km_item_settings_delete_confirm": MessageLookupByLibrary.simpleMessage(
            "¿Estas seguro de que deseas eliminar los Km?"),
        "km_item_settings_double":
            MessageLookupByLibrary.simpleMessage("Duplicar Km"),
        "km_item_settings_edit":
            MessageLookupByLibrary.simpleMessage("Editar Km"),
        "km_list_empty": MessageLookupByLibrary.simpleMessage(
            "¡Vaya no se encontrarón Km! \n\n😢"),
        "km_list_loading": MessageLookupByLibrary.simpleMessage("Cargando Km"),
        "km_list_title": MessageLookupByLibrary.simpleMessage("Km"),
        "km_statistics_error": MessageLookupByLibrary.simpleMessage(
            "¡Vaya no se pudo calcular las estadisticas! \n\n😢"),
        "km_statistics_length": m0,
        "km_statistics_loading":
            MessageLookupByLibrary.simpleMessage("Calculando estadisticas..."),
        "km_statistics_title":
            MessageLookupByLibrary.simpleMessage("Estadisiticas de Km"),
        "km_title": MessageLookupByLibrary.simpleMessage("Km"),
        "km_tutorial_description": MessageLookupByLibrary.simpleMessage(
            "Cando necesites viajar y tengas Km que imputar, almacénalos en este apartado. Tener tus viajes registrados te permitirá obtener información instantánea de los viajes que realizaste, los destinos en los que estuviste, o el dinero que te corresponde por el traslado."),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "login_form_error":
            MessageLookupByLibrary.simpleMessage("Login Failure"),
        "login_form_loading":
            MessageLookupByLibrary.simpleMessage("Loading user"),
        "login_form_login_button":
            MessageLookupByLibrary.simpleMessage("Login"),
        "login_form_password_holder_error":
            MessageLookupByLibrary.simpleMessage("Invalid password"),
        "login_form_password_holder_hint":
            MessageLookupByLibrary.simpleMessage("Password"),
        "login_form_password_holder_label":
            MessageLookupByLibrary.simpleMessage("Password"),
        "login_form_recover_password_button":
            MessageLookupByLibrary.simpleMessage("I forgot my password"),
        "login_form_register_button":
            MessageLookupByLibrary.simpleMessage("Register"),
        "login_form_title": MessageLookupByLibrary.simpleMessage("Sing in"),
        "login_form_username_holder_error":
            MessageLookupByLibrary.simpleMessage("Invalid user"),
        "login_form_username_holder_hint":
            MessageLookupByLibrary.simpleMessage("you@example.com"),
        "login_form_username_holder_label":
            MessageLookupByLibrary.simpleMessage("Email Address"),
        "maximum": MessageLookupByLibrary.simpleMessage("Maximum"),
        "minimum": MessageLookupByLibrary.simpleMessage("Minimum"),
        "monitor": MessageLookupByLibrary.simpleMessage("Monitor"),
        "profile_form_firstname_holder_error":
            MessageLookupByLibrary.simpleMessage("Primer apellido invalido"),
        "profile_form_firstname_holder_hint":
            MessageLookupByLibrary.simpleMessage("Primer apellido"),
        "profile_form_firstname_holder_label":
            MessageLookupByLibrary.simpleMessage("Primer apellido"),
        "profile_form_name_holder_error":
            MessageLookupByLibrary.simpleMessage("Nombre invalido"),
        "profile_form_name_holder_hint":
            MessageLookupByLibrary.simpleMessage("Nombre"),
        "profile_form_name_holder_label":
            MessageLookupByLibrary.simpleMessage("Nombre"),
        "profile_form_nickname_holder_error":
            MessageLookupByLibrary.simpleMessage("Apodo invalido"),
        "profile_form_nickname_holder_hint":
            MessageLookupByLibrary.simpleMessage("Apodo"),
        "profile_form_nickname_holder_label":
            MessageLookupByLibrary.simpleMessage("Apodo"),
        "profile_form_secondname_holder_error":
            MessageLookupByLibrary.simpleMessage("Segundo apellido invalido"),
        "profile_form_secondname_holder_hint":
            MessageLookupByLibrary.simpleMessage("Segundo apellido"),
        "profile_form_secondname_holder_label":
            MessageLookupByLibrary.simpleMessage("Segundo apellido"),
        "profile_form_title": MessageLookupByLibrary.simpleMessage("Profile"),
        "record": MessageLookupByLibrary.simpleMessage("Record"),
        "save": MessageLookupByLibrary.simpleMessage("Guardar"),
        "send": MessageLookupByLibrary.simpleMessage("Enviar"),
        "share": MessageLookupByLibrary.simpleMessage("Compartir en..."),
        "skip_tutorial": MessageLookupByLibrary.simpleMessage("Skip tutorial"),
        "social_form_holder_email":
            MessageLookupByLibrary.simpleMessage("Correo electronico"),
        "social_form_holder_email_invalid":
            MessageLookupByLibrary.simpleMessage(
                "Correo electronico no valido"),
        "social_form_holder_facebook":
            MessageLookupByLibrary.simpleMessage("Facebook"),
        "social_form_holder_facebook_invalid":
            MessageLookupByLibrary.simpleMessage("Facebook no valido"),
        "social_form_holder_instagram":
            MessageLookupByLibrary.simpleMessage("Instagram"),
        "social_form_holder_instagram_invalid":
            MessageLookupByLibrary.simpleMessage("Instagram no valido"),
        "social_form_holder_phone":
            MessageLookupByLibrary.simpleMessage("Phone"),
        "social_form_holder_phone_invalid":
            MessageLookupByLibrary.simpleMessage("Telefono no valido"),
        "social_form_holder_twitter":
            MessageLookupByLibrary.simpleMessage("Twitter"),
        "social_form_holder_twitter_invalid":
            MessageLookupByLibrary.simpleMessage("Twitter no valido"),
        "social_form_title":
            MessageLookupByLibrary.simpleMessage("Contact information"),
        "systemLanguage":
            MessageLookupByLibrary.simpleMessage("System language"),
        "tutorial": MessageLookupByLibrary.simpleMessage("tutorial"),
        "unknown_error":
            MessageLookupByLibrary.simpleMessage("Error inesperado"),
        "user_edit_profile":
            MessageLookupByLibrary.simpleMessage("Edit profile"),
        "user_profile_title": MessageLookupByLibrary.simpleMessage("Profile"),
        "user_settings_title": MessageLookupByLibrary.simpleMessage("Settings"),
        "user_signout": MessageLookupByLibrary.simpleMessage("Sign out"),
        "user_title": MessageLookupByLibrary.simpleMessage("user"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
