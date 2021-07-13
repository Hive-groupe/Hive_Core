import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/repositories/tutorial_repository/tutorial_repository.dart';

import 'package:meta/meta.dart';

part 'dialy_screen_event.dart';
part 'dialy_screen_state.dart';

class DialyScreenBloc extends Bloc<DialyScreenEvent, DialyScreenState> {
  final BuildContext context;

  // Repositorys

  // final TutorialRepository _tutorialRepository;

  //Streams

  DateTime selectedDate = DateTime.now();

  DialyScreenBloc({
    required this.context,
    // Repositorys

    required TutorialRepository tutorialRepository,
  }) : //_tutorialRepository = tutorialRepository,
        super(DialyScreenInitial());

  @override
  Future<void> close() {
    return super.close();
  }

  @override
  Stream<DialyScreenState> mapEventToState(
    DialyScreenEvent event,
  ) async* {
    if (event is GetDailyData) {
      yield* _mapGetDailyDataToState(event);
    }
  }

  Stream<DialyScreenState> _mapGetDailyDataToState(GetDailyData event) async* {
    try {
      yield DialyScreenLoading();

      yield DialyScreenLoaded();
    } catch (e) {
      print(e);
      yield DialyScreenError();
    }
  }
}
