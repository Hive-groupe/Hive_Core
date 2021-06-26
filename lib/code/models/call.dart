import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'call.g.dart';

abstract class Call implements Built<Call, CallBuilder> {
  @BuiltValueField(wireName: 'caller_id')
  String get callerId;

  @BuiltValueField(wireName: 'caller_name')
  String get callerName;

  @BuiltValueField(wireName: 'caller_pic')
  String? get callerPic;

  @BuiltValueField(wireName: 'receiver_id')
  String get receiverId;

  @BuiltValueField(wireName: 'receiver_name')
  String get receiverName;

  @BuiltValueField(wireName: 'receiver_pic')
  String? get receiverPic;

  @BuiltValueField(wireName: 'channel_id')
  String get channelId;

  @BuiltValueField(wireName: 'has_dialled')
  bool? get hasDialled;

  Call._();
  factory Call([void Function(CallBuilder) updates]) = _$Call;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(Call.serializer, this),
      ),
    );
  }

  static Call? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Call.serializer, json);
  }

  static Serializer<Call> get serializer => _$callSerializer;
}
