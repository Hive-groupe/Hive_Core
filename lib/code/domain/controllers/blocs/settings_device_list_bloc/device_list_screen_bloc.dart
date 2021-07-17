import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_core/code/data/models/device.dart';
import 'package:hive_core/code/data/repositories/device_repository/device_repository.dart';
import 'package:rxdart/rxdart.dart';

part 'device_list_screen_bloc.freezed.dart';
part 'device_list_screen_event.dart';
part 'device_list_screen_state.dart';

class DeviceListScreenBloc
    extends Bloc<DeviceListScreenEvent, DeviceListScreenState> {
  late DeviceRepository _deviceRepository;

  final _deviceListController = BehaviorSubject<BuiltList<Device>>();

  DeviceListScreenBloc({
    required DeviceRepository deviceRepository,
  })  : _deviceRepository = deviceRepository,
        super(
          DeviceListInitial(),
        ) {
    initState();
  }

  initState() {
    // _deviceRepository = RepositoryProvider.of<DeviceRepository>(context);
  }

  @override
  Future<void> close() {
    _deviceListController.close();
    return super.close();
  }

  @override
  Stream<DeviceListScreenState> mapEventToState(
    DeviceListScreenEvent event,
  ) async* {
    yield* event.map(
      findDevices: _mapFindDevicesToState,
      deleteDeviceItem: _mapDeleteDeviceItemToState,
    );
  }

  Stream<DeviceListScreenState> _mapFindDevicesToState(
    FindDevices event,
  ) async* {
    try {
      yield DeviceListLoading();

      _deviceRepository.findDeviceStream().listen(
            (event) => _deviceListController.sink.add(event),
          );

      yield DeviceListLoaded(
        deviceList: _deviceListController.stream,
      );
    } catch (_) {
      yield DeviceListError();
    }
  }

  Stream<DeviceListScreenState> _mapDeleteDeviceItemToState(
    DeleteDeviceItem event,
  ) async* {
    try {
      yield DeviceListLoading();
      String _deviceId;

      _deviceId = event.deviceId;

      _deviceRepository.removeDevice(_deviceId);

      yield DeviceListLoaded(
        deviceList: _deviceListController.stream,
      );
    } catch (_) {
      yield DeviceListError();
    }
  }

  bool isDeviceListEmpty(List<Device> _deviceList) => _deviceList.length > 0;
}
