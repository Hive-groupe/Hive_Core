part of 'notifications_bloc.dart';

abstract class NotificationsEvent extends Equatable {
  const NotificationsEvent();
}

class InitNotifications extends NotificationsEvent {
  final NotificationsPreferences? notificationsPreferences;

  InitNotifications({
    this.notificationsPreferences,
  });

  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType  {
    - notificationsPreferences: ${notificationsPreferences.toString()}
  }''';
}

class SaveDevice extends NotificationsEvent {
  SaveDevice();

  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ChangeNotificationsPreferences extends NotificationsEvent {
  final NotificationsPreferences? notificationsPreferences;

  ChangeNotificationsPreferences({
    this.notificationsPreferences,
  });

  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType  {
    - notificationsPreferences: ${notificationsPreferences.toString()}
  }''';
}

class FinishTutorialNotifications extends NotificationsEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}
