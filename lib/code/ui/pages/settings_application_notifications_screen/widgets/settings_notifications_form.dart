import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/preferences_bloc/preferences_bloc.dart';
import 'package:hive_core/code/ui/widgets/settings_group.dart';

class SettingsNotificationsForm extends StatefulWidget {
  @override
  _SettingsNotificationsFormState createState() =>
      _SettingsNotificationsFormState();
}

class _SettingsNotificationsFormState extends State<SettingsNotificationsForm> {
  PreferencesBloc _preferencesBloc;

  @override
  void initState() {
    _preferencesBloc = context.bloc<PreferencesBloc>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _onChangeNotifications(PreferencesLoaded state) =>
      _preferencesBloc.add(ChangeNotifications(!state.notifications));

  _onChangeSoundEffects(PreferencesLoaded state) =>
      _preferencesBloc.add(ChangeSoundEffects(!state.soundEffects));

  _onChangeVibration(PreferencesLoaded state) =>
      _preferencesBloc.add(ChangeVibration(!state.vibration));

  _onResetNotificationsferences() {
    Navigator.pop(context);
    _preferencesBloc.add(ResetNotificationsPreferences());
  }

  Future<void> _onConfirmResetNotificationsPreferences() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
                'Resetear las preferencias de notificaciones'), // S.of(context).user_signout),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  Text(
                      '¿Estas seguro de que deseas eliminar la configuración actual?'), // S.of(context).user_settings_close_confirmation_seasion),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text(S.of(context).cancel),
              ),
              FlatButton(
                onPressed: _onResetNotificationsferences,
                child: Text(S.of(context).yes),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        cubit: _preferencesBloc,
        listener: (context, state) {
          if (state is PreferencesLoaded) {}
        },
        builder: (context, state) {
          if (state is PreferencesLoaded) {
            return _buildPreferencesLoaded(state);
          } else {
            return Container();
          }
        });
  }

  Widget _buildPreferencesLoaded(PreferencesLoaded state) {
    return ListView(
      children: <Widget>[
        _settingsGroup(state),
        _callsGroup(state),
        _resertGroup(state),
      ],
    );
  }

  _settingsGroup(PreferencesLoaded state) {
    return SettingsGroup(
      title: 'Notificaciones para chats',
      elements: [
        _isNotificationsActiveHolder(state),
        _isSoundEffectsHolder(state),
        _vibrationHolder(state),
      ],
    );
  }

  _isNotificationsActiveHolder(PreferencesLoaded state) {
    return ListTile(
      leading: Container(
        child: Icon(Icons.notifications_none),
      ),
      title: Container(
        child: Text('Notidicaciones'),
      ),
      trailing: Container(
        child: Switch(
          onChanged: (_) => _onChangeNotifications(state),
          value: state.notifications,
        ),
      ),
    );
  }

  _isSoundEffectsHolder(PreferencesLoaded state) {
    return ListTile(
      leading: Container(
        child: Icon(Icons.music_note),
      ),
      title: Container(
        child: Text('Efectos de sonido'),
      ),
      trailing: Container(
        child: Switch(
          onChanged: (_) => _onChangeSoundEffects(state),
          value: state.soundEffects,
        ),
      ),
    );
  }

  _vibrationHolder(PreferencesLoaded state) {
    return ListTile(
      leading: Container(
        child: Icon(Icons.vibration),
      ),
      title: Container(
        child: Text('vibration'),
      ),
      trailing: Container(
        child: Switch(
          onChanged: (_) => _onChangeVibration(state),
          value: state.vibration,
        ),
      ),
    );
  }

  _callsGroup(PreferencesLoaded state) {
    return SettingsGroup(
      title: 'Llamadas de voz',
      elements: [
        _vibrationHolder(state),
      ],
    );
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
          child: Text('Restablecer todas las notificaciones'),
        ),
        subtitle: Container(
          child: Text(
              'Deshacer todos los ajustes personalizados de notificaciones para todos tus contactos, grupos y canales.'),
        ),
      ),
    );
  }
}
