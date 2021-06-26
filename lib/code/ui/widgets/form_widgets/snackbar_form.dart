import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';

abstract class SnackBarForm {
  static void onShowError({
    required context,
    required String text,
    required IconData icon,
    required Color backgroundColor,
  }) =>
      Scaffold.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            backgroundColor: backgroundColor ?? Colors.red,
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(text ?? HiveCoreString.of(context).unknown_error),
                Icon(icon ?? Icons.error)
              ],
            ),
          ),
        );

  static void onShowLoading({
    required context,
    required String text,
    required IconData icon,
    required Color backgroundColor,
  }) =>
      Scaffold.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(text ?? 'salvando'),
                CircularProgressIndicator()
              ],
            ),
          ),
        );
}
