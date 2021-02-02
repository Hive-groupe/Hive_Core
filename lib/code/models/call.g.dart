// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Call> _$callSerializer = new _$CallSerializer();

class _$CallSerializer implements StructuredSerializer<Call> {
  @override
  final Iterable<Type> types = const [Call, _$Call];
  @override
  final String wireName = 'Call';

  @override
  Iterable<Object> serialize(Serializers serializers, Call object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'caller_id',
      serializers.serialize(object.callerId,
          specifiedType: const FullType(String)),
      'caller_name',
      serializers.serialize(object.callerName,
          specifiedType: const FullType(String)),
      'receiver_id',
      serializers.serialize(object.receiverId,
          specifiedType: const FullType(String)),
      'receiver_name',
      serializers.serialize(object.receiverName,
          specifiedType: const FullType(String)),
      'channel_id',
      serializers.serialize(object.channelId,
          specifiedType: const FullType(String)),
    ];
    if (object.callerPic != null) {
      result
        ..add('caller_pic')
        ..add(serializers.serialize(object.callerPic,
            specifiedType: const FullType(String)));
    }
    if (object.receiverPic != null) {
      result
        ..add('receiver_pic')
        ..add(serializers.serialize(object.receiverPic,
            specifiedType: const FullType(String)));
    }
    if (object.hasDialled != null) {
      result
        ..add('has_dialled')
        ..add(serializers.serialize(object.hasDialled,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Call deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CallBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'caller_id':
          result.callerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'caller_name':
          result.callerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'caller_pic':
          result.callerPic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receiver_id':
          result.receiverId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receiver_name':
          result.receiverName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receiver_pic':
          result.receiverPic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'channel_id':
          result.channelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_dialled':
          result.hasDialled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Call extends Call {
  @override
  final String callerId;
  @override
  final String callerName;
  @override
  final String callerPic;
  @override
  final String receiverId;
  @override
  final String receiverName;
  @override
  final String receiverPic;
  @override
  final String channelId;
  @override
  final bool hasDialled;

  factory _$Call([void Function(CallBuilder) updates]) =>
      (new CallBuilder()..update(updates)).build();

  _$Call._(
      {this.callerId,
      this.callerName,
      this.callerPic,
      this.receiverId,
      this.receiverName,
      this.receiverPic,
      this.channelId,
      this.hasDialled})
      : super._() {
    if (callerId == null) {
      throw new BuiltValueNullFieldError('Call', 'callerId');
    }
    if (callerName == null) {
      throw new BuiltValueNullFieldError('Call', 'callerName');
    }
    if (receiverId == null) {
      throw new BuiltValueNullFieldError('Call', 'receiverId');
    }
    if (receiverName == null) {
      throw new BuiltValueNullFieldError('Call', 'receiverName');
    }
    if (channelId == null) {
      throw new BuiltValueNullFieldError('Call', 'channelId');
    }
  }

  @override
  Call rebuild(void Function(CallBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CallBuilder toBuilder() => new CallBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Call &&
        callerId == other.callerId &&
        callerName == other.callerName &&
        callerPic == other.callerPic &&
        receiverId == other.receiverId &&
        receiverName == other.receiverName &&
        receiverPic == other.receiverPic &&
        channelId == other.channelId &&
        hasDialled == other.hasDialled;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, callerId.hashCode), callerName.hashCode),
                            callerPic.hashCode),
                        receiverId.hashCode),
                    receiverName.hashCode),
                receiverPic.hashCode),
            channelId.hashCode),
        hasDialled.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Call')
          ..add('callerId', callerId)
          ..add('callerName', callerName)
          ..add('callerPic', callerPic)
          ..add('receiverId', receiverId)
          ..add('receiverName', receiverName)
          ..add('receiverPic', receiverPic)
          ..add('channelId', channelId)
          ..add('hasDialled', hasDialled))
        .toString();
  }
}

class CallBuilder implements Builder<Call, CallBuilder> {
  _$Call _$v;

  String _callerId;
  String get callerId => _$this._callerId;
  set callerId(String callerId) => _$this._callerId = callerId;

  String _callerName;
  String get callerName => _$this._callerName;
  set callerName(String callerName) => _$this._callerName = callerName;

  String _callerPic;
  String get callerPic => _$this._callerPic;
  set callerPic(String callerPic) => _$this._callerPic = callerPic;

  String _receiverId;
  String get receiverId => _$this._receiverId;
  set receiverId(String receiverId) => _$this._receiverId = receiverId;

  String _receiverName;
  String get receiverName => _$this._receiverName;
  set receiverName(String receiverName) => _$this._receiverName = receiverName;

  String _receiverPic;
  String get receiverPic => _$this._receiverPic;
  set receiverPic(String receiverPic) => _$this._receiverPic = receiverPic;

  String _channelId;
  String get channelId => _$this._channelId;
  set channelId(String channelId) => _$this._channelId = channelId;

  bool _hasDialled;
  bool get hasDialled => _$this._hasDialled;
  set hasDialled(bool hasDialled) => _$this._hasDialled = hasDialled;

  CallBuilder();

  CallBuilder get _$this {
    if (_$v != null) {
      _callerId = _$v.callerId;
      _callerName = _$v.callerName;
      _callerPic = _$v.callerPic;
      _receiverId = _$v.receiverId;
      _receiverName = _$v.receiverName;
      _receiverPic = _$v.receiverPic;
      _channelId = _$v.channelId;
      _hasDialled = _$v.hasDialled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Call other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Call;
  }

  @override
  void update(void Function(CallBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Call build() {
    final _$result = _$v ??
        new _$Call._(
            callerId: callerId,
            callerName: callerName,
            callerPic: callerPic,
            receiverId: receiverId,
            receiverName: receiverName,
            receiverPic: receiverPic,
            channelId: channelId,
            hasDialled: hasDialled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new