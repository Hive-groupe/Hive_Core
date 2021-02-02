import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'gender.g.dart';

class Gender extends EnumClass {
  static const Gender MALE = _$MALE;
  static const Gender FEMALE = _$FEMALE;
  static const Gender OTHER = _$OTHER;

  const Gender._(String name) : super(name);

  static BuiltSet<Gender> get values => _$genderValues;
  static Gender valueOf(String name) => _$genderValueOf(name);

  String serialize() {
    return serializers.serializeWith(Gender.serializer, this);
  }

  static Gender deserialize(String string) {
    return serializers.deserializeWith(Gender.serializer, string);
  }

  static Serializer<Gender> get serializer => _$genderSerializer;
}
