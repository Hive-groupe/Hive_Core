import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class MonitorBuildersWidget {
  const MonitorBuildersWidget();

  static Widget emptyMonitorBuilder({
    required BuildContext context,
    Function? onTap,
    String? imageUrl,
    String? title,
    String? text,
  }) {
    return GestureDetector(
      onTap: () => onTap,
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
                  imageUrl ??
                      HiveCoreString.of(context).km_assets_images_list_loading,
                  // color: Colors.red,
                  height: 150,
                  width: 150,
                  placeholderBuilder: (BuildContext context) => Container(
                    padding: const EdgeInsets.all(30.0),
                    child: const CircularProgressIndicator(),
                  ),
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

  static Widget errorMonitorBuilder({
    required BuildContext context,
    String? imageUrl,
  }) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Text(
              HiveCoreString.of(context).default_error,
            ),
            Text(
              HiveCoreString.of(context).unknown_error,
            ),
          ],
        ),
      ),
    );
  }

  static Widget loadingMonitorBuilder({
    required BuildContext context,
    String? imageUrl,
    String? text,
  }) {
    return Container(
      child: Center(
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
              text ?? '',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
