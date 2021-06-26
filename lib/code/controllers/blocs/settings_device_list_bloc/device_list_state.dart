part of 'device_list_bloc.dart';

abstract class DeviceListState extends Equatable {
  const DeviceListState();
}

class DeviceListInitial extends DeviceListState {
  @override
  List<Object> get props => [];
}

class DeviceListError extends DeviceListState {
  DeviceListError();

  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  '$runtimeType  {}''';
}

class DeviceListLoading extends DeviceListState {
  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  '$runtimeType  {}''';
}

class DeviceListEmpty extends DeviceListState {
  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  '$runtimeType  {}''';
}

class DeviceListLoaded extends DeviceListState {
  final Stream<BuiltList<Device>> deviceList;

  DeviceListLoaded({
    required this.deviceList,
  });

  @override
  List<Object> get props => [
        deviceList,
      ];

  @override
  String toString() => '''
  $runtimeType  {
    -  deviceList: ${deviceList.toString()}
  }''';
}
