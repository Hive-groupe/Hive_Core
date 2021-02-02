import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/preferences_bloc/preferences_bloc.dart';
import 'package:hive_core/code/ui/widgets/settings_group.dart';
import 'package:hive_core/code/utils/constants/hive_const_colors.dart';
import 'package:hive_core/code/utils/constants/hive_const_theme.dart';

class SettingsThemeForm extends StatefulWidget {
  @override
  _SettingsThemeFormState createState() => _SettingsThemeFormState();
}

class _SettingsThemeFormState extends State<SettingsThemeForm> {
  PreferencesBloc _preferencesBloc;

  String _currentThemeItem;

  @override
  void initState() {
    _preferencesBloc = context.bloc<PreferencesBloc>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _onChangeTheme(String themeName) {
    _currentThemeItem = themeName;
    _preferencesBloc.add(ChangeTheme(themeName));
  }

  Future<void> _onConfirmResetNotificationsPreferences() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
                'Resetear las preferencias de apariencia'), // HiveCoreString.of(context).user_signout),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  Text(
                      '¿Estas seguro de que deseas eliminar la configuración actual?'), // HiveCoreString.of(context).user_settings_close_confirmation_seasion),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text(HiveCoreString.of(context).cancel),
              ),
              FlatButton(
                onPressed: () {}, // _onResetNotificationsferences,
                child: Text(HiveCoreString.of(context).yes),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        cubit: _preferencesBloc,
        listener: (context, state) {},
        builder: (context, state) {
          if (state is PreferencesLoaded) {
            return _buildPreferencesLoaded(state);
          } else {
            return Container();
          }
        });
  }

  Widget _buildPreferencesLoaded(PreferencesLoaded state) {
    return Container(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _themeGroup(state),
            _textGroup(state),
            _resertGroup(state),
          ],
        ),
      ),
    );
  }

  _themeGroup(PreferencesLoaded state) {
    return SettingsGroup(
      title: HiveCoreString.of(context).settings_application_theme,
      elements: [_themeSelectorHolder(state)],
    );
  }

  Widget _themeSelectorHolder(PreferencesLoaded state) {
    _currentThemeItem = state.themeName;
    return ListTile(
        /*title: Container(
          child: Text(HiveCoreString.of(context).settings_application_theme),
        ),*/
        subtitle: Container(
      child: DropdownButton<String>(
        onChanged: (String value) => _onChangeTheme(value),
        isExpanded: true,
        value: _currentThemeItem,
        items: themes.keys.map((String themeName) {
          return DropdownMenuItem<String>(
            value: themeName,
            child: Text(
              themeName,
              style: TextStyle(color: HiveCoreConstColors.greyColor),
            ),
          );
        }).toList(),
      ),
    ));
  }

  _textGroup(PreferencesLoaded state) {
    return SettingsGroup(
      title: 'Text',
      elements: [
        SizedBox(
          height: 15,
        ),
        _typographySelectorHolder(state),
        SizedBox(
          height: 5,
        ),
        _fontSizeHolder(state),
      ],
    );
  }

  Widget _typographySelectorHolder(PreferencesLoaded state) {
    _currentThemeItem = state.themeName;
    return ListTile(
        title: Container(
          child: Text('Typography'),
        ),
        subtitle: Container(
          margin: EdgeInsets.only(left: 20),
          child: DropdownButton<String>(
            onChanged: (String value) => null, // _onChangeTheme(value),
            isExpanded: true,
            value: _currentThemeItem,
            items: themes.keys.map((String themeName) {
              return DropdownMenuItem<String>(
                value: themeName,
                child: Text(
                  themeName,
                  style: TextStyle(color: HiveCoreConstColors.greyColor),
                ),
              );
            }).toList(),
          ),
        ));
  }

  double rating = 2;
  Widget _fontSizeHolder(PreferencesLoaded state) {
    return ListTile(
        title: Container(
          child: Text('Font size'),
        ),
        subtitle: Container(
          child: Slider(
            onChanged: (value) {
              // setState(() => rating = value);
            },
            value: rating,
            label: '$rating',
            divisions: 5,
            min: 0,
            max: 5,
            activeColor: Theme.of(context).accentColor,
          ),
        ));
  }

  _resertGroup(PreferencesLoaded state) {
    return SettingsGroup(
      title: 'Reset',
      elements: [
        _resetNotificationsSettings(state),
      ],
    );
  }

  _resetNotificationsSettings(PreferencesLoaded state) {
    return GestureDetector(
      onTap: _onConfirmResetNotificationsPreferences,
      child: ListTile(
        title: Container(
          child: Text('Restablecer ajustes de apariencia'),
        ),
        subtitle: Container(
          child:
              Text('Deshacer todos los ajustes personalizados de apariencia.'),
        ),
      ),
    );
  }
}
