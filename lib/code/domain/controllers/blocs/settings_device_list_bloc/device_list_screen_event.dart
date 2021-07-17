part of 'device_list_screen_bloc.dart';

@freezed
class DeviceListScreenEvent with _$DeviceListScreenEvent {
  // FindDevices
  const factory DeviceListScreenEvent.findDevices() = FindDevices;

  // DeleteDeviceItem
  const factory DeviceListScreenEvent.deleteDeviceItem({
    required String deviceId,
  }) = DeleteDeviceItem;
}
