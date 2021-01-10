import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsItem {
  final IconData icon;
  final String title;
  final String description;
  final Function onTap;

  SettingsItem({IconData icon, String title, String description, this.onTap})
      : icon = icon ?? Icons.settings,
        title = title ?? '',
        description = description ?? '';
}
