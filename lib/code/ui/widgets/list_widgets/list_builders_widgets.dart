import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class ListBuildersWidget {
  const ListBuildersWidget();

  static Widget emptyListBuilder(
      {@required BuildContext context,
      @required Function onTap,
      @required String imageUrl,
      @required String title,
      @required String text}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                child: SvgPicture.asset(
                  imageUrl ?? S.of(context).notifications_assets_images_empty,
                  // color: Colors.red,
                  height: 150,
                  width: 150,
                  placeholderBuilder: (BuildContext context) => Container(
                      padding: const EdgeInsets.all(30.0),
                      child: const CircularProgressIndicator()),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                title ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade400,
                ),
              ),
              Text(
                text ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade400,
                ),
              ),
              SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget errorListBuilder(
      {@required BuildContext context,
      Function onTap,
      String imageUrl,
      String title,
      String text}) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: SvgPicture.asset(
                imageUrl ?? S.of(context).km_assets_images_list_error,
                height: 150,
                width: 150,
                placeholderBuilder: (BuildContext context) => Container(
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
    );
  }

  static Widget loadingListBuilder(
      {@required BuildContext context,
      @required Function onTap,
      @required String imageUrl,
      @required String text,
      @required String title}) {
    return Center(
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
            title ?? 'Loading',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
