part of 'device_list_screen_bloc.dart';

@freezed
class DeviceListScreenState with _$DeviceListScreenState {
  // DeviceListInitial
  const factory DeviceListScreenState.deviceListInitial() = DeviceListInitial;

  // DeviceListError
  const factory DeviceListScreenState.deviceListError() = DeviceListError;

  // DeviceListLoading
  const factory DeviceListScreenState.deviceListLoading() = DeviceListLoading;

  // DeviceListLoaded
  const factory DeviceListScreenState.deviceListLoaded({
    required Stream<BuiltList<Device>> deviceList,
  }) = DeviceListLoaded;
}
