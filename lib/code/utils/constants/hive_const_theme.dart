import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hive_const_colors.dart';

var themes = {
  "Light": HiveCoreConstTheme.light,
  "Dark": HiveCoreConstTheme.dark,
  "Light gold": HiveCoreConstTheme.light_gold,
  "Dark gold": HiveCoreConstTheme.dark_gold
};

abstract class HiveCoreConstTheme {
  // Ligth theme
  static ThemeData light = ThemeData(
    primarySwatch: HiveCoreConstColors.badooColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
      foregroundColor: HiveCoreConstColors.badooColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

  // Dark theme
  static ThemeData dark = ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.red,
      accentColor: Colors.red,
      toggleableActiveColor: Colors.red,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.red,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.white24,
        foregroundColor: Colors.red,
        // elevation: 5,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: Brightness.dark,
        barBackgroundColor: Colors.black,
        textTheme: CupertinoTextThemeData(),
      ));

  // Ligth gold theme
  static ThemeData light_gold = ThemeData(
    primarySwatch: HiveCoreConstColors.bronzeColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
      foregroundColor: HiveCoreConstColors.bronzeColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

  // Dark gold theme
  static ThemeData dark_gold = ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      primaryColor: HiveCoreConstColors.bronzeColor,
      accentColor: HiveCoreConstColors.bronzeColor,
      toggleableActiveColor: HiveCoreConstColors.bronzeColor,
      buttonTheme: ButtonThemeData(
        buttonColor: HiveCoreConstColors.bronzeColor,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.white24,
        foregroundColor: HiveCoreConstColors.bronzeColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: Brightness.dark,
        barBackgroundColor: Colors.black,
        textTheme: CupertinoTextThemeData(),
      ));
}
