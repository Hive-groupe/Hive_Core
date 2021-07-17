import 'package:flutter/material.dart';
import 'package:hive_core/code/ui/pages/assistant_screen/assistant_screen.dart';
import 'package:hive_core/code/ui/pages/chat_list_screen/chat_list_screen.dart';
import 'package:hive_core/code/ui/pages/chat_list_search_screen/chat_list_search_screen.dart';
import 'package:hive_core/code/ui/pages/login_form_screen/login_form_screen.dart';
import 'package:hive_core/code/ui/pages/notifications_screen/notifications_screen.dart';
import 'package:hive_core/code/ui/pages/profile_form_screen/profile_form_screen.dart';
import 'package:hive_core/code/ui/pages/registration_form_screen/registration_form_screen.dart';
import 'package:hive_core/code/ui/pages/restore_password_form_sreen/restore_password_form_sreen.dart';
import 'package:hive_core/code/ui/pages/settings_account_connected_accounts/connet_account_screen.dart';
import 'package:hive_core/code/ui/pages/settings_account_device_list_screen/device_list_screen.dart';
import 'package:hive_core/code/ui/pages/settings_account_update_password_form/restore_password_form_sreen.dart';
import 'package:hive_core/code/ui/pages/settings_application_chat_screen/settings_chat_screen.dart';
import 'package:hive_core/code/ui/pages/settings_help_info_screen/info_screen.dart';
import 'package:hive_core/code/ui/pages/settings_qr_code_screen/settings_qr_code_srceen.dart';
import 'package:hive_core/code/ui/pages/settings_screen/settings_screen.dart';

abstract class HiveDeliveryRoutes {
  static const String route_screen = "/";
  static const String route_assistant_screen = "/hive_assistant_screen";
  static const String route_user_login_form_screen = "/user_login_form_screen";
  static const String route_restore_password_form_screen =
      "/restore_password_form_screen";
  static const String route_user_registration_form_screen =
      "/user_registration_form_screen";
  static const String route_user_profile_screen = "/user_profile_detail_srceen";
  static const String user_profile_form_srceen = "/user_profile_form_srceen";
  static const String route_notifications_screen = "/user_notifications_srceen";
  static const String route_user_settings_screen = "/user_settings_srceen";
  static const String route_user_qr_code_settings_screen =
      "/route_user_qr_code_settings_screen";
  static const String route_user_account_settings_update_password_screen =
      "/user_account_settings_update_password_screen";
  static const String route_user_account_settings_account_connet_screen =
      "/route_user_account_settings_account_connet_screen";
  static const String route_user_account_settings_devices_screen =
      "/route_user_account_settings_devices_screen";
  static const String route_user_aplication_settings_chat_screen =
      "/route_user_aplication_settings_chat_screen";
  static const String route_user_help_settings_info_screen =
      "/hive_help_settings_info_screen";
  //static const String route_call_screen = "/hive_call_screen";
  static const String route_chat_list_screen = "/hive_chat_list_screen";
  //static const String route_chat_roon_screen = "/hive_chat_roon_screen";
  static const String route_chat_search_screen = "/hive_chat_searxh_screen";
}

abstract class HiveDeliveryPages {
  static final pages = <String, WidgetBuilder>{
    HiveDeliveryRoutes.route_assistant_screen: (context) =>
        const AssistantScreen(),
    HiveDeliveryRoutes.route_user_login_form_screen: (context) =>
        LoginFormSrceen(),
    HiveDeliveryRoutes.route_restore_password_form_screen: (context) =>
        RestorePasswordFormScreen(),
    HiveDeliveryRoutes.route_user_registration_form_screen: (context) =>
        RegistrationFormSrceen(),
    HiveDeliveryRoutes.user_profile_form_srceen: (context) =>
        ProfileFormScreen(),
    HiveDeliveryRoutes.route_notifications_screen: (context) =>
        const NotificationsScreen(),
    HiveDeliveryRoutes.route_user_settings_screen: (context) =>
        SettingsScreen(),
    HiveDeliveryRoutes.route_user_qr_code_settings_screen: (context) =>
        SettingsQrCodeScreen(),
    HiveDeliveryRoutes.route_user_account_settings_update_password_screen:
        (context) => UpdatePasswordFormScreen(),
    HiveDeliveryRoutes.route_user_account_settings_account_connet_screen:
        (context) => ConnetAccountScreen(),
    HiveDeliveryRoutes.route_user_account_settings_devices_screen: (context) =>
        DeviceListScreen(),
    HiveDeliveryRoutes.route_user_aplication_settings_chat_screen: (context) =>
        SettingsChatScreen(),
    HiveDeliveryRoutes.route_user_help_settings_info_screen: (context) =>
        InfoScreen(),
    HiveDeliveryRoutes.route_chat_list_screen: (context) =>
        const ChatListScreen(),
    HiveDeliveryRoutes.route_chat_search_screen: (context) =>
        const ChatListSearchScreen(),
  };
}
