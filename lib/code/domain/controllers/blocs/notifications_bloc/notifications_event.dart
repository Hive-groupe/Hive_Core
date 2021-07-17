part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  // InitNotifications
  const factory NotificationsEvent.initNotifications({
    NotificationsPreferences? notificationsPreferences,
  }) = InitNotifications;

  // SaveDevice
  const factory NotificationsEvent.saveDevice() = SaveDevice;

  // ChangeNotificationsPreferences
  const factory NotificationsEvent.changeNotificationsPreferences({
    required NotificationsPreferences notificationsPreferences,
  }) = ChangeNotificationsPreferences;

  // FinishTutorialNotifications
  const factory NotificationsEvent.finishTutorialNotifications() =
      FinishTutorialNotifications;
}
