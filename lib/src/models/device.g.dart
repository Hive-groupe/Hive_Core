// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Device> _$deviceSerializer = new _$DeviceSerializer();

class _$DeviceSerializer implements StructuredSerializer<Device> {
  @override
  final Iterable<Type> types = const [Device, _$Device];
  @override
  final String wireName = 'Device';

  @override
  Iterable<Object> serialize(Serializers serializers, Device object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'metadata',
      serializers.serialize(object.metadata,
          specifiedType: const FullType(Metadata)),
      'notificationsToken',
      serializers.serialize(object.notificationsToken,
          specifiedType: const FullType(String)),
      'platform',
      serializers.serialize(object.platform,
          specifiedType: const FullType(String)),
    ];
    if (object.ipAddress != null) {
      result
        ..add('ipAddress')
        ..add(serializers.serialize(object.ipAddress,
            specifiedType: const FullType(String)));
    }
    if (object.macAddress != null) {
      result
        ..add('macAddress')
        ..add(serializers.serialize(object.macAddress,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Device deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeviceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
              specifiedType: const FullType(Metadata)) as Metadata);
          break;
        case 'notificationsToken':
          result.notificationsToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'platform':
          result.platform = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ipAddress':
          result.ipAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'macAddress':
          result.macAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Device extends Device {
  @override
  final Metadata metadata;
  @override
  final String notificationsToken;
  @override
  final String platform;
  @override
  final String ipAddress;
  @override
  final String macAddress;

  factory _$Device([void Function(DeviceBuilder) updates]) =>
      (new DeviceBuilder()..update(updates)).build();

  _$Device._(
      {this.metadata,
      this.notificationsToken,
      this.platform,
      this.ipAddress,
      this.macAddress})
      : super._() {
    if (metadata == null) {
      throw new BuiltValueNullFieldError('Device', 'metadata');
    }
    if (notificationsToken == null) {
      throw new BuiltValueNullFieldError('Device', 'notificationsToken');
    }
    if (platform == null) {
      throw new BuiltValueNullFieldError('Device', 'platform');
    }
  }

  @override
  Device rebuild(void Function(DeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceBuilder toBuilder() => new DeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Device &&
        metadata == other.metadata &&
        notificationsToken == other.notificationsToken &&
        platform == other.platform &&
        ipAddress == other.ipAddress &&
        macAddress == other.macAddress;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, metadata.hashCode), notificationsToken.hashCode),
                platform.hashCode),
            ipAddress.hashCode),
        macAddress.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Device')
          ..add('metadata', metadata)
          ..add('notificationsToken', notificationsToken)
          ..add('platform', platform)
          ..add('ipAddress', ipAddress)
          ..add('macAddress', macAddress))
        .toString();
  }
}

class DeviceBuilder implements Builder<Device, DeviceBuilder> {
  _$Device _$v;

  MetadataBuilder _metadata;
  MetadataBuilder get metadata => _$this._metadata ??= new MetadataBuilder();
  set metadata(MetadataBuilder metadata) => _$this._metadata = metadata;

  String _notificationsToken;
  String get notificationsToken => _$this._notificationsToken;
  set notificationsToken(String notificationsToken) =>
      _$this._notificationsToken = notificationsToken;

  String _platform;
  String get platform => _$this._platform;
  set platform(String platform) => _$this._platform = platform;

  String _ipAddress;
  String get ipAddress => _$this._ipAddress;
  set ipAddress(String ipAddress) => _$this._ipAddress = ipAddress;

  String _macAddress;
  String get macAddress => _$this._macAddress;
  set macAddress(String macAddress) => _$this._macAddress = macAddress;

  DeviceBuilder();

  DeviceBuilder get _$this {
    if (_$v != null) {
      _metadata = _$v.metadata?.toBuilder();
      _notificationsToken = _$v.notificationsToken;
      _platform = _$v.platform;
      _ipAddress = _$v.ipAddress;
      _macAddress = _$v.macAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Device other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Device;
  }

  @override
  void update(void Function(DeviceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Device build() {
    _$Device _$result;
    try {
      _$result = _$v ??
          new _$Device._(
              metadata: metadata.build(),
              notificationsToken: notificationsToken,
              platform: platform,
              ipAddress: ipAddress,
              macAddress: macAddress);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'metadata';
        metadata.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Device', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
