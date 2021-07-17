import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive_core/code/data/models/device.dart';
import 'package:hive_core/code/ui/constants/hive_const_strings.dart';
import 'package:rxdart/rxdart.dart';

part 'device_repository_firebase_impl.dart';

abstract class DeviceRepository<model> {
  Future<String> addDevice(Map device);
  Future<model?> getDeviceById(String id);
  Future updateDevice(Map device, String id);
  Future<bool> removeDevice(String id);
  Future<List<Device>> findDevice();
  Future<Device?> getThisDevice(String notificationsToken);
  Future<bool> isThisDeviceKnown(String deviceId);
  Stream<BuiltList<Device>> findDeviceStream();
}
