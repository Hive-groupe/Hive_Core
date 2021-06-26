import 'package:url_launcher/url_launcher.dart';

abstract class WebTools {
  static launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static launchPhone({
    String? value,
  }) async {
    String _value = 'tel: $value';
    if (await canLaunch(_value)) {
      await launch(_value);
    } else {
      throw 'Could not launch $_value';
    }
  }

  static launchMail({String? value}) async {
    String _value = 'mailto: $value';
    if (await canLaunch(_value)) {
      await launch(_value);
    } else {
      throw 'Could not launch $_value';
    }
  }

  static launchSms({
    String? value,
  }) async {
    String _value = 'sms: $value';
    if (await canLaunch(_value)) {
      await launch(_value);
    } else {
      throw 'Could not launch $_value';
    }
  }

  static launchLocalPath({
    String? value,
  }) async {
    /*
    Directory directory = await getExternalStorageDirectory();
    print(directory.path);
    await directory.list().toList().then((filesList) => print(filesList),);
    print(directory.parent.path);
    */
  }
}
