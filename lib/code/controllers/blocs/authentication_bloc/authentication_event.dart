part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}

// App Started
class AppStarted extends AuthenticationEvent {
  @override
  List<Object> get props => throw UnimplementedError();

  @override
  String toString() => '''
  $runtimeType {}''';
}

// LoggedIn
class LoggedIn extends AuthenticationEvent {
  @override
  List<Object> get props => throw UnimplementedError();

  @override
  String toString() => '''
  $runtimeType {}''';
}

// LogedOut
class LogedOut extends AuthenticationEvent {
  @override
  List<Object> get props => throw UnimplementedError();

  @override
  String toString() => '''
  $runtimeType {}''';
}

// SetUserState
class SetUserState extends AuthenticationEvent {
  final UserStatus userState;

  SetUserState({this.userState});

  @override
  List<Object> get props => [userState];

  @override
  String toString() => '''
  $runtimeType {
    - userStatus: ${userState.toString()}
  }''';
}
