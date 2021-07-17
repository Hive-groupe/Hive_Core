import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'date_type.g.dart';

class DateType extends EnumClass {
  static const DateType DAY = _$DAY;
  static const DateType WEEKS = _$WEEKS;
  static const DateType MONTHS = _$MONTHS;
  static const DateType QUARTERS = _$QUARTERS;
  static const DateType YEARS = _$YEARS;
  static const DateType PERIOD = _$PERIOD;
  static const DateType ALL = _$ALL;

  const DateType._(String name) : super(name);

  static BuiltSet<DateType> get values => _$dateTypeValues;
  static DateType valueOf(String name) => _$dateTypeValueOf(name);

  Map<String, dynamic> serialize() {
    return json.decode(
      json.encode(
        serializers.serializeWith(DateType.serializer, this),
      ),
    );
  }

  static DateType? deserialize(Map<String, dynamic> json) {
    return serializers.deserializeWith(DateType.serializer, json);
  }

  static Serializer<DateType> get serializer => _$dateTypeSerializer;
}
