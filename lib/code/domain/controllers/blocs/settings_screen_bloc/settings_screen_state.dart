part of 'settings_screen_bloc.dart';

@immutable
abstract class SettingsScreenState {}

class SettingsScreenInitial extends SettingsScreenState {}

class SettingsScreenSearching extends SettingsScreenState {}

class SettingsScreenShowCategory extends SettingsScreenState {
  final String category;

  SettingsScreenShowCategory({required this.category});
}
