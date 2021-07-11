part of 'dialy_screen_bloc.dart';

@immutable
abstract class DialyScreenState {}

class DialyScreenInitial extends DialyScreenState {}

class DialyScreenError extends DialyScreenState {
  DialyScreenError();

  @override
  String toString() => '''
  '$runtimeType  {}''';
}

class DialyScreenLoading extends DialyScreenState {
  @override
  String toString() => '''
  '$runtimeType  {}''';
}

class DialyScreenEmpty extends DialyScreenState {
  DialyScreenEmpty();

  @override
  String toString() => '''
  '$runtimeType  {}''';
}

class DialyScreenLoaded extends DialyScreenState {
  DialyScreenLoaded();

  @override
  String toString() => '''
  '$runtimeType  {
  }''';
}

class DialyScreenTutorialState extends DialyScreenState {
  DialyScreenTutorialState();

  @override
  String toString() => '''
  '$runtimeType  {
  }''';
}
