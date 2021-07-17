import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'assistant_event.dart';
part 'assistant_state.dart';

class AssistantBloc extends Bloc<AssistantEvent, AssistantState> {
  AssistantBloc()
      : super(
          AssistantInitial(),
        );

  @override
  Stream<AssistantState> mapEventToState(
    AssistantEvent event,
  ) async* {
    if (event is FinishTutorialAssistent) {
      yield* _mapFinishTutorialAssistentToState(event);
    }
  }

  Stream<AssistantState> _mapFinishTutorialAssistentToState(
      FinishTutorialAssistent event) async* {
    try {} catch (e) {}
  }
}
