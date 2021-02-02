part of 'preferences_bloc.dart';

abstract class PreferencesState extends Equatable {}

class PreferencesNotLoaded extends PreferencesState {
  @override
  List<Object> get props => [];
}

class PreferencesLoaded extends PreferencesState {
  final String themeName;
  final Locale locale;
  final ChatPreferences chatPreferences;

  final bool notifications;
  final bool soundEffects;
  final bool vibration;

  PreferencesLoaded({
    @required this.themeName,
    @required this.locale,
    @required this.chatPreferences,
    @required this.notifications,
    @required this.soundEffects,
    @required this.vibration,
  });

  @override
  List<Object> get props => [
        themeName,
        locale,
        chatPreferences,
        notifications,
        soundEffects,
        vibration
      ];

  @override
  String toString() => '''
  $runtimeType  {
    - themeName: $themeName
    - locale: $locale
    - chatPreferences: ${chatPreferences.toString()}
    - notifications: $notifications
    - soundEffects: $soundEffects
    - vibration: $vibration
  }''';
}
