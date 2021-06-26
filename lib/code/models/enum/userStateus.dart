import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'userStateus.g.dart';

class UserStatus extends EnumClass {
  static const UserStatus online = _$online;
  static const UserStatus offline = _$offline;
  static const UserStatus waiting = _$waiting;
  static const UserStatus deleted = _$deleted;

  const UserStatus._(String name) : super(name);

  static BuiltSet<UserStatus> get values => _$userStatusValues;
  static UserStatus valueOf(String name) => _$userStatusValueOf(name);

  Map<String, dynamic> serialize() {
    return json.decode(
      json.encode(
        serializers.serializeWith(UserStatus.serializer, this),
      ),
    );
  }

  static UserStatus? deserialize(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserStatus.serializer, json);
  }

  static Serializer<UserStatus> get serializer => _$userStatusSerializer;
}
