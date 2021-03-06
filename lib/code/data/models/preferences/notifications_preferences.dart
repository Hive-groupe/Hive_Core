import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'notifications_preferences.g.dart';

abstract class NotificationsPreferences
    implements
        Built<NotificationsPreferences, NotificationsPreferencesBuilder> {
  bool get notifications;

  bool get soundEffects;

  bool get vibration;

  NotificationsPreferences._();
  factory NotificationsPreferences(
          [void Function(NotificationsPreferencesBuilder) updates]) =
      _$NotificationsPreferences;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(NotificationsPreferences.serializer, this),
      ),
    );
  }

  static NotificationsPreferences? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(
        NotificationsPreferences.serializer, json);
  }

  static Serializer<NotificationsPreferences> get serializer =>
      _$notificationsPreferencesSerializer;
}
