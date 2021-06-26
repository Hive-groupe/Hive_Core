import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/models/metadata.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'device.g.dart';

abstract class Device implements Built<Device, DeviceBuilder> {
  Metadata get metadata;

  String get notificationsToken;

  String get platform;

  String? get ipAddress;

  String? get macAddress;

  Device._();
  factory Device([void Function(DeviceBuilder) updates]) = _$Device;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(Device.serializer, this),
      ),
    );
  }

  static Device? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Device.serializer, json.decode(jsonString));
  }

  static Serializer<Device> get serializer => _$deviceSerializer;
}
