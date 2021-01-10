import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/ui/widgets/appbar.dart';

import 'widgets/settings_locale_form.dart';

class SettingsLocateScreen extends StatefulWidget {
  @override
  _SettingsLocateScreenState createState() => _SettingsLocateScreenState();
}

class _SettingsLocateScreenState extends State<SettingsLocateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SettingsLocaleForm(),
    );
  }

  CustomAppBar _appBar() {
    return CustomAppBar(
      centerTitle: true,
      title: Text(
        S.of(context).settings_application_locale,
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
