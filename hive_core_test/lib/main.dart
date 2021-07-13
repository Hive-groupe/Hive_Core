import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/controllers/blocs/advertising_bloc/advertising_bloc.dart';
import 'package:hive_core/code/controllers/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:hive_core/code/controllers/blocs/call_screen_bloc/call_sreen_bloc.dart';
import 'package:hive_core/code/controllers/blocs/notifications_bloc/notifications_bloc.dart';
import 'package:hive_core/code/controllers/blocs/preferences_bloc/preferences_bloc.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/repositories/call_log_repository/repository/log_repository.dart';
import 'package:hive_core/code/repositories/chat_message_repository/chat_message_repository.dart';
import 'package:hive_core/code/repositories/device_repository/device_repository.dart';
import 'package:hive_core/code/repositories/preferences_repository/preferences_repository.dart';
import 'package:hive_core/code/repositories/storage_repository/storage_repository.dart';
import 'package:hive_core/code/repositories/tutorial_repository/tutorial_repository.dart';
import 'package:hive_core/code/repositories/user_repository/user_repository.dart';
import 'package:hive_core/code/utils/configs/google_admob_configs.dart';
import 'package:hive_core/code/utils/constants/hive_const_strings.dart';
import 'package:hive_core/hive_core_app.dart';

import 'src/iu/constants/const_strings.dart';
import 'src/iu/pages/dialy_screen/dialy_screen.dart';
import 'src/iu/routes/delivery_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();
  await Firebase.initializeApp();

  // Providers
  // ImageUploadProvider _imageUploadProvider;

  // Repositorys
  AuthenticationRepository _authenticationRepository;
  PreferencesRepository _preferencesRepository;
  UserRepository _userRepository;
  DeviceRepository _deviceRepository;
  ChatMessageRepository _chatMessageRepository;
  TutorialRepository _tutorialRepository;
  StorageRepository _storageRepository;

  // Blocs
  AuthenticationBloc _authenticationBloc;
  PreferencesBloc _preferencesBloc;
  NotificationsBloc _notificationsBloc;
  AdvertisingBloc _advertisingBloc;
  CallSreenBloc _callBloc;

  String _userId;

  WidgetsFlutterBinding.ensureInitialized();

  /**
     * ************************************************************
     *                       Providers                            *
     * ************************************************************
    */
  // _imageUploadProvider = ImageUploadProvider();

  /**
     * ************************************************************
     *                       Repositories                         *
     * ************************************************************
    */
  _authenticationRepository = AuthenticationRepositoryFirebaseImpl();
  _userRepository = UserRepositoryFirebaseImpl(USERS_COLLECTION);
  _userId =
      'Fsx2Xrik6XS5WxehJnWHplXOYTv1'; // await _authenticationRepository.getCurrentUserId() ?? '';
  //===========================================================
  _preferencesRepository = PreferencesRepositorySharedPreferencesImp();
  _deviceRepository = DeviceRepositoryFirebaseImpl(
    userId: _userId,
    path: 'hive_core/hive_job_control/devices',
  );
  _chatMessageRepository =
      ChatMessageRepositoryFirebaseImpl(MESSAGES_COLLECTION);
  _tutorialRepository = TutorialRepositorySharedPreferencesImp();
  _storageRepository = StorageRepositoryFirebaseImpl(
    userId: _userId,
    path: 'hive_core/hive_job_control',
  );
  LogRepository.init(
    isHive: true,
    dbName: _userId,
  );

  /**
     * ************************************************************
     *                        BLOCS                               *
     * ************************************************************
   */
  _authenticationBloc = AuthenticationBloc(
    authenticationRepository: _authenticationRepository,
    userRepository: _userRepository,
  )..add(AppStarted());
  _preferencesBloc = PreferencesBloc(
    preferencesRepository: _preferencesRepository,
    //preferences: await _preferencesRepository.preferences,
  )..add(LoadPreferences());
  _notificationsBloc = NotificationsBloc(
    authenticationRepository: _authenticationRepository,
    deviceRepository: _deviceRepository,
  )..add(InitNotifications());
  _advertisingBloc = AdvertisingBloc(
    admobApplicationId: GOOGLE_ADMOB_API_ID,
    isPremiumAcount: isPremiumAcount,
  )..add(InitAdvertising());

  _callBloc = CallSreenBloc(
      authenticationRepository: _authenticationRepository,
      currentUserId: _userId);

  /**
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   * 
   */

  //===========================================================
  //===========================================================
  //===========================================================
  //===========================================================
  //===========================================================

  /**
   * ************************************************************
   *                        BLOCS                               *
   * ************************************************************
   */

  HiveCoreApp _myApp = HiveCoreApp(
    appLocalizationDelegate: [
      //  S.delegate,
    ],
    // supportedLocales: S.delegate.supportedLocales,
    title: ConstString.app_title,
    debugShowCheckedModeBanner: false,
    routes: DeliveryPages.pages,
    home: DialyScreen(),
    admob_application_id: GOOGLE_ADMOB_API_ID,
    repositorys: [],
    providers: [],
    blocs: [],

    //Providers
    // imageUploadProvider: _imageUploadProvider,

    // Repositorys
    preferencesRepository: _preferencesRepository,
    authenticationRepository: _authenticationRepository,
    userRepository: _userRepository,
    deviceRepository: _deviceRepository,
    chatMessageRepository: _chatMessageRepository,
    tutorialRepository: _tutorialRepository,
    storageRepository: _storageRepository,

    // Blocs
    authenticationBloc: _authenticationBloc,
    preferencesBloc: _preferencesBloc,
    notificationsBloc: _notificationsBloc,
    advertisingBloc: _advertisingBloc,
    callBloc: _callBloc,
  );

  runApp(_myApp);
}
