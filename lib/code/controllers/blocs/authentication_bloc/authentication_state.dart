part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  AuthenticationState();
}

// Estados:
// No inicializado -> SplashScreen
class Uninitialized extends AuthenticationState {
  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType {}''';
}

// Autentificado -> Home
class Authenticated extends AuthenticationState {
  Authenticated();

  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType {}''';
}

// No autentificado -> Login
class Unauthenticated extends AuthenticationState {
  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType {}''';
}
