import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hive_core/code/data/models/preferences/chat_preferences.dart';
import 'package:hive_core/code/data/models/preferences/preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preferences_repository_shared_preferences_impl.dart';

abstract class PreferencesRepository {
  Future<void> savePreferences(Preferences preferences);
  Future<Preferences> get preferences;

  Future<void> saveTheme(String theme);
  Future<String> get theme;

  Future<void> saveLocale(Locale? locale);
  Future<Locale?> get locale;

  Future<void> saveNotifications(bool notifications);
  Future<bool> get notifications;

  Future<void> saveSoundEffects(bool soundEffects);
  Future<bool> get soundEffects;

  Future<void> saveVibration(bool vibration);
  Future<bool> get vibration;

  Future<void> saveEnterToSend(bool enterToSend);
  Future<bool> get enterToSend;
}
