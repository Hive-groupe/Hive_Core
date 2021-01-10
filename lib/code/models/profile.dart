import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

import '_index.dart';

part 'profile.g.dart';

abstract class Profile implements Built<Profile, ProfileBuilder> {
  @nullable
  String get id;
  @nullable
  String get avatar;
  String get name;
  String get firstname;
  @nullable
  String get secondname;
  @nullable
  String get nickname;
  @nullable
  ContactInformation get contactInformation;
  @nullable
  Map<String, dynamic> get events;
  @nullable
  Gender get gender;

  Profile._();
  factory Profile([void Function(ProfileBuilder) updates]) = _$Profile;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Profile.serializer, this);
  }

  static Profile fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Profile.serializer, json);
  }

  static Serializer<Profile> get serializer => _$profileSerializer;
}
