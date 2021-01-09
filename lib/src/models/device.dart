import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/src/utils/othes/serializers.dart';

import 'metadata.dart';

part 'device.g.dart';

abstract class Device implements Built<Device, DeviceBuilder> {
  Metadata get metadata;

  String get notificationsToken;

  String get platform;
  @nullable
  String get ipAddress;
  @nullable
  String get macAddress;

  Device._();
  factory Device([void Function(DeviceBuilder) updates]) = _$Device;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Device.serializer, this);
  }

  static Device fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Device.serializer, json);
  }

  static Serializer<Device> get serializer => _$deviceSerializer;
}
