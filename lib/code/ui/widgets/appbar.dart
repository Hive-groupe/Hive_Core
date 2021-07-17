import 'package:flutter/material.dart';
import 'package:hive_core/code/ui/constants/hive_const_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final List<Widget> actions;
  final Widget leading;
  final PreferredSizeWidget? bottom;
  final bool centerTitle;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.actions,
    required this.leading,
    required this.centerTitle,
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      /* 
      
      decoration: BoxDecoration(
        color: ConstColors.transparent,
        border: Border(
          bottom: BorderSide(
            color: ConstColors.separatorColor,
            width: 1.4,
            style: BorderStyle.solid,
          ),
        ),
      ),

      */
      child: AppBar(
        backgroundColor: HiveCoreConstColors.transparentColor,
        elevation: 0,
        titleSpacing: 0.0,
        centerTitle: centerTitle,
        leading: leading,
        actions: actions,
        bottom: bottom,
        title: title,
      ),
    );
  }

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight + 0);
}
