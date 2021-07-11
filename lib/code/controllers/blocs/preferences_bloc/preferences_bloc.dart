import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/models/chat_preferences.dart';
import 'package:hive_core/code/models/notifications_preferences.dart';
import 'package:hive_core/code/models/preferences.dart';
import 'package:hive_core/code/repositories/preferences_repository/preferences_repository.dart';
import 'package:hive_core/code/utils/constants/hive_const_theme.dart';

part 'preferences_event.dart';
part 'preferences_state.dart';

class PreferencesBloc extends Bloc<PreferencesEvent, PreferencesState> {
  final PreferencesRepository _preferencesRepository;

  Preferences _preferences;

  static Preferences _defaultStatePreferences = Preferences(
      themeName: 'Light',
      locale: null,
      notifications: true,
      soundEffects: true,
      vibration: true,
      notificationsPreferences: _defaultNotificationsPreferences,
      chatPreferences: _defaultChatPreferences);

  static NotificationsPreferences _defaultNotificationsPreferences =
      NotificationsPreferences((b) => b
        ..notifications = true
        ..soundEffects = true
        ..vibration = true);

  static ChatPreferences _defaultChatPreferences =
      ChatPreferences((b) => b..enterToSend = false);

  PreferencesBloc({
    required PreferencesRepository preferencesRepository,
    Preferences? preferences,
  })  : _preferencesRepository = preferencesRepository,
        _preferences = preferences ?? _defaultStatePreferences,
        super(
          PreferencesNotLoaded(),
        );

  @override
  Stream<PreferencesState> mapEventToState(
    PreferencesEvent event,
  ) async* {
    if (event is LoadPreferences) {
      yield* _mapLoadPreferencesToState(event);
    } else if (event is ResetPreferences) {
      yield* _mapResetPreferencesToState(event);
    } else if (event is ChangeTheme) {
      yield* _mapChangeThemeToState(event);
    } else if (event is ChangeLocale) {
      yield* _mapChangeLocaleToState(event);
    } else if (event is ResetNotificationsPreferences) {
      yield* _mapResetNotificationsPreferencesToState(event);
    } else if (event is ChangeNotifications) {
      yield* _mapChangeNotificationsToState(event);
    } else if (event is ChangeSoundEffects) {
      yield* _mapChangeSoundEffectsToState(event);
    } else if (event is ChangeVibration) {
      yield* _mapChangeVibrationToState(event);
    } else if (event is ResetChatPreferences) {
      yield* _mapResetChatPreferencesToState(event);
    } else if (event is ChangeEnterToSend) {
      yield* _mapChangeEnterToSendToState(event);
    } else if (event is ClearCache) {
      yield* _mapclearCacheToState(event);
    }
  }

  Stream<PreferencesState> _mapLoadPreferencesToState(
    LoadPreferences event,
  ) async* {
    try {
      _preferences = await _preferencesRepository.preferences;
      yield PreferencesLoaded(
          themeName: _preferences.themeName,
          locale: _preferences.locale,
          notifications: _preferences.notifications,
          soundEffects: _preferences.soundEffects,
          vibration: _preferences.vibration,
          chatPreferences: _preferences.chatPreferences);
    } catch (_) {}
  }

  Stream<PreferencesState> _mapResetPreferencesToState(
    ResetPreferences event,
  ) async* {
    try {
      _preferences = _defaultStatePreferences;
      await _preferencesRepository.savePreferences(_preferences);
      yield PreferencesLoaded(
          themeName: _preferences.themeName,
          locale: _preferences.locale,
          notifications: _preferences.notifications,
          soundEffects: _preferences.soundEffects,
          vibration: _preferences.vibration,
          chatPreferences: _preferences.chatPreferences);
    } catch (_) {}
  }

  Stream<PreferencesState> _mapChangeThemeToState(
    ChangeTheme event,
  ) async* {
    try {
      _preferences.themeName = event.theme;

      await _preferencesRepository.saveTheme(
        _preferences.themeName,
      );

      yield PreferencesLoaded(
          themeName: _preferences.themeName,
          locale: _preferences.locale,
          notifications: _preferences.notifications,
          soundEffects: _preferences.soundEffects,
          vibration: _preferences.vibration,
          chatPreferences: _preferences.chatPreferences);
    } catch (_) {}
  }

  Stream<PreferencesState> _mapChangeLocaleToState(
    ChangeLocale event,
  ) async* {
    try {
      _preferences.locale = event.locale;
      await _preferencesRepository.saveLocale(_preferences.locale);
      yield PreferencesLoaded(
          themeName: _preferences.themeName,
          locale: _preferences.locale,
          notifications: _preferences.notifications,
          soundEffects: _preferences.soundEffects,
          vibration: _preferences.vibration,
          chatPreferences: _preferences.chatPreferences);
    } catch (_) {}
  }

  Stream<PreferencesState> _mapResetNotificationsPreferencesToState(
    ResetNotificationsPreferences event,
  ) async* {
    try {
      // ======================================================================
      // ELIMINAR
      // ======================================================================
      _preferences.notifications =
          _defaultNotificationsPreferences.notifications;
      _preferences.soundEffects = _defaultNotificationsPreferences.soundEffects;
      _preferences.vibration = _defaultNotificationsPreferences.vibration;
      // ========================================================================
      _preferences.notificationsPreferences = _defaultNotificationsPreferences;
      await _preferencesRepository.savePreferences(_preferences);
      yield PreferencesLoaded(
          themeName: _preferences.themeName,
          locale: _preferences.locale,
          notifications: _preferences.notifications,
          soundEffects: _preferences.soundEffects,
          vibration: _preferences.vibration,
          chatPreferences: _preferences.chatPreferences);
    } catch (_) {}
  }

  Stream<PreferencesState> _mapChangeNotificationsToState(
    ChangeNotifications event,
  ) async* {
    try {
      _preferences.notifications = event.notifications;
      await _preferencesRepository
          .saveNotifications(_preferences.notifications);
      yield PreferencesLoaded(
          themeName: _preferences.themeName,
          locale: _preferences.locale,
          notifications: _preferences.notifications,
          soundEffects: _preferences.soundEffects,
          vibration: _preferences.vibration,
          chatPreferences: _preferences.chatPreferences);
    } catch (_) {}
  }

  Stream<PreferencesState> _mapChangeSoundEffectsToState(
    ChangeSoundEffects event,
  ) async* {
    try {
      _preferences.soundEffects = event.soundEffects;
      await _preferencesRepository.saveSoundEffects(_preferences.soundEffects);
      yield PreferencesLoaded(
          themeName: _preferences.themeName,
          locale: _preferences.locale,
          notifications: _preferences.notifications,
          soundEffects: _preferences.soundEffects,
          vibration: _preferences.vibration,
          chatPreferences: _preferences.chatPreferences);
    } catch (_) {}
  }

  Stream<PreferencesState> _mapChangeVibrationToState(
    ChangeVibration event,
  ) async* {
    try {
      _preferences.vibration = event.vibration;
      await _preferencesRepository.saveVibration(_preferences.vibration);
      yield PreferencesLoaded(
          themeName: _preferences.themeName,
          locale: _preferences.locale,
          notifications: _preferences.notifications,
          soundEffects: _preferences.soundEffects,
          vibration: _preferences.vibration,
          chatPreferences: _preferences.chatPreferences);
    } catch (_) {}
  }

  Stream<PreferencesState> _mapResetChatPreferencesToState(
    ResetChatPreferences event,
  ) async* {
    try {
      _preferences.chatPreferences = _defaultChatPreferences;
      await _preferencesRepository.savePreferences(_preferences);
      yield PreferencesLoaded(
          themeName: _preferences.themeName,
          locale: _preferences.locale,
          notifications: _preferences.notifications,
          soundEffects: _preferences.soundEffects,
          vibration: _preferences.vibration,
          chatPreferences: _preferences.chatPreferences);
    } catch (_) {}
  }

  Stream<PreferencesState> _mapChangeEnterToSendToState(
    ChangeEnterToSend event,
  ) async* {
    try {
      _preferences.chatPreferences = _preferences.chatPreferences
          .rebuild((b) => b..enterToSend = event.enterToSend);
      await _preferencesRepository.saveSoundEffects(
        _preferences.chatPreferences.enterToSend ?? false,
      );
      yield PreferencesLoaded(
          themeName: _preferences.themeName,
          locale: _preferences.locale,
          notifications: _preferences.notifications,
          soundEffects: _preferences.soundEffects,
          vibration: _preferences.vibration,
          chatPreferences: _preferences.chatPreferences);
    } catch (_) {}
  }

  Stream<PreferencesState> _mapclearCacheToState(
    ClearCache event,
  ) async* {
    try {} catch (_) {}
  }
}
