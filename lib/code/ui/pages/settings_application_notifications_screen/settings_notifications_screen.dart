import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';

import 'widgets/settings_notifications_form.dart';

class SettingsNotificationsScreen extends StatefulWidget {
  @override
  _SettingsNotificationsScreenState createState() =>
      _SettingsNotificationsScreenState();
}

class _SettingsNotificationsScreenState
    extends State<SettingsNotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SettingsNotificationsForm(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        HiveCoreString.of(context).settings_application_notifications,
        style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyText1.color,
            fontWeight: FontWeight.w600),
      ),
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          CupertinoIcons.back,
          color: Colors.grey,
          size: 18,
        ),
      ),
    );
  }
}
