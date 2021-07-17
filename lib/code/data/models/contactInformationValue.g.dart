// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactInformationValue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContactInformationValue> _$contactInformationValueSerializer =
    new _$ContactInformationValueSerializer();

class _$ContactInformationValueSerializer
    implements StructuredSerializer<ContactInformationValue> {
  @override
  final Iterable<Type> types = const [
    ContactInformationValue,
    _$ContactInformationValue
  ];
  @override
  final String wireName = 'ContactInformationValue';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ContactInformationValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.metadata;
    if (value != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Metadata)));
    }
    return result;
  }

  @override
  ContactInformationValue deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactInformationValueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
              specifiedType: const FullType(Metadata))! as Metadata);
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContactInformationValue extends ContactInformationValue {
  @override
  final Metadata? metadata;
  @override
  final String value;
  @override
  final String label;

  factory _$ContactInformationValue(
          [void Function(ContactInformationValueBuilder)? updates]) =>
      (new ContactInformationValueBuilder()..update(updates)).build();

  _$ContactInformationValue._(
      {this.metadata, required this.value, required this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        value, 'ContactInformationValue', 'value');
    BuiltValueNullFieldError.checkNotNull(
        label, 'ContactInformationValue', 'label');
  }

  @override
  ContactInformationValue rebuild(
          void Function(ContactInformationValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactInformationValueBuilder toBuilder() =>
      new ContactInformationValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactInformationValue &&
        metadata == other.metadata &&
        value == other.value &&
        label == other.label;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, metadata.hashCode), value.hashCode), label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContactInformationValue')
          ..add('metadata', metadata)
          ..add('value', value)
          ..add('label', label))
        .toString();
  }
}

class ContactInformationValueBuilder
    implements
        Builder<ContactInformationValue, ContactInformationValueBuilder> {
  _$ContactInformationValue? _$v;

  MetadataBuilder? _metadata;
  MetadataBuilder get metadata => _$this._metadata ??= new MetadataBuilder();
  set metadata(MetadataBuilder? metadata) => _$this._metadata = metadata;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  ContactInformationValueBuilder();

  ContactInformationValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metadata = $v.metadata?.toBuilder();
      _value = $v.value;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactInformationValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContactInformationValue;
  }

  @override
  void update(void Function(ContactInformationValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContactInformationValue build() {
    _$ContactInformationValue _$result;
    try {
      _$result = _$v ??
          new _$ContactInformationValue._(
              metadata: _metadata?.build(),
              value: BuiltValueNullFieldError.checkNotNull(
                  value, 'ContactInformationValue', 'value'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label, 'ContactInformationValue', 'label'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContactInformationValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
