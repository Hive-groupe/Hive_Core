import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/models/device.dart';
import 'package:hive_core/code/repositories/device_repository/device_repository.dart';
import 'package:rxdart/rxdart.dart';

part 'device_list_event.dart';
part 'device_list_state.dart';

class DeviceListBloc extends Bloc<DeviceListEvent, DeviceListState> {
  final BuildContext context;

  late DeviceRepository _deviceRepository;

  final _deviceListController = BehaviorSubject<BuiltList<Device>>();

  DeviceListBloc({
    required this.context,
  }) : super(
          DeviceListInitial(),
        ) {
    initState();
  }

  initState() {
    _deviceRepository = RepositoryProvider.of<DeviceRepository>(context);
  }

  @override
  Future<void> close() {
    _deviceListController.close();
    return super.close();
  }

  @override
  Stream<DeviceListState> mapEventToState(
    DeviceListEvent event,
  ) async* {
    if (event is FindDevices) {
      yield* _mapFindDevicesToState(event);
    } else if (event is DeleteDeviceItem) {
      yield* _mapDeleteDeviceItemToState(event);
    }
  }

  Stream<DeviceListState> _mapFindDevicesToState(FindDevices event) async* {
    try {
      yield DeviceListLoading();

      _deviceRepository.findDeviceStream().listen(
            (event) => _deviceListController.sink.add(event),
          );

      yield DeviceListLoaded(deviceList: _deviceListController.stream);
    } catch (_) {
      yield DeviceListError();
    }
  }

  Stream<DeviceListState> _mapDeleteDeviceItemToState(
      DeleteDeviceItem event) async* {
    try {
      yield DeviceListLoading();
      String _deviceId;

      _deviceId = event.deviceId;

      _deviceRepository.removeDevice(_deviceId);

      yield DeviceListLoaded(deviceList: _deviceListController.stream);
    } catch (_) {
      yield DeviceListError();
    }
  }

  bool isDeviceListEmpty(List<Device> _deviceList) => _deviceList.length > 0;
}
