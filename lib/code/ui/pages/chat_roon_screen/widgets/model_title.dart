import 'package:flutter/material.dart';
import 'package:hive_core/code/ui/pages/chat_listing_screen/widgets/_ordenar_/custom_tile.dart';
import 'package:hive_core/code/utils/constants/const_colors.dart';

class ModalTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function onTap;

  const ModalTile({
    @required this.title,
    @required this.subtitle,
    @required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: CustomTile(
        mini: false,
        onTap: onTap,
        leading: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: ConstColors.bronzeColor,
          ),
          padding: EdgeInsets.all(10),
          child: Icon(
            icon,
            color: HiveCoreConstColors.greyColor,
            size: 38,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: HiveCoreConstColors.greyColor,
            fontSize: 14,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.bodyText1.color,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
