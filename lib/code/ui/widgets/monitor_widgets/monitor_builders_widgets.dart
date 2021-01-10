import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class MonitorBuildersWidget {
  const MonitorBuildersWidget();

  static Widget errorMonitorBuilder({
    @required BuildContext context,
  }) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Text(
              S.of(context).default_error,
            ),
            Text(
              S.of(context).unknown_error,
            ),
          ],
        ),
      ),
    );
  }

  static Widget emptyMonitorBuilder(
      {@required BuildContext context,
      @required Function onTap,
      @required String imageUrl,
      @required String title,
      @required String text}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                child: SvgPicture.asset(
                  imageUrl ?? S.of(context).hours_assets_images_loading,
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
                title ?? 'Recopilando datos...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade400,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                text ?? 'No hay datos suficientes',
                textAlign: TextAlign.justify,
                style: TextStyle(
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
}
