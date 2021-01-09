import 'package:flutter/material.dart';

class HiveCoreConstColors {
  // Badoo color code: FF93cd48
  // - Hexadecimal:       #783bf9
  // - RGB:               120, 59, 249
  static const MaterialColor badooColor =
      MaterialColor(0xFF783bf9, badooColorCodes);
  static const Map<int, Color> badooColorCodes = {
    50: Color.fromRGBO(120, 59, 249, .1),
    100: Color.fromRGBO(120, 59, 249, .2),
    200: Color.fromRGBO(120, 59, 249, .3),
    300: Color.fromRGBO(120, 59, 249, .4),
    400: Color.fromRGBO(120, 59, 249, .5),
    500: Color.fromRGBO(120, 59, 249, .6),
    600: Color.fromRGBO(120, 59, 249, .7),
    700: Color.fromRGBO(120, 59, 249, .8),
    800: Color.fromRGBO(120, 59, 249, .9),
    900: Color.fromRGBO(120, 59, 249, 1),
  };

  static const Map<int, Color> goldColorCodes = {
    50: Color.fromRGBO(212, 175, 55, .1),
    100: Color.fromRGBO(212, 175, 55, .2),
    200: Color.fromRGBO(212, 175, 55, .3),
    300: Color.fromRGBO(212, 175, 55, .4),
    400: Color.fromRGBO(212, 175, 55, .5),
    500: Color.fromRGBO(212, 175, 55, .6),
    600: Color.fromRGBO(212, 175, 55, .7),
    700: Color.fromRGBO(212, 175, 55, .8),
    800: Color.fromRGBO(212, 175, 55, .9),
    900: Color.fromRGBO(212, 175, 55, 1),
  };

  static const Map<int, Color> bronzeColorCodes = {
    50: Color.fromRGBO(205, 127, 50, .1),
    100: Color.fromRGBO(205, 127, 50, .2),
    200: Color.fromRGBO(205, 127, 50, .3),
    300: Color.fromRGBO(205, 127, 50, .4),
    400: Color.fromRGBO(205, 127, 50, .5),
    500: Color.fromRGBO(205, 127, 50, .6),
    600: Color.fromRGBO(205, 127, 50, .7),
    700: Color.fromRGBO(205, 127, 50, .8),
    800: Color.fromRGBO(205, 127, 50, .9),
    900: Color.fromRGBO(205, 127, 50, 1),
  };

  static const Color transparentColor = Colors.transparent;

  static const Color greyColor = Colors.grey;
  // static const Color icons2 = Colors.deepPurple;

  static const Color goldColor = MaterialColor(0xFFEFB810, goldColorCodes);
  static const Color bronzeColor = MaterialColor(0xFFCD7F32, bronzeColorCodes);

  static final Color separatorColor = Color(0xff272c35);

  static const Color chatSenderColor = Colors.orange;
  static const Color chatReceiverColor = Colors.grey;
}
