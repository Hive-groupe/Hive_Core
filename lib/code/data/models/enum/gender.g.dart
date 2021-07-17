// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Gender _$MALE = const Gender._('MALE');
const Gender _$FEMALE = const Gender._('FEMALE');
const Gender _$OTHER = const Gender._('OTHER');

Gender _$genderValueOf(String name) {
  switch (name) {
    case 'MALE':
      return _$MALE;
    case 'FEMALE':
      return _$FEMALE;
    case 'OTHER':
      return _$OTHER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Gender> _$genderValues = new BuiltSet<Gender>(const <Gender>[
  _$MALE,
  _$FEMALE,
  _$OTHER,
]);

Serializer<Gender> _$genderSerializer = new _$GenderSerializer();

class _$GenderSerializer implements PrimitiveSerializer<Gender> {
  @override
  final Iterable<Type> types = const <Type>[Gender];
  @override
  final String wireName = 'Gender';

  @override
  Object serialize(Serializers serializers, Gender object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Gender deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Gender.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
