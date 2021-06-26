import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/models/_index.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  String? get id;

  String get username;

  String? get password;

  //Preferences get preferences;

  Profile? get profile;

  UserStatus? get userStatus;

  // @nullable
  // BuiltList<String> get favoritesChatRoons;

  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(User.serializer, this),
      ),
    );
  }

  static User? fromJson(String jsonString) {
    return serializers.deserializeWith(
        User.serializer, json.decode(jsonString));
  }

  static Serializer<User> get serializer => _$userSerializer;
}
