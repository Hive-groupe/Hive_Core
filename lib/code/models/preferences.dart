import 'package:flutter/material.dart';

import '_index.dart';

class Preferences {
  String themeName;
  Locale? locale;

  NotificationsPreferences? notificationsPreferences;
  ChatPreferences chatPreferences;

/*
 * ELIMINAR
 */
  bool notifications;
  bool soundEffects;
  bool vibration;

  Preferences({
    required this.themeName,
    this.locale,
    this.notificationsPreferences,
    required this.chatPreferences,
    required this.notifications,
    required this.soundEffects,
    required this.vibration,
  });
}
