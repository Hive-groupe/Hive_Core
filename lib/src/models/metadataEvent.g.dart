// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadataEvent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MetadataEvent> _$metadataEventSerializer =
    new _$MetadataEventSerializer();

class _$MetadataEventSerializer implements StructuredSerializer<MetadataEvent> {
  @override
  final Iterable<Type> types = const [MetadataEvent, _$MetadataEvent];
  @override
  final String wireName = 'MetadataEvent';

  @override
  Iterable<Object> serialize(Serializers serializers, MetadataEvent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MetadataEvent deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetadataEventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MetadataEvent extends MetadataEvent {
  @override
  final String userId;
  @override
  final String date;

  factory _$MetadataEvent([void Function(MetadataEventBuilder) updates]) =>
      (new MetadataEventBuilder()..update(updates)).build();

  _$MetadataEvent._({this.userId, this.date}) : super._() {
    if (userId == null) {
      throw new BuiltValueNullFieldError('MetadataEvent', 'userId');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('MetadataEvent', 'date');
    }
  }

  @override
  MetadataEvent rebuild(void Function(MetadataEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetadataEventBuilder toBuilder() => new MetadataEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetadataEvent &&
        userId == other.userId &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, userId.hashCode), date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MetadataEvent')
          ..add('userId', userId)
          ..add('date', date))
        .toString();
  }
}

class MetadataEventBuilder
    implements Builder<MetadataEvent, MetadataEventBuilder> {
  _$MetadataEvent _$v;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  MetadataEventBuilder();

  MetadataEventBuilder get _$this {
    if (_$v != null) {
      _userId = _$v.userId;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetadataEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MetadataEvent;
  }

  @override
  void update(void Function(MetadataEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MetadataEvent build() {
    final _$result = _$v ?? new _$MetadataEvent._(userId: userId, date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
