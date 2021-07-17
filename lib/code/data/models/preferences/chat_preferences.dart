import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'chat_preferences.g.dart';

abstract class ChatPreferences
    implements Built<ChatPreferences, ChatPreferencesBuilder> {
  bool? get enterToSend;

  ChatPreferences._();
  factory ChatPreferences([void Function(ChatPreferencesBuilder) updates]) =
      _$ChatPreferences;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(ChatPreferences.serializer, this),
      ),
    );
  }

  static ChatPreferences? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ChatPreferences.serializer, json);
  }

  static Serializer<ChatPreferences> get serializer =>
      _$chatPreferencesSerializer;
}
