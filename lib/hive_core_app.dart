import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:provider/provider.dart';

import 'code/ui/pages/settings_qr_code_screen/settings_qr_code_srceen.dart';
import 'code/utils/constants/hive_const_strings.dart';
import 'code/utils/constants/hive_const_theme.dart';
import 'generated/l10n.dart';
import 'code/controllers/blocs/advertising_bloc/advertising_bloc.dart';
import 'code/controllers/blocs/authentication_bloc/authentication_bloc.dart';
import 'code/controllers/blocs/call_screen_bloc/call_sreen_bloc.dart';
import 'code/controllers/blocs/notifications_bloc/notifications_bloc.dart';
import 'code/controllers/blocs/preferences_bloc/preferences_bloc.dart';
import 'code/repositories/authentication_repository/authentication_repository.dart';
import 'code/repositories/chat_message_repository/chat_message_repository.dart';
import 'code/repositories/device_repository/device_repository.dart';
import 'code/repositories/preferences_repository/preferences_repository.dart';
import 'code/repositories/storage_repository/storage_repository.dart';
import 'code/repositories/tutorial_repository/tutorial_repository.dart';
import 'code/repositories/user_repository/user_repository.dart';
import 'code/ui/pages/assistant_screen/assistant_screen.dart';
import 'code/ui/pages/call_screen/pickup/pickup_layout.dart';
import 'code/ui/pages/chat_listing_screen/chat_listing_screen.dart';
import 'code/ui/pages/chat_search_screen/chat_search_screen.dart';
import 'code/ui/pages/login_form_screen/login_form_screen.dart';
import 'code/ui/pages/notifications_screen/notifications_screen.dart';
import 'code/ui/pages/profile_form_screen/profile_form_screen.dart';
import 'code/ui/pages/registration_form_screen/registration_form_screen.dart';
import 'code/ui/pages/restore_password_form_sreen/restore_password_form_sreen.dart';
import 'code/ui/pages/settings_account_connected_accounts/connet_account_screen.dart';
import 'code/ui/pages/settings_account_device_list_screen/device_list_screen.dart';
import 'code/ui/pages/settings_account_update_password_form/restore_password_form_sreen.dart';
import 'code/ui/pages/settings_application_chat_screen/settings_chat_screen.dart';
import 'code/ui/pages/settings_help_info_screen/info_screen.dart';
import 'code/ui/pages/settings_screen/settings_screen.dart';

class HiveCoreApp extends StatelessWidget {
  final String title;
  final bool debugShowCheckedModeBanner;
  final ThemeData theme;
  final localizationsDelegates;
  final supportedLocales;
  final Locale locale;
  final String initialRoute;
  final Widget home;
  final Map<String, WidgetBuilder> routes;
  final List<ChangeNotifierProvider> providers;
  final List<RepositoryProvider> repositorys;
  final List<BlocProvider> blocs;
  final String admob_application_id;

  HiveCoreApp(
      {Key key,
      this.title,
      this.debugShowCheckedModeBanner,
      this.theme,
      this.localizationsDelegates,
      this.supportedLocales,
      this.locale,
      this.initialRoute,
      this.home,
      this.routes,
      this.providers,
      this.repositorys,
      this.blocs,
      this.admob_application_id,

      // Providers
      // this.imageUploadProvider,

      // Repositorys
      this.authenticationRepository,
      this.preferencesRepository,
      this.userRepository,
      this.deviceRepository,
      this.chatMessageRepository,
      this.tutorialRepository,
      this.storageRepository,

      // Blocs
      this.authenticationBloc,
      this.preferencesBloc,
      this.notificationsBloc,
      this.advertisingBloc,
      this.callBloc});

  @override
  Widget build(BuildContext context) {
    return /*MultiProvider(
        providers: _getProviderList(),
        child:*/
        MultiRepositoryProvider(
            providers: _getRepositoryList(),
            child: MultiBlocProvider(
                providers: _getBlocsList(),
                child: BlocConsumer(
                    cubit: authenticationBloc,
                    listener: (context, blocAuthenticationState) {
                      if (blocAuthenticationState is Uninitialized) {
                      } else if (blocAuthenticationState is Authenticated) {
                        _initAuthenticatedStatus();
                      } else if (blocAuthenticationState is Unauthenticated) {
                        preferencesBloc.add(ResetPreferences());
                      }
                    },
                    builder: (context, blocAuthenticationState) {
                      return BlocConsumer(
                          cubit: preferencesBloc,
                          listener: (context, blocPreferencesState) {},
                          builder: (context, blocPreferencesState) {
                            // initStatus(blocAuthenticationState);
                            return _buildApp(
                                blocAuthenticationState, blocPreferencesState);
                          });
                    })))
        // )
        ;
  }

  // Providers
//  final ImageUploadProvider imageUploadProvider;

  // Repositorys
  final AuthenticationRepository authenticationRepository;
  final PreferencesRepository preferencesRepository;
  final UserRepository userRepository;
  final DeviceRepository deviceRepository;
  final ChatMessageRepository chatMessageRepository;
  final TutorialRepository tutorialRepository;
  final StorageRepository storageRepository;

  // Blocs
  final AuthenticationBloc authenticationBloc;
  final PreferencesBloc preferencesBloc;
  final NotificationsBloc notificationsBloc;
  final AdvertisingBloc advertisingBloc;
  final CallSreenBloc callBloc;

  initStatus(blocAuthenticationState) {
    notificationsBloc..add(InitNotifications());
    advertisingBloc..add(InitAdvertising());
    _initAuthenticatedStatus();
  }

  void _initAuthenticatedStatus() async {
    if (authenticationBloc.state is Authenticated) {
      notificationsBloc..add(SaveDevice());
    }
  }

  List<ChangeNotifierProvider> hiveProviderList() => [
        // ChangeNotifierProvider(create: (_) => imageUploadProvider),
      ];

  List<RepositoryProvider> hiveRepositoryProviderList() => [
        RepositoryProvider<AuthenticationRepository>.value(
          value: authenticationRepository,
        ),
        RepositoryProvider<PreferencesRepository>.value(
          value: preferencesRepository,
        ),
        RepositoryProvider<UserRepository>.value(
          value: userRepository,
        ),
        RepositoryProvider<DeviceRepository>.value(
          value: deviceRepository,
        ),
        RepositoryProvider<ChatMessageRepository>.value(
          value: chatMessageRepository,
        ),
        RepositoryProvider<TutorialRepository>.value(
          value: tutorialRepository,
        ),
        RepositoryProvider<StorageRepository>.value(
          value: storageRepository,
        ),
      ];

  List<BlocProvider> hiveBlocProviderList() => [
        BlocProvider<AuthenticationBloc>(
          create: (BuildContext context) => authenticationBloc,
        ),
        BlocProvider<PreferencesBloc>(
          create: (context) => preferencesBloc,
        ),
        BlocProvider<NotificationsBloc>(
          create: (context) => notificationsBloc,
        ),
        BlocProvider<AdvertisingBloc>(
          create: (context) => advertisingBloc,
        ),
        BlocProvider<CallSreenBloc>(
          create: (context) => callBloc,
        ),
      ];

  Map<String, WidgetBuilder> hiveRoutes = {
    HiveCoreConstString.route_assistant_screen: (context) => AssistantScreen(),
    HiveCoreConstString.route_user_login_form_screen: (context) =>
        LoginFormSrceen(),
    HiveCoreConstString.route_restore_password_form_screen: (context) =>
        RestorePasswordFormScreen(),
    HiveCoreConstString.route_user_registration_form_screen: (context) =>
        RegistrationFormSrceen(),
    HiveCoreConstString.user_profile_form_srceen: (context) =>
        ProfileFormScreen(),
    HiveCoreConstString.route_notifications_screen: (context) =>
        NotificationsScreen(),
    HiveCoreConstString.route_user_settings_screen: (context) =>
        SettingsScreen(),
    HiveCoreConstString.route_user_qr_code_settings_screen: (context) =>
        SettingsQrCodeScreen(),
    HiveCoreConstString.route_user_account_settings_update_password_screen:
        (context) => UpdatePasswordFormScreen(),
    HiveCoreConstString.route_user_account_settings_account_connet_screen:
        (context) => ConnetAccountScreen(),
    HiveCoreConstString.route_user_account_settings_devices_screen: (context) =>
        DeviceListScreen(),
    HiveCoreConstString.route_user_aplication_settings_chat_screen: (context) =>
        SettingsChatScreen(),
    HiveCoreConstString.route_user_help_settings_info_screen: (context) =>
        InfoScreen(),
    HiveCoreConstString.route_chat_list_screen: (context) =>
        ChatListingScreen(),
    HiveCoreConstString.route_chat_search_screen: (context) =>
        ChatSearchScreen(),
  };

  /* List<ChangeNotifierProvider> _getProviderList() =>
      hiveProviderList()..addAll(providers ?? []);*/

  List<RepositoryProvider> _getRepositoryList() =>
      hiveRepositoryProviderList()..addAll(repositorys ?? []);

  List<BlocProvider> _getBlocsList() =>
      hiveBlocProviderList()..addAll(blocs ?? []);

  // Routes
  Map<String, WidgetBuilder> _getRoutes() => hiveRoutes..addAll(routes ?? {});

  ThemeData _getTheme(PreferencesState blocPreferencesState) =>
      blocPreferencesState is PreferencesLoaded
          ? themes[blocPreferencesState.themeName]
          : themes['Light'];

  Widget _buildApp(AuthenticationState blocAuthenticationState,
      PreferencesState blocPreferencesState) {
    return Column(
      children: [
        Expanded(
            child: MaterialApp(
          title: title,
          debugShowCheckedModeBanner: debugShowCheckedModeBanner,
          theme: _getTheme(blocPreferencesState),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            S.delegate,
            LocaleNamesLocalizationsDelegate(),
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: blocPreferencesState is PreferencesLoaded
              ? blocPreferencesState.locale
              : null,
          /*initialRoute: blocAuthenticationState is Authenticated
          ? ConstString.route_daily_screen
          : HiveCoreConstString.route_user_login_form_screen,*/
          home: PickupLayout(scaffold: home),
          routes: _getRoutes(),
        )),
        Container(
          height: isPremiumAcount ? 0 : 50,
        )
      ],
    );
  }
}

bool isPremiumAcount = false;
