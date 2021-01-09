import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/src/models/profile.dart';
import 'package:meta/meta.dart';

part 'settings_screen_event.dart';
part 'settings_screen_state.dart';

class SettingsScreenBloc
    extends Bloc<SettingsScreenEvent, SettingsScreenState> {
  final BuildContext context;

  String userId;
  Profile profile;

  SettingsScreenBloc({@required this.context})
      : assert(context != null),
        super(SettingsScreenInitial());

  @override
  Stream<SettingsScreenState> mapEventToState(
    SettingsScreenEvent event,
  ) async* {
    if (event is StartPreferencesSearching) {
      yield* _mapStartSearchingToState(event);
    } else if (event is CancelPreferencesSearch) {
      yield* _mapCancelSearchToState(event);
    } else if (event is ResetPreferencesSearch) {
      yield* _mapResetSearchToState(event);
    } else if (event is SearchingPreferencess) {
      yield* _mapSearchingToState(event);
    } else if (event is OnShowAccountSettings) {
      yield* _mapOnShowAccountSettingsToState(event);
    } else if (event is OnShowApplicationSettings) {
      yield* _mapOnShowApplicationSettingsToState(event);
    } else if (event is OnShowHelpSettings) {
      yield* _mapOnShowHelpSettingsToState(event);
    }
  }

  Stream<SettingsScreenState> _mapStartSearchingToState(
      StartPreferencesSearching event) async* {
    try {
      yield SettingsScreenSearching();
    } catch (_) {}
  }

  Stream<SettingsScreenState> _mapCancelSearchToState(
      CancelPreferencesSearch event) async* {
    try {
      yield SettingsScreenInitial();
    } catch (_) {}
  }

  Stream<SettingsScreenState> _mapResetSearchToState(
      ResetPreferencesSearch event) async* {
    try {
      yield SettingsScreenSearching();
    } catch (_) {}
  }

  Stream<SettingsScreenState> _mapSearchingToState(
      SearchingPreferencess event) async* {
    try {
      yield SettingsScreenSearching();
    } catch (_) {}
  }

  Stream<SettingsScreenState> _mapOnShowAccountSettingsToState(
      OnShowAccountSettings event) async* {
    try {
      yield SettingsScreenShowCategory(category: 'Account');
    } catch (_) {}
  }

  Stream<SettingsScreenState> _mapOnShowApplicationSettingsToState(
      OnShowApplicationSettings event) async* {
    try {
      yield SettingsScreenShowCategory(category: 'Application');
    } catch (_) {}
  }

  Stream<SettingsScreenState> _mapOnShowHelpSettingsToState(
      OnShowHelpSettings event) async* {
    try {
      yield SettingsScreenShowCategory(category: 'Help');
    } catch (_) {}
  }
}
