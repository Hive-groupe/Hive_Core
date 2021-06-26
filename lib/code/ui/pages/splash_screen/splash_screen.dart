import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';

class SplashScreen extends StatefulWidget {
  // final String title = HiveCoreString.of(context).user_profile_title;

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _iconHolder(),
            _title(),
          ],
        ),
      ),
    );
  }

  Widget _iconHolder() {
    return Container(
      child: Image.asset(
        HiveCoreString.of(context).image_icon_hive,
        height: 300,
        width: 300,
      ),
    );
  }

  Widget _title() {
    return Container(
      child: SizedBox.fromSize(
        size: Size.fromHeight(30),
        child: new Text(
          HiveCoreString.of(context).app_title,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
