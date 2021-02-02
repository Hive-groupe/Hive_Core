import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/preferences_bloc/preferences_bloc.dart';
import 'package:hive_core/code/ui/widgets/settings_group.dart';

class SettingsChatForm extends StatefulWidget {
  @override
  _SettingsChatFormState createState() => _SettingsChatFormState();
}

class _SettingsChatFormState extends State<SettingsChatForm> {
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

  _onChangeEnterToSend(PreferencesLoaded state) => _preferencesBloc
      .add(ChangeEnterToSend(!state.chatPreferences.enterToSend));

  _onResetChatPreferences() {
    Navigator.pop(context);
    _preferencesBloc.add(ResetChatPreferences());
  }

  Future<void> _onConfirmResetChatPreferences() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
                'Resetear las preferencias para chats'), // S.of(context).user_signout),
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
                onPressed: _onResetChatPreferences,
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
        _resertGroup(state),
      ],
    );
  }

  _settingsGroup(PreferencesLoaded state) {
    return SettingsGroup(
      title: 'Ajustes',
      elements: [
        _enterToSendHolder(state),
      ],
    );
  }

  _enterToSendHolder(PreferencesLoaded state) {
    return ListTile(
      leading: Container(
        child: Icon(Icons.keyboard_return),
      ),
      title: Container(
        child: Text('Enter para enviar'),
      ),
      subtitle: Container(
        child: Text('La tecla enter enviará tu mensaje'),
      ),
      trailing: Container(
        child: Switch(
          onChanged: (_) => _onChangeEnterToSend(state),
          value: state.chatPreferences.enterToSend,
        ),
      ),
    );
  }

  _resertGroup(PreferencesLoaded state) {
    return SettingsGroup(
      title: 'Reset',
      elements: [
        _resetChatSettings(state),
      ],
    );
  }

  _resetChatSettings(PreferencesLoaded state) {
    return GestureDetector(
      onTap: _onConfirmResetChatPreferences,
      child: ListTile(
        title: Container(
          child: Text('Restablecer ajustes de chats'),
        ),
        subtitle: Container(
          child: Text('Deshacer todos los ajustes personalizados de chats'),
        ),
      ),
    );
  }
}
