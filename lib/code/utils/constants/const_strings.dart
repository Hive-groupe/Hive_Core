const String MESSAGES_COLLECTION = "hive_core/hive_job_control/messages";
const String USERS_COLLECTION = "users";
const String CALL_COLLECTION = "hive_core/hive_job_control/call";
const String CONTACTS_COLLECTION = "hive_core/hive_job_control/chat_contacts";

const String TIMESTAMP_FIELD = "timestamp";
const String EMAIL_FIELD = "email";

const String MESSAGE_TYPE_IMAGE = "image";

const String CALL_STATUS_DIALLED = "dialled";
const String CALL_STATUS_RECEIVED = "received";
const String CALL_STATUS_MISSED = "missed";

const String noImageAvailable =
    "https://www.esm.rochester.edu/uploads/NoPhotoAvailable.jpg";

class HiveCoreConstString {
  // Routes
  static const String route_screen = "/";
  static const String route_assistant_screen = "/hive_assistant_screen";
  static const String route_user_login_form_screen = "/user_login_form_screen";
  static const String route_restore_password_form_screen =
      "/restore_password_form_screen";
  static const String route_user_registration_form_screen =
      "/user_registration_form_screen";
  static const String route_user_profile_screen =
      "/user_profile_detail_codeeen";
  static const String user_profile_form_codeeen = "/user_profile_form_codeeen";
  static const String route_notifications_screen =
      "/user_notifications_codeeen";
  static const String route_user_settings_screen = "/user_settings_codeeen";
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

  // Assets
  static const String asset_images = "assets/images/";

  // Images
  static const String image_icon_hive = "assets/images/hive_core/hive_icon.png";

  // Resources
  static const String app_title = "Hive job control";
}
