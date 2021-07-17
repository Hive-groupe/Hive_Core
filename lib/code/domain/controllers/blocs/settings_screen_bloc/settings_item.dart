import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsItem {
  final IconData icon;
  final String title;
  final String? description;
  final Function onTap;

  SettingsItem({
    required IconData? icon,
    required String title,
    String? description,
    required this.onTap,
  })  : icon = icon ?? Icons.settings,
        title = title,
        description = description;
}
