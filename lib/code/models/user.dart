import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/models/_index.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  @nullable
  String get id;
  String get username;
  @nullable
  String get password;
  //Preferences get preferences;
  @nullable
  Profile get profile;
  @nullable
  UserStatus get userStatus;
  // @nullable
  // BuiltList<String> get favoritesChatRoons;

  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(User.serializer, this);
  }

  static User fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(User.serializer, json);
  }

  static Serializer<User> get serializer => _$userSerializer;
}
