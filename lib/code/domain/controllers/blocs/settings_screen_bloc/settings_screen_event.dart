part of 'settings_screen_bloc.dart';

@immutable
abstract class SettingsScreenEvent {}

class StartPreferencesSearching extends SettingsScreenEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class CancelPreferencesSearch extends SettingsScreenEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ResetPreferencesSearch extends SettingsScreenEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class SearchingPreferencess extends SettingsScreenEvent {
  final String value;

  SearchingPreferencess({required this.value});

  @override
  String toString() => '''
  $runtimeType  {
    - value: $value
  }''';
}

class OnShowAccountSettings extends SettingsScreenEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class OnShowApplicationSettings extends SettingsScreenEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class OnShowHelpSettings extends SettingsScreenEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}
