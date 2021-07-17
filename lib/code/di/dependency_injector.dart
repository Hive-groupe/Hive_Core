import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/advertising_bloc/advertising_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/call_screen_bloc/call_sreen_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/notifications_bloc/notifications_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/preferences_bloc/preferences_bloc.dart';
import 'package:hive_core/code/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/data/repositories/chat_message_repository/chat_message_repository.dart';
import 'package:hive_core/code/data/repositories/device_repository/device_repository.dart';
import 'package:hive_core/code/data/repositories/preferences_repository/preferences_repository.dart';
import 'package:hive_core/code/data/repositories/storage_repository/storage_repository.dart';
import 'package:hive_core/code/data/repositories/tutorial_repository/tutorial_repository.dart';
import 'package:hive_core/code/data/repositories/user_repository/user_repository.dart';
import 'package:provider/provider.dart';

List<RepositoryProvider> hiveRepositoriesProviderList({
  // Repositorys
  required AuthenticationRepository authenticationRepository,
  required ChatMessageRepository chatMessageRepository,
  required DeviceRepository deviceRepository,
  required StorageRepository storageRepository,
  required UserRepository userRepository,
}) {
  // PreferencesRepository
  PreferencesRepository _preferencesRepository =
      PreferencesRepositorySharedPreferencesImp();

  // TutorialRepository
  TutorialRepository _tutorialRepository =
      TutorialRepositorySharedPreferencesImp();

  return [
    RepositoryProvider<AuthenticationRepository>.value(
      value: authenticationRepository,
    ),
    RepositoryProvider<ChatMessageRepository>.value(
      value: chatMessageRepository,
    ),
    RepositoryProvider<DeviceRepository>.value(
      value: deviceRepository,
    ),
    RepositoryProvider<PreferencesRepository>.value(
      value: _preferencesRepository,
    ),
    RepositoryProvider<StorageRepository>.value(
      value: storageRepository,
    ),
    RepositoryProvider<TutorialRepository>.value(
      value: _tutorialRepository,
    ),
    RepositoryProvider<UserRepository>.value(
      value: userRepository,
    ),
  ];
}

List<ChangeNotifierProvider> hiveProviderList() => [
      // ChangeNotifierProvider(create: (_) => imageUploadProvider),
    ];

List<BlocProvider> hiveBlocProviderList({
  required AdvertisingBloc advertisingBloc,
  required AuthenticationBloc authenticationBloc,
  required CallSreenBloc callSreenBloc,
  required NotificationsBloc notificationsBloc,
  required PreferencesBloc preferencesBloc,
}) {
  return [
    BlocProvider<AdvertisingBloc>(
      create: (context) => advertisingBloc,
    ),
    BlocProvider<AuthenticationBloc>(
      create: (context) => authenticationBloc,
    ),
    BlocProvider<CallSreenBloc>(
      create: (context) => callSreenBloc,
    ),
    BlocProvider<NotificationsBloc>(
      create: (context) => notificationsBloc,
    ),
    BlocProvider<PreferencesBloc>(
      create: (context) => preferencesBloc,
    ),
  ];
}
