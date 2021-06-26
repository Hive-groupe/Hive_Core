import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

import '_index.dart';

part 'profile.g.dart';

abstract class Profile implements Built<Profile, ProfileBuilder> {
  String? get id;

  String? get avatar;

  String get name;

  String get firstname;

  String? get secondname;

  String? get nickname;

  ContactInformation? get contactInformation;

  Map<String, dynamic>? get events;

  Gender? get gender;

  Profile._();
  factory Profile([void Function(ProfileBuilder) updates]) = _$Profile;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(Profile.serializer, this),
      ),
    );
  }

  static Profile? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Profile.serializer, json);
  }

  static Serializer<Profile> get serializer => _$profileSerializer;
}
