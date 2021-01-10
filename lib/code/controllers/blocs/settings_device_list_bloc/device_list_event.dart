part of 'device_list_bloc.dart';

abstract class DeviceListEvent extends Equatable {
  const DeviceListEvent();
}

class FindDevices extends DeviceListEvent {
  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType  {}''';
}

class DeleteDeviceItem extends DeviceListEvent {
  final String deviceId;

  DeleteDeviceItem({this.deviceId});

  @override
  List<Object> get props => [deviceId];

  @override
  String toString() => '''
  $runtimeType  {
    - deviceId: ${deviceId.toString()}
  }''';
}
