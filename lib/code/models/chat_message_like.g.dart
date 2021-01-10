// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_like.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatMessageLike> _$chatMessageLikeSerializer =
    new _$ChatMessageLikeSerializer();

class _$ChatMessageLikeSerializer
    implements StructuredSerializer<ChatMessageLike> {
  @override
  final Iterable<Type> types = const [ChatMessageLike, _$ChatMessageLike];
  @override
  final String wireName = 'ChatMessageLike';

  @override
  Iterable<Object> serialize(Serializers serializers, ChatMessageLike object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'ownerUid',
      serializers.serialize(object.ownerUid,
          specifiedType: const FullType(String)),
      'timeStamp',
      serializers.serialize(object.timeStamp,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  ChatMessageLike deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatMessageLikeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ownerUid':
          result.ownerUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeStamp':
          result.timeStamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$ChatMessageLike extends ChatMessageLike {
  @override
  final String ownerUid;
  @override
  final DateTime timeStamp;

  factory _$ChatMessageLike([void Function(ChatMessageLikeBuilder) updates]) =>
      (new ChatMessageLikeBuilder()..update(updates)).build();

  _$ChatMessageLike._({this.ownerUid, this.timeStamp}) : super._() {
    if (ownerUid == null) {
      throw new BuiltValueNullFieldError('ChatMessageLike', 'ownerUid');
    }
    if (timeStamp == null) {
      throw new BuiltValueNullFieldError('ChatMessageLike', 'timeStamp');
    }
  }

  @override
  ChatMessageLike rebuild(void Function(ChatMessageLikeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatMessageLikeBuilder toBuilder() =>
      new ChatMessageLikeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatMessageLike &&
        ownerUid == other.ownerUid &&
        timeStamp == other.timeStamp;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ownerUid.hashCode), timeStamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatMessageLike')
          ..add('ownerUid', ownerUid)
          ..add('timeStamp', timeStamp))
        .toString();
  }
}

class ChatMessageLikeBuilder
    implements Builder<ChatMessageLike, ChatMessageLikeBuilder> {
  _$ChatMessageLike _$v;

  String _ownerUid;
  String get ownerUid => _$this._ownerUid;
  set ownerUid(String ownerUid) => _$this._ownerUid = ownerUid;

  DateTime _timeStamp;
  DateTime get timeStamp => _$this._timeStamp;
  set timeStamp(DateTime timeStamp) => _$this._timeStamp = timeStamp;

  ChatMessageLikeBuilder();

  ChatMessageLikeBuilder get _$this {
    if (_$v != null) {
      _ownerUid = _$v.ownerUid;
      _timeStamp = _$v.timeStamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatMessageLike other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChatMessageLike;
  }

  @override
  void update(void Function(ChatMessageLikeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatMessageLike build() {
    final _$result = _$v ??
        new _$ChatMessageLike._(ownerUid: ownerUid, timeStamp: timeStamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
