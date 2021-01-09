import 'package:flutter/material.dart';

import '_index.dart';

class Preferences {
  String themeName;
  Locale locale;

  NotificationsPreferences notificationsPreferences;
  ChatPreferences chatPreferences;

/**
 * ELIMINAR
 */
  bool notifications;
  bool soundEffects;
  bool vibration;

  Preferences({
    this.themeName,
    this.locale,
    this.notificationsPreferences,
    this.chatPreferences,
    this.notifications,
    this.soundEffects,
    this.vibration,
  });
}
