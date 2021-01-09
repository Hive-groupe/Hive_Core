import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/src/ui/widgets/appbar.dart';

import 'widgets/settings_chat_form.dart';

class SettingsChatScreen extends StatefulWidget {
  @override
  _SettingsChatScreenState createState() => _SettingsChatScreenState();
}

class _SettingsChatScreenState extends State<SettingsChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SettingsChatForm(),
    );
  }

  CustomAppBar _appBar() {
    return CustomAppBar(
      centerTitle: true,
      title: Text(
        S.of(context).settings_application_chat,
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
