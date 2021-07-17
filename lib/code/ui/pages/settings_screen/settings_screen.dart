import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:hive_core/code/domain/controllers/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/preferences_bloc/preferences_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/settings_screen_bloc/settings_item.dart';
import 'package:hive_core/code/domain/controllers/blocs/settings_screen_bloc/settings_screen_bloc.dart';
import 'package:hive_core/code/ui/pages/settings_application_theme_screen/settings_theme_screen.dart';
import 'package:hive_core/code/ui/routes/delivery_navigation.dart';
import 'package:hive_core/code/ui/widgets/appbar.dart';
import 'package:hive_core/code/ui/constants/hive_const_colors.dart';
import 'package:hive_core/generated/l10n.dart';

import '../settings_application_locale_screen/settings_locale_screen.dart';
import '../settings_application_notifications_screen/settings_notifications_screen.dart';
import 'widgets/profile_holder.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late SettingsScreenBloc _settingsScreenBloc;
  late AuthenticationBloc _authenticationBloc;
  late PreferencesBloc _preferencesBloc;

  late TextEditingController _searchController;

  @override
  void initState() {
    _settingsScreenBloc = SettingsScreenBloc(context: context);
    _authenticationBloc = BlocProvider.of<AuthenticationBloc>(context);
    _preferencesBloc = BlocProvider.of<PreferencesBloc>(context);

    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _settingsScreenBloc.close();
    _searchController.dispose();
    super.dispose();
  }

  void _startSearching() {
    _searchController.text = '';
    _settingsScreenBloc.add(
      StartPreferencesSearching(),
    );
  }

  void _cancelSearch() {
    _settingsScreenBloc.add(
      CancelPreferencesSearch(),
    );
    _searchController.text = '';
  }

  void _resetSearch() {
    _searchController.text = '';
    _settingsScreenBloc.add(
      ResetPreferencesSearch(),
    );
  }

  void _searching(String value) => _settingsScreenBloc.add(
        SearchingPreferencess(value: value),
      );

  void _showAccountSettings() => _settingsScreenBloc.add(
        OnShowAccountSettings(),
      );

  void _showApplicationSettings() => _settingsScreenBloc.add(
        OnShowApplicationSettings(),
      );

  void _showHelpSettings() => _settingsScreenBloc.add(
        OnShowHelpSettings(),
      );

  String _getTitleCategory(
    String category,
  ) {
    switch (category) {
      case 'Account':
        return HiveCoreString.of(context).settings_account_title;

      case 'Application':
        return HiveCoreString.of(context).settings_application_title;

      case 'Help':
        return HiveCoreString.of(context).settings_help_title;

      default:
        return HiveCoreString.of(context).user_settings_title;
    }
  }

  List<SettingsItem> _getCategoryListItems(
      String category, PreferencesLoaded state) {
    switch (category) {
      case 'Account':
        return _settingsAccountList();

      case 'Application':
        return _settingsApplicationList(state);

      case 'Help':
        return _settingsHelpList();

      default:
        return settingsList(state);
    }
  }

/*
 *****************************************************
 *                                                   *
 *                  Account actions                  *
 *                                                   *
 *****************************************************
 */

  void _goUpdatePasswordForm() => Navigator.pushNamed(
        context,
        HiveDeliveryRoutes.route_user_account_settings_update_password_screen,
      );

  void _goConnetAccountScreen() => Navigator.pushNamed(
        context,
        HiveDeliveryRoutes.route_user_account_settings_account_connet_screen,
      );

  void _goDeviceListScreen() => Navigator.pushNamed(
        context,
        HiveDeliveryRoutes.route_user_account_settings_devices_screen,
      );

  void _onCloseSeasion() {
    Navigator.of(context).pop();
    _preferencesBloc.add(
      ResetPreferences(),
    );
    _authenticationBloc.add(
      LogedOut(),
    );
    Navigator.pushNamed(
      context,
      HiveDeliveryRoutes.route_user_login_form_screen,
    );
  }

  Future<void> _confirmDialogBox() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(HiveCoreString.of(context).user_signout),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  Text(
                    HiveCoreString.of(context)
                        .user_settings_close_confirmation_seasion,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(HiveCoreString.of(context).cancel),
              ),
              TextButton(
                onPressed: _onCloseSeasion,
                child: Text(HiveCoreString.of(context).yes),
              ),
            ],
          );
        });
  }

  /*
 *****************************************************
 *                                                   *
 *                Application actions                *
 *                                                   *
 ****************************************************
 */

  _goThemeSettingsScreen() => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => SettingsThemeScreen(),
        ),
      );

  _goLocateSettingsScreen() => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => SettingsLocateScreen(),
        ),
      );

  _goNotificatiosSettingsScreen() => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => SettingsNotificationsScreen(),
        ),
      );

  _goChatSettingsScreen() => Navigator.pushNamed(
        context,
        HiveDeliveryRoutes.route_user_aplication_settings_chat_screen,
      );

  String _localizeLocale(BuildContext context, Locale locale) {
    if (locale == null) {
      return HiveCoreString.of(context).systemLanguage;
    } else {
      final String localeString = LocaleNames.of(context)!.nameOf(
        locale.toString(),
      )!;
      return localeString[0].toUpperCase() + localeString.substring(1);
    }
  }

  /*
 *****************************************************
 *                                                   *
 *                     Help actions                  *
 *                                                   *
 *****************************************************
 */
  void _goInfoApp() => Navigator.pushNamed(
        context,
        HiveDeliveryRoutes.route_user_help_settings_info_screen,
      );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsScreenBloc>(
          create: (BuildContext context) => _settingsScreenBloc,
        ),
      ],
      child: BlocConsumer(
        bloc: _preferencesBloc,
        listener: (context, state) {},
        builder: (context, preferencesState) {
          if (preferencesState is PreferencesLoaded) {
            return BlocConsumer(
              bloc: _settingsScreenBloc,
              listener: (context, state) {},
              builder: (context, state) {
                if (state is SettingsScreenInitial) {
                  return _initialBuild(state);
                } else if (state is SettingsScreenSearching) {
                  return _searchinglBuild(state, preferencesState);
                } else if (state is SettingsScreenShowCategory) {
                  return _showingCategoryBuild(state, preferencesState);
                } else {
                  return Container();
                }
              },
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget _initialBuild(
    SettingsScreenInitial state,
  ) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
      headerSliverBuilder: (
        BuildContext context,
        bool innerBoxIsScrolled,
      ) {
        return <Widget>[
          _appBarNotSearching(),
        ];
      },
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              PofileHolder(),
              _divider(),
              _accountHolder(),
              _applicationHolder(),
              _helpHolder(),
              _divider(),
              _appIconHolder(),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _searchinglBuild(
    SettingsScreenSearching state,
    PreferencesLoaded preferencesState,
  ) {
    var _list = settingsList(preferencesState);

    return Scaffold(
      appBar: _appBarSearching(
          _cancelSearch, _resetSearch, _searching, _searchController),
      body: Container(
        child: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (BuildContext context, int index) {
            return _itemHolder(
              icon: _list[index].icon,
              title: _list[index].title,
              subTitle: _list[index].description ?? '',
              onTap: _list[index].onTap,
            );
          },
        ),
      ),
    );
  }

  Widget _showingCategoryBuild(
    SettingsScreenShowCategory state,
    PreferencesLoaded preferencesState,
  ) {
    String getTitleCategory = _getTitleCategory(state.category);
    var _list = _getCategoryListItems(state.category, preferencesState);

    return Scaffold(
      appBar: _appBarShowingCategory(getTitleCategory),
      body: Container(
        child: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (BuildContext context, int index) {
            return _itemHolder(
              icon: _list[index].icon,
              title: _list[index].title,
              subTitle: _list[index].description ?? '',
              onTap: _list[index].onTap,
            );
          },
        ),
      ),
    );
  }

  CupertinoSliverNavigationBar _appBarNotSearching() {
    return CupertinoSliverNavigationBar(
      padding: EdgeInsetsDirectional.only(
        start: 0,
      ),
      leading: Material(
        color: Colors.transparent,
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.grey,
          ),
        ),
      ),
      largeTitle: Text(HiveCoreString.of(context).user_settings_title),
      trailing: Material(
        color: Colors.transparent,
        child: IconButton(
          onPressed: _startSearching,
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  CustomAppBar _appBarSearching(
    Function cancelSearch,
    Function resetSearch,
    Function searching,
    TextEditingController searchController,
  ) {
    return CustomAppBar(
      centerTitle: false,
      leading: IconButton(
        onPressed: () => cancelSearch(),
        icon: Icon(
          CupertinoIcons.back,
          color: Colors.grey,
          size: 18,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 10),
        child: TextField(
          controller: searchController,
          onChanged: (String value) => searching(value),
          style: new TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color),
          cursorColor: Theme.of(context).textTheme.bodyText1!.color,
          autofocus: true,
          decoration: InputDecoration(
            hintText: "Buscar...",
            hintStyle: TextStyle(
              color: HiveCoreConstColors.separatorColor,
            ),
            border: InputBorder.none,
            focusColor: Colors.white,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).accentColor),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).accentColor),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => resetSearch(),
          icon: Icon(
            Icons.clear,
            color: Colors.grey,
            size: 18,
          ),
        ),
      ],
    );
  }

  CustomAppBar _appBarShowingCategory(
    String title,
  ) {
    return CustomAppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: _cancelSearch,
        icon: Icon(
          CupertinoIcons.back,
          color: Colors.grey,
          size: 18,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyText1!.color,
            fontWeight: FontWeight.w600),
      ),
      actions: <Widget>[
        Container(
          child: IconButton(
            onPressed: _startSearching,
            icon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 18,
            ),
          ),
        ),
      ],
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: Divider(
        color: Colors.grey,
      ),
    );
  }

  Widget _itemHolder({
    required String title,
    required String subTitle,
    required IconData icon,
    required Function onTap,
  }) {
    return ListTile(
      onTap: () => onTap(),
      leading: Container(
        child: Icon(icon),
      ),
      title: Container(
        child: Text(title),
      ),
      subtitle: Container(
        child: Text(subTitle),
      ),
    );
  }

  Widget _accountHolder() {
    return ListTile(
      onTap: _showAccountSettings,
      leading: Container(
        child: Icon(Icons.verified_user),
      ),
      title: Container(
        child: Text(HiveCoreString.of(context).settings_account_title),
      ),
      subtitle: Container(
        child: Text('Privacidad, Cambio de contraseña'),
      ),
    );
  }

  Widget _applicationHolder() {
    return ListTile(
      onTap: _showApplicationSettings,
      leading: Container(
        child: Icon(CupertinoIcons.lab_flask),
      ),
      title: Container(
        child: Text(HiveCoreString.of(context).settings_application_title),
      ),
      subtitle: Container(
        child: Text('Tema, Idioma, Notificaciones'),
      ),
    );
  }

  Widget _helpHolder() {
    return ListTile(
      onTap: _showHelpSettings,
      leading: Container(
        child: Icon(Icons.help_outline),
      ),
      title: Container(
        child: Text(HiveCoreString.of(context).settings_help_title),
      ),
      subtitle: Container(
        child: Text('Preguntas frecuentes, Contáctenos, politicas'),
      ),
    );
  }

  Widget _appIconHolder() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 25),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                'from',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                'HIVE',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<SettingsItem> settingsList(PreferencesLoaded state) => []
    ..addAll(
      _settingsAccountList(),
    )
    ..addAll(
      _settingsApplicationList(state),
    )
    ..addAll(
      _settingsHelpList(),
    );

  /*
 *****************************************************
 *                                                   *
 *                   Account items                   *
 *                                                   *
 *****************************************************
 */

  List<SettingsItem> _settingsAccountList() => []
    ..add(
      _changePassword(),
    )
    ..add(
      _connectedAccounts(),
    )
    ..add(
      _devices(),
    )
    ..add(
      _paymentMethods(),
    )
    ..add(
      _signOfft(),
    )
    ..add(
      _deleteAccount(),
    );

  SettingsItem _changePassword() => SettingsItem(
        icon: Icons.lock_outline,
        title: HiveCoreString.of(context).settings_update_password,
        onTap: _goUpdatePasswordForm,
      );

  SettingsItem _connectedAccounts() => SettingsItem(
        icon: Icons.cloud_queue,
        title: HiveCoreString.of(context).settings_connected_accounts,
        onTap: _goConnetAccountScreen,
      );

  SettingsItem _devices() => SettingsItem(
        icon: Icons.computer,
        title: HiveCoreString.of(context).settings_devices,
        onTap: _goDeviceListScreen,
      );

  SettingsItem _paymentMethods() => SettingsItem(
        icon: Icons.payment,
        title: HiveCoreString.of(context).settings_payment_methods,
        onTap: () {},
      );

  SettingsItem _signOfft() => SettingsItem(
        icon: Icons.exit_to_app,
        title: HiveCoreString.of(context).user_signout,
        onTap: _confirmDialogBox,
      );

  SettingsItem _deleteAccount() => SettingsItem(
        icon: CupertinoIcons.delete_simple,
        title: HiveCoreString.of(context).settings_delete_account,
        onTap: () {},
      );

  /*
   *****************************************************
   *                                                   *
   *                  Application items                *
   *                                                   *
   *****************************************************
   */

  List<SettingsItem> _settingsApplicationList(PreferencesLoaded state) => []
    ..add(
      _theme(state),
    )
    ..add(
      _locale(state),
    )
    ..add(
      _notification(),
    )
    ..add(
      _chats(),
    )
    ..add(
      _downloads(),
    )
    ..add(
      _reproduction(),
    );

  SettingsItem _theme(
    PreferencesLoaded state,
  ) =>
      SettingsItem(
        icon: Icons.format_paint,
        title: HiveCoreString.of(context).settings_application_theme,
        description: state.themeName,
        onTap: _goThemeSettingsScreen,
      );

  SettingsItem _locale(
    PreferencesLoaded state,
  ) =>
      SettingsItem(
        icon: Icons.language,
        title: HiveCoreString.of(context).settings_application_locale,
        description: _localizeLocale(context, state.locale!),
        onTap: _goLocateSettingsScreen,
      );

  SettingsItem _notification() => SettingsItem(
        icon: Icons.notifications_none,
        title: HiveCoreString.of(context).settings_application_notifications,
        description: 'Tonos de mensajes, llamadas',
        onTap: _goNotificatiosSettingsScreen,
      );

  SettingsItem _chats() => SettingsItem(
        icon: Icons.chat_bubble_outline,
        title: HiveCoreString.of(context).settings_application_chat,
        description: 'Fondos de pantalla, historial de chat',
        onTap: _goChatSettingsScreen,
      );

  SettingsItem _downloads() => SettingsItem(
        icon: Icons.file_download,
        title: HiveCoreString.of(context).settings_application_downloads,
        description: 'Uso de red, descargas automaticas',
        onTap: () {},
      );

  SettingsItem _reproduction() => SettingsItem(
        icon: Icons.play_circle_outline,
        title: HiveCoreString.of(context).settings_application_reproduction,
        onTap: () {},
      );

  /*
   *****************************************************
   *                                                   *
   *                     Help items                    *
   *                                                   *
   *****************************************************
   */

  List<SettingsItem> _settingsHelpList() => []
    ..add(
      _frequentQuestions(),
    )
    ..add(
      _contactUs(),
    )
    ..add(
      _onditionsAndPrivacy(),
    )
    ..add(
      _info(),
    );

  SettingsItem _frequentQuestions() => SettingsItem(
        icon: Icons.help_outline,
        title: HiveCoreString.of(context).settings_help_frequent_questions,
        onTap: () {},
      );

  SettingsItem _contactUs() => SettingsItem(
        icon: Icons.group,
        title: HiveCoreString.of(context).settings_help_contact,
        description: '¿Preguntas? ¿Necesitas?',
        onTap: () {},
      );

  SettingsItem _onditionsAndPrivacy() => SettingsItem(
        icon: Icons.description,
        title: HiveCoreString.of(context).settings_help_conditions,
        onTap: () {},
      );

  SettingsItem _info() => SettingsItem(
        icon: Icons.info_outline,
        title: HiveCoreString.of(context).settings_help_info,
        onTap: _goInfoApp,
      );
}
