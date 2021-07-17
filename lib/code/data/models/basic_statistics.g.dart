// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_statistics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BasicStatistics> _$basicStatisticsSerializer =
    new _$BasicStatisticsSerializer();

class _$BasicStatisticsSerializer
    implements StructuredSerializer<BasicStatistics> {
  @override
  final Iterable<Type> types = const [BasicStatistics, _$BasicStatistics];
  @override
  final String wireName = 'BasicStatistics';

  @override
  Iterable<Object?> serialize(Serializers serializers, BasicStatistics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'length',
      serializers.serialize(object.length, specifiedType: const FullType(int)),
      'minimumValue',
      serializers.serialize(object.minimumValue,
          specifiedType: const FullType(double)),
      'averageValue',
      serializers.serialize(object.averageValue,
          specifiedType: const FullType(double)),
      'maximumValue',
      serializers.serialize(object.maximumValue,
          specifiedType: const FullType(double)),
      'minimumDifference',
      serializers.serialize(object.minimumDifference,
          specifiedType: const FullType(double)),
      'averageDifference',
      serializers.serialize(object.averageDifference,
          specifiedType: const FullType(double)),
      'maximumDifference',
      serializers.serialize(object.maximumDifference,
          specifiedType: const FullType(double)),
      'totalAmount',
      serializers.serialize(object.totalAmount,
          specifiedType: const FullType(num)),
      'finalDiference',
      serializers.serialize(object.finalDiference,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  BasicStatistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BasicStatisticsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'length':
          result.length = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'minimumValue':
          result.minimumValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'averageValue':
          result.averageValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maximumValue':
          result.maximumValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'minimumDifference':
          result.minimumDifference = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'averageDifference':
          result.averageDifference = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maximumDifference':
          result.maximumDifference = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'totalAmount':
          result.totalAmount = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'finalDiference':
          result.finalDiference = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$BasicStatistics extends BasicStatistics {
  @override
  final int length;
  @override
  final double minimumValue;
  @override
  final double averageValue;
  @override
  final double maximumValue;
  @override
  final double minimumDifference;
  @override
  final double averageDifference;
  @override
  final double maximumDifference;
  @override
  final num totalAmount;
  @override
  final double finalDiference;

  factory _$BasicStatistics([void Function(BasicStatisticsBuilder)? updates]) =>
      (new BasicStatisticsBuilder()..update(updates)).build();

  _$BasicStatistics._(
      {required this.length,
      required this.minimumValue,
      required this.averageValue,
      required this.maximumValue,
      required this.minimumDifference,
      required this.averageDifference,
      required this.maximumDifference,
      required this.totalAmount,
      required this.finalDiference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(length, 'BasicStatistics', 'length');
    BuiltValueNullFieldError.checkNotNull(
        minimumValue, 'BasicStatistics', 'minimumValue');
    BuiltValueNullFieldError.checkNotNull(
        averageValue, 'BasicStatistics', 'averageValue');
    BuiltValueNullFieldError.checkNotNull(
        maximumValue, 'BasicStatistics', 'maximumValue');
    BuiltValueNullFieldError.checkNotNull(
        minimumDifference, 'BasicStatistics', 'minimumDifference');
    BuiltValueNullFieldError.checkNotNull(
        averageDifference, 'BasicStatistics', 'averageDifference');
    BuiltValueNullFieldError.checkNotNull(
        maximumDifference, 'BasicStatistics', 'maximumDifference');
    BuiltValueNullFieldError.checkNotNull(
        totalAmount, 'BasicStatistics', 'totalAmount');
    BuiltValueNullFieldError.checkNotNull(
        finalDiference, 'BasicStatistics', 'finalDiference');
  }

  @override
  BasicStatistics rebuild(void Function(BasicStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BasicStatisticsBuilder toBuilder() =>
      new BasicStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BasicStatistics &&
        length == other.length &&
        minimumValue == other.minimumValue &&
        averageValue == other.averageValue &&
        maximumValue == other.maximumValue &&
        minimumDifference == other.minimumDifference &&
        averageDifference == other.averageDifference &&
        maximumDifference == other.maximumDifference &&
        totalAmount == other.totalAmount &&
        finalDiference == other.finalDiference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, length.hashCode),
                                    minimumValue.hashCode),
                                averageValue.hashCode),
                            maximumValue.hashCode),
                        minimumDifference.hashCode),
                    averageDifference.hashCode),
                maximumDifference.hashCode),
            totalAmount.hashCode),
        finalDiference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BasicStatistics')
          ..add('length', length)
          ..add('minimumValue', minimumValue)
          ..add('averageValue', averageValue)
          ..add('maximumValue', maximumValue)
          ..add('minimumDifference', minimumDifference)
          ..add('averageDifference', averageDifference)
          ..add('maximumDifference', maximumDifference)
          ..add('totalAmount', totalAmount)
          ..add('finalDiference', finalDiference))
        .toString();
  }
}

class BasicStatisticsBuilder
    implements Builder<BasicStatistics, BasicStatisticsBuilder> {
  _$BasicStatistics? _$v;

  int? _length;
  int? get length => _$this._length;
  set length(int? length) => _$this._length = length;

  double? _minimumValue;
  double? get minimumValue => _$this._minimumValue;
  set minimumValue(double? minimumValue) => _$this._minimumValue = minimumValue;

  double? _averageValue;
  double? get averageValue => _$this._averageValue;
  set averageValue(double? averageValue) => _$this._averageValue = averageValue;

  double? _maximumValue;
  double? get maximumValue => _$this._maximumValue;
  set maximumValue(double? maximumValue) => _$this._maximumValue = maximumValue;

  double? _minimumDifference;
  double? get minimumDifference => _$this._minimumDifference;
  set minimumDifference(double? minimumDifference) =>
      _$this._minimumDifference = minimumDifference;

  double? _averageDifference;
  double? get averageDifference => _$this._averageDifference;
  set averageDifference(double? averageDifference) =>
      _$this._averageDifference = averageDifference;

  double? _maximumDifference;
  double? get maximumDifference => _$this._maximumDifference;
  set maximumDifference(double? maximumDifference) =>
      _$this._maximumDifference = maximumDifference;

  num? _totalAmount;
  num? get totalAmount => _$this._totalAmount;
  set totalAmount(num? totalAmount) => _$this._totalAmount = totalAmount;

  double? _finalDiference;
  double? get finalDiference => _$this._finalDiference;
  set finalDiference(double? finalDiference) =>
      _$this._finalDiference = finalDiference;

  BasicStatisticsBuilder();

  BasicStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _length = $v.length;
      _minimumValue = $v.minimumValue;
      _averageValue = $v.averageValue;
      _maximumValue = $v.maximumValue;
      _minimumDifference = $v.minimumDifference;
      _averageDifference = $v.averageDifference;
      _maximumDifference = $v.maximumDifference;
      _totalAmount = $v.totalAmount;
      _finalDiference = $v.finalDiference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BasicStatistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BasicStatistics;
  }

  @override
  void update(void Function(BasicStatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BasicStatistics build() {
    final _$result = _$v ??
        new _$BasicStatistics._(
            length: BuiltValueNullFieldError.checkNotNull(
                length, 'BasicStatistics', 'length'),
            minimumValue: BuiltValueNullFieldError.checkNotNull(
                minimumValue, 'BasicStatistics', 'minimumValue'),
            averageValue: BuiltValueNullFieldError.checkNotNull(
                averageValue, 'BasicStatistics', 'averageValue'),
            maximumValue: BuiltValueNullFieldError.checkNotNull(
                maximumValue, 'BasicStatistics', 'maximumValue'),
            minimumDifference: BuiltValueNullFieldError.checkNotNull(
                minimumDifference, 'BasicStatistics', 'minimumDifference'),
            averageDifference: BuiltValueNullFieldError.checkNotNull(
                averageDifference, 'BasicStatistics', 'averageDifference'),
            maximumDifference: BuiltValueNullFieldError.checkNotNull(
                maximumDifference, 'BasicStatistics', 'maximumDifference'),
            totalAmount: BuiltValueNullFieldError.checkNotNull(
                totalAmount, 'BasicStatistics', 'totalAmount'),
            finalDiference:
                BuiltValueNullFieldError.checkNotNull(finalDiference, 'BasicStatistics', 'finalDiference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
