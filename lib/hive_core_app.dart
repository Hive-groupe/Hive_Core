import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:provider/provider.dart';

import 'code/data/repositories/authentication_repository/authentication_repository.dart';
import 'code/data/repositories/chat_message_repository/chat_message_repository.dart';
import 'code/data/repositories/device_repository/device_repository.dart';
import 'code/data/repositories/storage_repository/storage_repository.dart';
import 'code/data/repositories/user_repository/user_repository.dart';
import 'code/di/dependency_injector.dart';
import 'code/domain/controllers/blocs/advertising_bloc/advertising_bloc.dart';
import 'code/domain/controllers/blocs/authentication_bloc/authentication_bloc.dart';
import 'code/domain/controllers/blocs/call_screen_bloc/call_sreen_bloc.dart';
import 'code/domain/controllers/blocs/notifications_bloc/notifications_bloc.dart';
import 'code/domain/controllers/blocs/preferences_bloc/preferences_bloc.dart';
import 'code/ui/pages/call_screen/pickup/pickup_layout.dart';
import 'code/ui/routes/delivery_navigation.dart';
import 'code/ui/constants/hive_const_theme.dart';
import 'generated/l10n.dart';

class HiveCoreApp extends StatelessWidget {
  final String title;
  final bool debugShowCheckedModeBanner;
  final ThemeData? theme;
  final List<LocalizationsDelegate> appLocalizationDelegate;
  final List<Locale>? supportedLocales;
  final Locale? locale;
  final String? initialRoute;
  final Widget home;
  final Map<String, WidgetBuilder> routes;
  final List<ChangeNotifierProvider> providers;
  final List<RepositoryProvider> repositorys;
  final List<BlocProvider> blocs;
  final String admob_application_id;

  HiveCoreApp({
    Key? key,
    required this.title,
    required this.debugShowCheckedModeBanner,
    this.theme,
    this.supportedLocales,
    required this.appLocalizationDelegate,
    this.locale,
    this.initialRoute,
    required this.home,
    required this.routes,
    required this.providers,
    required this.repositorys,
    required this.blocs,
    required this.admob_application_id,

    // Providers
    // required this.imageUploadProvider,

    // Repositorys
    required this.authenticationRepository,
    required this.userRepository,
    required this.deviceRepository,
    required this.chatMessageRepository,
    required this.storageRepository,

    // Blocs
    required this.authenticationBloc,
    required this.preferencesBloc,
    required this.notificationsBloc,
    required this.advertisingBloc,
    required this.callBloc,
  });

  @override
  Widget build(BuildContext context) {
    return /*MultiProvider(
        providers: _getProviderList(),
        child:*/
        MultiRepositoryProvider(
      providers: _getRepositoryList(),
      child: MultiBlocProvider(
        providers: _getBlocsList(),
        child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          bloc: authenticationBloc,
          listener: (context, blocAuthenticationState) {
            if (blocAuthenticationState is Uninitialized) {
            } else if (blocAuthenticationState is Authenticated) {
              _initAuthenticatedStatus();
            } else if (blocAuthenticationState is Unauthenticated) {
              preferencesBloc.add(
                ResetPreferences(),
              );
            }
          },
          builder: (context, blocAuthenticationState) {
            return BlocConsumer<PreferencesBloc, PreferencesState>(
              bloc: preferencesBloc,
              listener: (context, blocPreferencesState) {},
              builder: (context, blocPreferencesState) {
                // initStatus(blocAuthenticationState);
                return _buildApp(
                  blocPreferencesState: blocPreferencesState,
                );
              },
            );
          },
        ),
      ),
    )
        // )
        ;
  }

  // Providers
//  final ImageUploadProvider imageUploadProvider;

  // Repositorys
  final AuthenticationRepository authenticationRepository;
  final UserRepository userRepository;
  final DeviceRepository deviceRepository;
  final ChatMessageRepository chatMessageRepository;
  final StorageRepository storageRepository;

  // Blocs
  final AuthenticationBloc authenticationBloc;
  final PreferencesBloc preferencesBloc;
  final NotificationsBloc notificationsBloc;
  final AdvertisingBloc advertisingBloc;
  final CallSreenBloc callBloc;

  initStatus(blocAuthenticationState) {
    notificationsBloc
      ..add(
        InitNotifications(),
      );
    advertisingBloc
      ..add(
        InitAdvertising(),
      );
    _initAuthenticatedStatus();
  }

  void _initAuthenticatedStatus() async {
    if (authenticationBloc.state is Authenticated) {
      notificationsBloc
        ..add(
          SaveDevice(),
        );
    }
  }

  /* List<ChangeNotifierProvider> _getProviderList() =>
      hiveProviderList()..addAll(providers ?? []);*/

  List<RepositoryProvider> _getRepositoryList() => hiveRepositoriesProviderList(
        authenticationRepository: authenticationRepository,
        chatMessageRepository: chatMessageRepository,
        deviceRepository: deviceRepository,
        storageRepository: storageRepository,
        userRepository: userRepository,
      )..addAll(repositorys);

  List<BlocProvider> _getBlocsList() => hiveBlocProviderList(
        advertisingBloc: advertisingBloc,
        authenticationBloc: authenticationBloc,
        callSreenBloc: callBloc,
        notificationsBloc: notificationsBloc,
        preferencesBloc: preferencesBloc,
      )..addAll(blocs);

  // Routes
  Map<String, WidgetBuilder> _getRoutes() =>
      HiveDeliveryPages.pages..addAll(routes);

  ThemeData? _getTheme(PreferencesState? blocPreferencesState) =>
      blocPreferencesState is PreferencesLoaded
          ? themes[blocPreferencesState.themeName]
          : themes['Light'];

  Widget _buildApp({
    required PreferencesState blocPreferencesState,
  }) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      theme: _getTheme(blocPreferencesState),
      localizationsDelegates: [
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
        // GlobalCupertinoLocalizations.delegate,
        HiveCoreString.delegate,
        LocaleNamesLocalizationsDelegate(),
      ]..addAll(appLocalizationDelegate),
      supportedLocales:
          supportedLocales ?? HiveCoreString.delegate.supportedLocales,
      locale: blocPreferencesState is PreferencesLoaded
          ? blocPreferencesState.locale
          : null,
      /*initialRoute: blocAuthenticationState is Authenticated
          ? ConstString.route_daily_screen
          : DeliveryRoutes.route_user_login_form_screen,*/
      home: PickupLayout(scaffold: home),
      routes: _getRoutes(),
    );
  }
}

bool isPremiumAcount = false;
