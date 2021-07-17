// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DateType _$DAY = const DateType._('DAY');
const DateType _$WEEKS = const DateType._('WEEKS');
const DateType _$MONTHS = const DateType._('MONTHS');
const DateType _$QUARTERS = const DateType._('QUARTERS');
const DateType _$YEARS = const DateType._('YEARS');
const DateType _$PERIOD = const DateType._('PERIOD');
const DateType _$ALL = const DateType._('ALL');

DateType _$dateTypeValueOf(String name) {
  switch (name) {
    case 'DAY':
      return _$DAY;
    case 'WEEKS':
      return _$WEEKS;
    case 'MONTHS':
      return _$MONTHS;
    case 'QUARTERS':
      return _$QUARTERS;
    case 'YEARS':
      return _$YEARS;
    case 'PERIOD':
      return _$PERIOD;
    case 'ALL':
      return _$ALL;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DateType> _$dateTypeValues =
    new BuiltSet<DateType>(const <DateType>[
  _$DAY,
  _$WEEKS,
  _$MONTHS,
  _$QUARTERS,
  _$YEARS,
  _$PERIOD,
  _$ALL,
]);

Serializer<DateType> _$dateTypeSerializer = new _$DateTypeSerializer();

class _$DateTypeSerializer implements PrimitiveSerializer<DateType> {
  @override
  final Iterable<Type> types = const <Type>[DateType];
  @override
  final String wireName = 'DateType';

  @override
  Object serialize(Serializers serializers, DateType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  DateType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DateType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
