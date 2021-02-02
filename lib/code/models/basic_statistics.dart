import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'basic_statistics.g.dart';

abstract class BasicStatistics
    implements Built<BasicStatistics, BasicStatisticsBuilder> {
  int get length;

  double get minimumValue;
  double get averageValue;
  double get maximumValue;
  double get minimumDifference;
  double get averageDifference;
  double get maximumDifference;
  num get totalAmount;
  double get finalDiference;

  BasicStatistics._();
  factory BasicStatistics([void Function(BasicStatisticsBuilder) updates]) =
      _$BasicStatistics;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(BasicStatistics.serializer, this);
  }

  static BasicStatistics fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(BasicStatistics.serializer, json);
  }

  static Serializer<BasicStatistics> get serializer =>
      _$basicStatisticsSerializer;
}
