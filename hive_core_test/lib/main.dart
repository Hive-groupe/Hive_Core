import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/data/repositories/call_log_repository/repository/log_repository.dart';
import 'package:hive_core/code/data/repositories/chat_message_repository/chat_message_repository.dart';
import 'package:hive_core/code/data/repositories/device_repository/device_repository.dart';
import 'package:hive_core/code/data/repositories/preferences_repository/preferences_repository.dart';
import 'package:hive_core/code/data/repositories/storage_repository/storage_repository.dart';
import 'package:hive_core/code/data/repositories/user_repository/user_repository.dart';
import 'package:hive_core/code/domain/controllers/blocs/advertising_bloc/advertising_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/call_screen_bloc/call_sreen_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/notifications_bloc/notifications_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/preferences_bloc/preferences_bloc.dart';
import 'package:hive_core/code/utils/configs/google_admob_configs.dart';
import 'package:hive_core/code/ui/constants/hive_const_strings.dart';
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
  _userId = await _authenticationRepository.getCurrentUserId() ?? '';
  //===========================================================
  _preferencesRepository = PreferencesRepositorySharedPreferencesImp();
  _deviceRepository = DeviceRepositoryFirebaseImpl(
    userId: _userId,
    path: 'hive_core/hive_job_control/devices',
  );
  _chatMessageRepository =
      ChatMessageRepositoryFirebaseImpl(MESSAGES_COLLECTION);
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
    appLocalizationDelegate: const [
      //  S.delegate,
    ],
    // supportedLocales: S.delegate.supportedLocales,
    title: ConstString.app_title,
    debugShowCheckedModeBanner: false,
    routes: DeliveryPages.pages,
    home: const DialyScreen(),
    admob_application_id: GOOGLE_ADMOB_API_ID,
    repositorys: const [],
    providers: const [],
    blocs: const [],

    //Providers
    // imageUploadProvider: _imageUploadProvider,

    // Repositorys
    authenticationRepository: _authenticationRepository,
    userRepository: _userRepository,
    deviceRepository: _deviceRepository,
    chatMessageRepository: _chatMessageRepository,
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
