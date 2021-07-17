import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hive_core/code/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:meta/meta.dart';

part 'call_sreen_event.dart';
part 'call_sreen_state.dart';

class CallSreenBloc extends Bloc<CallSreenEvent, CallSreenState> {
  // Repositorys
  // AuthenticationRepository _authenticationRepository;

  CallSreenBloc({
    required final AuthenticationRepository authenticationRepository,
    required final String currentUserId,
  }) :
        // _authenticationRepository = authenticationRepository,
        super(CallSreenInitial()..currentUserId = currentUserId);

  @override
  Stream<CallSreenState> mapEventToState(
    CallSreenEvent event,
  ) async* {}
}
