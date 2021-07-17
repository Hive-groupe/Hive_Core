// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Address> _$addressSerializer = new _$AddressSerializer();

class _$AddressSerializer implements StructuredSerializer<Address> {
  @override
  final Iterable<Type> types = const [Address, _$Address];
  @override
  final String wireName = 'Address';

  @override
  Iterable<Object?> serialize(Serializers serializers, Address object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.metadata;
    if (value != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Metadata)));
    }
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postalCode;
    if (value != null) {
      result
        ..add('postalCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.province;
    if (value != null) {
      result
        ..add('province')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.street;
    if (value != null) {
      result
        ..add('street')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.floor;
    if (value != null) {
      result
        ..add('floor')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.door;
    if (value != null) {
      result
        ..add('door')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Address deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
              specifiedType: const FullType(Metadata))! as Metadata);
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postalCode':
          result.postalCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'province':
          result.province = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'floor':
          result.floor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'door':
          result.door = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Address extends Address {
  @override
  final String? id;
  @override
  final Metadata? metadata;
  @override
  final String? label;
  @override
  final String? postalCode;
  @override
  final String? country;
  @override
  final String? city;
  @override
  final String? province;
  @override
  final String? street;
  @override
  final int? number;
  @override
  final int? floor;
  @override
  final String? door;

  factory _$Address([void Function(AddressBuilder)? updates]) =>
      (new AddressBuilder()..update(updates)).build();

  _$Address._(
      {this.id,
      this.metadata,
      this.label,
      this.postalCode,
      this.country,
      this.city,
      this.province,
      this.street,
      this.number,
      this.floor,
      this.door})
      : super._();

  @override
  Address rebuild(void Function(AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressBuilder toBuilder() => new AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
        id == other.id &&
        metadata == other.metadata &&
        label == other.label &&
        postalCode == other.postalCode &&
        country == other.country &&
        city == other.city &&
        province == other.province &&
        street == other.street &&
        number == other.number &&
        floor == other.floor &&
        door == other.door;
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
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            metadata.hashCode),
                                        label.hashCode),
                                    postalCode.hashCode),
                                country.hashCode),
                            city.hashCode),
                        province.hashCode),
                    street.hashCode),
                number.hashCode),
            floor.hashCode),
        door.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Address')
          ..add('id', id)
          ..add('metadata', metadata)
          ..add('label', label)
          ..add('postalCode', postalCode)
          ..add('country', country)
          ..add('city', city)
          ..add('province', province)
          ..add('street', street)
          ..add('number', number)
          ..add('floor', floor)
          ..add('door', door))
        .toString();
  }
}

class AddressBuilder implements Builder<Address, AddressBuilder> {
  _$Address? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  MetadataBuilder? _metadata;
  MetadataBuilder get metadata => _$this._metadata ??= new MetadataBuilder();
  set metadata(MetadataBuilder? metadata) => _$this._metadata = metadata;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _province;
  String? get province => _$this._province;
  set province(String? province) => _$this._province = province;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  int? _floor;
  int? get floor => _$this._floor;
  set floor(int? floor) => _$this._floor = floor;

  String? _door;
  String? get door => _$this._door;
  set door(String? door) => _$this._door = door;

  AddressBuilder();

  AddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _metadata = $v.metadata?.toBuilder();
      _label = $v.label;
      _postalCode = $v.postalCode;
      _country = $v.country;
      _city = $v.city;
      _province = $v.province;
      _street = $v.street;
      _number = $v.number;
      _floor = $v.floor;
      _door = $v.door;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Address other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Address;
  }

  @override
  void update(void Function(AddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Address build() {
    _$Address _$result;
    try {
      _$result = _$v ??
          new _$Address._(
              id: id,
              metadata: _metadata?.build(),
              label: label,
              postalCode: postalCode,
              country: country,
              city: city,
              province: province,
              street: street,
              number: number,
              floor: floor,
              door: door);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Address', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
