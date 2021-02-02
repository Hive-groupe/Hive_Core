import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_core/generated/l10n.dart';

abstract class ScreenBuildersWidget {
  const ScreenBuildersWidget();

  static Widget errorScreenBuilder(
      {@required BuildContext context,
      @required Widget appBar,
      Function onTap,
      String imageUrl,
      String title,
      String text}) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[appBar];
            },
            body: Scaffold(
              body: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: SvgPicture.asset(
                          imageUrl ?? S.of(context).km_assets_images_list_error,
                          height: 250,
                          width: 150,
                          placeholderBuilder: (BuildContext context) =>
                              Container(
                                  padding: const EdgeInsets.all(30.0),
                                  child: const CircularProgressIndicator()),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        title ?? S.of(context).default_error,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Text(
                        text ?? S.of(context).unknown_error,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }

  static Widget loadingScreenBuilder(
      {@required Widget appBar,
      Function onTap,
      String imageUrl,
      String title,
      String text}) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                appBar,
              ];
            },
            body: Scaffold(
              body: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 250,
                    ),
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      text,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            )));
  }
}
