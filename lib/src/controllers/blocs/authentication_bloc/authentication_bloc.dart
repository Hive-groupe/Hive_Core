import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/src/models/enum/userStateus.dart';
import 'package:hive_core/src/models/user.dart';
import 'package:hive_core/src/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/src/repositories/user_repository/user_repository.dart';
import 'package:meta/meta.dart';

import 'userDataInfo.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState>
    with WidgetsBindingObserver {
  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;

  bool _isSignedIn;
  String _userId;

  AuthenticationBloc(
      {@required AuthenticationRepository authenticationRepository,
      @required UserRepository userRepository})
      : assert(authenticationRepository != null),
        assert(userRepository != null),
        _authenticationRepository =
            authenticationRepository ?? AuthenticationRepositoryFirebaseImpl(),
        _userRepository = userRepository,
        super(Uninitialized()) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      yield* _mapAppStartedToState(event);
    } else if (event is LoggedIn) {
      yield* _mapLoggedInToState(event);
    } else if (event is LogedOut) {
      yield* _mapLogedOutToState(event);
    } else if (event is SetUserState) {
      yield* _mapSetUserStateToState(event);
    }
  }

  Stream<AuthenticationState> _mapAppStartedToState(AppStarted event) async* {
    try {
      _isSignedIn = _isSignedIn ?? await _authenticationRepository.isSignedIn();
      if (_isSignedIn) {
        _syncUserProfileData();
        yield Authenticated();
      } else {
        yield Unauthenticated();
      }
    } catch (_) {
      yield Uninitialized();
    }
  }

  Stream<AuthenticationState> _mapLoggedInToState(LoggedIn event) async* {
    try {
      _syncUserProfileData();
      yield Authenticated();
    } catch (_) {
      yield Uninitialized();
    }
  }

  Stream<AuthenticationState> _mapLogedOutToState(LogedOut event) async* {
    try {
      yield Uninitialized();
      userDataInfo.input.add(null);
      await _setUserState(UserStatus.offline);
      _authenticationRepository.signOut();
    } catch (_) {
      yield Uninitialized();
    }
  }

  Stream<AuthenticationState> _mapSetUserStateToState(
      SetUserState event) async* {
    try {
      _setUserState(event.userState);
    } catch (_) {
      yield Uninitialized();
    }
  }

  void _syncUserProfileData() async {
    _userId = _userId ?? await _authenticationRepository.getCurrentUserId();

    _userRepository
        .getStreamUserById(_userId)
        .listen((event) => userDataInfo.input.add(event));

    await _setUserState(UserStatus.online);
  }

  Future<bool> _setUserState(UserStatus userStatus) async {
    try {
      User _user;

      _userId = _userId ?? await _authenticationRepository.getCurrentUserId();
      _user = await _userRepository.getUserById(_userId);
      _user = _user.rebuild((b) => b..userStatus = userStatus);

      _userRepository.updateUser(_user.toJson(), _userId);

      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    _isSignedIn = _isSignedIn ?? await _authenticationRepository.isSignedIn();

    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        _isSignedIn ? _setUserState(UserStatus.online) : print("resume state");
        break;
      case AppLifecycleState.inactive:
        _isSignedIn
            ? _setUserState(UserStatus.offline)
            : print("inactive state");
        break;
      case AppLifecycleState.paused:
        _isSignedIn ? _setUserState(UserStatus.waiting) : print("paused state");
        break;
      case AppLifecycleState.detached:
        _isSignedIn
            ? _setUserState(UserStatus.offline)
            : print("detached state");
        break;
    }
  }
}
