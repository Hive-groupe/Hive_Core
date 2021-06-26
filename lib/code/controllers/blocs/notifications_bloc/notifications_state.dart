part of 'notifications_bloc.dart';

abstract class NotificationsState extends Equatable {}

class NotificationsInitial extends NotificationsState {
  @override
  List<Object> get props => [];
}

class NotificationsError extends NotificationsState {
  @override
  List<Object> get props => [];
}

class NotificationsLoading extends NotificationsState {
  @override
  List<Object> get props => [];
}

class NotificationsLoaded extends NotificationsState {
  final Stream<BuiltList<Widget>> notificationsList;

  NotificationsLoaded({required this.notificationsList});

  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType  {
    - notificationsList: ${notificationsList.toString()}
  }''';
}
