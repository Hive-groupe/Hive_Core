part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  // ChatListingInitial
  const factory NotificationsState.notificationsInitial() =
      NotificationsInitial;

  // NotificationsError
  const factory NotificationsState.notificationsError() = NotificationsError;

  // NotificationsLoading
  const factory NotificationsState.notificationsLoading() =
      NotificationsLoading;

  // NotificationsLoaded
  const factory NotificationsState.notificationsLoaded({
    required Stream<BuiltList<Widget>> notificationsList,
  }) = NotificationsLoaded;
}
