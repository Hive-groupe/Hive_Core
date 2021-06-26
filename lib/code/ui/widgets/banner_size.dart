import 'package:flutter/material.dart';
import 'package:hive_core/code/utils/constants/hive_const_colors.dart';

import '../../../hive_core_app.dart';

class BannerSize extends StatelessWidget {
  final Widget body;

  const BannerSize({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: isPremiumAcount
          ? Container(
              height: 0,
            )
          : Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: HiveCoreConstColors.greyColor.withOpacity(0.1),
                  ),
                ),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              height: 50,
            ),
    );
  }
}
