import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/ui/widgets/appbar.dart';

import 'widgets/settings_theme_form.dart';

class SettingsThemeScreen extends StatefulWidget {
  @override
  _SettingsThemeScreenState createState() => _SettingsThemeScreenState();
}

class _SettingsThemeScreenState extends State<SettingsThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SettingsThemeForm(),
    );
  }

  CustomAppBar _appBar() {
    return CustomAppBar(
      centerTitle: true,
      title: Text(
        'Appearance', // HiveCoreString.of(context).settings_application_theme,
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
      actions: [],
    );
  }
}
