part of 'dialy_screen_bloc.dart';

@immutable
abstract class DialyScreenEvent {}

class GetDailyData extends DialyScreenEvent {
  final DateTime selectedDate;

  GetDailyData({required this.selectedDate});

  @override
  String toString() => '''
  $runtimeType  {}''';
}

class FinishTutorialDaily extends DialyScreenEvent {
  FinishTutorialDaily();

  @override
  String toString() => '''
  $runtimeType  {
  }''';
}

class ResetTutorialDaily extends DialyScreenEvent {
  ResetTutorialDaily();

  @override
  String toString() => '''
  $runtimeType  {
  }''';
}
