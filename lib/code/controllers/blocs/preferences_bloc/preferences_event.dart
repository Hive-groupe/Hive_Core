part of 'preferences_bloc.dart';

abstract class PreferencesEvent extends Equatable {
  const PreferencesEvent();
}

class LoadPreferences extends PreferencesEvent {
  LoadPreferences();

  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ResetPreferences extends PreferencesEvent {
  ResetPreferences();

  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ChangeTheme extends PreferencesEvent {
  final String theme;

  ChangeTheme(this.theme);

  @override
  List<Object> get props => [theme];

  @override
  String toString() => '''
  $runtimeType  {
    - Theme: ${theme.toString()}
  }''';
}

class ChangeLocale extends PreferencesEvent {
  final Locale locale;

  ChangeLocale(this.locale);

  @override
  List<Object> get props => [locale];

  @override
  String toString() => '''
  $runtimeType  {
    - Locale: ${locale.toString()}
  }''';
}

class ResetNotificationsPreferences extends PreferencesEvent {
  ResetNotificationsPreferences();

  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ChangeNotifications extends PreferencesEvent {
  final bool notifications;

  ChangeNotifications(this.notifications);

  @override
  List<Object> get props => [notifications];

  @override
  String toString() => '''
  $runtimeType  {
    - notifications: $notifications
  }''';
}

class ChangeSoundEffects extends PreferencesEvent {
  final bool soundEffects;

  ChangeSoundEffects(this.soundEffects);

  @override
  List<Object> get props => [soundEffects];

  @override
  String toString() => '''
  $runtimeType  {
    - soundEffects: $soundEffects
  }''';
}

class ChangeVibration extends PreferencesEvent {
  final bool vibration;

  ChangeVibration(this.vibration);

  @override
  List<Object> get props => [vibration];

  @override
  String toString() => '''
  $runtimeType  {
    - vibration: $vibration
  }''';
}

class ResetChatPreferences extends PreferencesEvent {
  ResetChatPreferences();

  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ChangeEnterToSend extends PreferencesEvent {
  final bool enterToSend;

  ChangeEnterToSend(this.enterToSend);

  @override
  List<Object> get props => [enterToSend];

  @override
  String toString() => '''
  $runtimeType  {
    - enterToSend: $enterToSend
  }''';
}

class clearCache extends PreferencesEvent {
  clearCache();

  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType  {
  }''';
}
