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

  // Assets
  static const String asset_images = "assets/images/";

  // Images
  static const String image_icon_hive = "assets/images/hive_core/hive_icon.png";

  // Resources
  static const String app_title = "Hive job control";
}

class ConstString {
  // **************************************************************************
  // *                                                                        *
  // *                               Routes                                   *
  // *                                                                        *
  // **************************************************************************

  static const String route_screen = "/";
  static const String route_daily_screen = "/route_dialy_screen";

  static const String route_business_form_screen = "/business_form_srceen";
  static const String route_business_list_screen = "/business_list_srceen";
  static const String route_business_filter_screen =
      "/route_business_filter_form_screen";
  static const String route_contract_form_screen = "/contract_form_srceen";
  static const String route_contract_list_screen = "/contract_list_srceen";
  static const String route_contract_filter_screen =
      "/route_contract_filter_screen";
  static const String route_payroll_form_screen = "/payroll_form_srceen";
  static const String route_payroll_list_screen = "/payroll_list_srceen";
  static const String route_project_form_screen = "/project_form_screen";
  static const String route_project_list_screen = "/project_list_screen";
  static const String route_work_calendar_form_screen =
      "/work_calendar_form_screen";
  static const String route_work_calendar_list_screen =
      "/work_calendar_list_screen";
  static const String route_work_shift_form_screen = "/work_shift_form_screen";
  static const String route_work_shift_list_screen = "/work_shift_list_screen";
  static const String route_workday_form_screen = "/workday_form_screen";
  static const String route_workday_list_screen = "/workday_list_screen";
  // static const String route_bill_filter_screen = "/bill_filter_screen";
  static const String route_bill_form_screen = "/bill_form_screen";
  static const String route_bill_list_screen = "/bill_list_screen";
  static const String route_hours_form_screen = "/hours_form_screen";
  static const String route_hours_list_screen = "/hours_list_screen";
  static const String route_diet_form_screen = "/diet_form_screen";
  static const String route_diet_list_screen = "/diet_list_screen";
  static const String route_km_form_screen = "/km_form_screen";
  static const String route_km_list_screen = "/km_list_screen";
  static const String route_workday_screen = "/workday_screen";
  static const String route_report_screen = '/report_screen';
  static const String stopwatchWithGlobalStateScreen =
      "/stopwatchWithGlobalStateScreen";

  // **************************************************************************
  // *                                                                        *
  // *                               Assets                                   *
  // *                                                                        *
  // **************************************************************************

  static const String asset_images = "assets/images/";
  static const String image_icon_hive = "assets/images/hive_icon.png";
  static const String image_business_url =
      "https://cdn1.iconfinder.com/data/icons/occupation-gray/512/power_plant-512.png";

  // **************************************************************************
  // *                                                                        *
  // *                              Resources                                 *
  // *                                                                        *
  // **************************************************************************
  static const String app_title = "Hive job control";

  // **************************************************************************
  // *                                                                        *
  // *                     Tutorial finished keys                             *
  // *                                                                        *
  // **************************************************************************

  static const String bill_list_tutorial_finished_key =
      'bill_list_tutorial_finished_code';
  static const String business_list_tutorial_finished_key =
      'business_list_tutorial_finished_code';
  static const String contract_list_tutorial_finished_key =
      'contract_list_tutorial_finished_code';
  static const String daily_tutorial_finished_key =
      'daily_tutorial_finished_code';
  static const String diet_list_tutorial_finished_key =
      'diet_list_tutorial_finished_code';
  static const String hours_list_tutorial_finished_key =
      'hours_list_tutorial_finished_code';
  static const String km_list_tutorial_finished_key =
      'km_list_tutorial_finished_code';
  static const String payroll_list_tutorial_finished_key =
      'payroll_list_tutorial_finished_code';
  static const String project_list_tutorial_finished_key =
      'project_list_tutorial_finished_code';
  static const String work_calendar_detail_tutorial_finished_key =
      'work_calendar_detail_tutorial_finished_code';
  static const String work_calendar_list_tutorial_finished_key =
      'work_calendar_list_tutorial_finished_code';
  static const String work_shift_list_tutorial_finished_key =
      'work_shift_list_tutorial_finished_code';
  static const String workday_tutorial_finished_key =
      'workday_tutorial_finished_code';
  static const String report_tutorial_finished_key =
      'report_tutorial_finished_code';
}
