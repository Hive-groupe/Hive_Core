import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/src/utils/constants/const_strings.dart';
import 'package:package_info/package_info.dart';

class InfoScreen extends StatefulWidget {
  // final String title = S.of(context).user_profile_title;

  @override
  State<StatefulWidget> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  @override
  void initState() {
    _initPackageInfo();
    super.initState();
  }

  Future<void> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

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
            _version(),
          ],
        ),
      ),
    );
  }

  Widget _iconHolder() {
    return Container(
        child: Image.asset(
      ConstString.image_icon_hive,
      height: 300,
      width: 300,
    ));
  }

  Widget _title() {
    return Container(
      child: Text(
        S.of(context).app_title,
        style: TextStyle(fontSize: 25),
      ),
    );
  }

  Widget _version() {
    return Container(
        child: Text(
      'Version: ${_packageInfo.version}',
      style: TextStyle(color: Colors.grey),
    ));
  }
}
