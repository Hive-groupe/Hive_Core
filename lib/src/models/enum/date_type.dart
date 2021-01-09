import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/src/utils/othes/serializers.dart';

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

  String serialize() {
    return serializers.serializeWith(DateType.serializer, this);
  }

  static DateType deserialize(String string) {
    return serializers.deserializeWith(DateType.serializer, string);
  }

  static Serializer<DateType> get serializer => _$dateTypeSerializer;
}
