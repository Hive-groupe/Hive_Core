// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatMessage> _$chatMessageSerializer = new _$ChatMessageSerializer();

class _$ChatMessageSerializer implements StructuredSerializer<ChatMessage> {
  @override
  final Iterable<Type> types = const [ChatMessage, _$ChatMessage];
  @override
  final String wireName = 'ChatMessage';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'receiver_id',
      serializers.serialize(object.receiverId,
          specifiedType: const FullType(String)),
      'sender_id',
      serializers.serialize(object.senderId,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'timestamp',
      serializers.serialize(object.timestamp,
          specifiedType: const FullType(DateTime)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(ChatMessageType)),
    ];
    Object? value;
    value = object.messageId;
    if (value != null) {
      result
        ..add('message_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ChatMessage deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message_id':
          result.messageId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'receiver_id':
          result.receiverId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sender_id':
          result.senderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(ChatMessageType))
              as ChatMessageType;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ChatMessage extends ChatMessage {
  @override
  final String? messageId;
  @override
  final String receiverId;
  @override
  final String senderId;
  @override
  final String message;
  @override
  final DateTime timestamp;
  @override
  final ChatMessageType type;
  @override
  final String? photoUrl;

  factory _$ChatMessage([void Function(ChatMessageBuilder)? updates]) =>
      (new ChatMessageBuilder()..update(updates)).build();

  _$ChatMessage._(
      {this.messageId,
      required this.receiverId,
      required this.senderId,
      required this.message,
      required this.timestamp,
      required this.type,
      this.photoUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        receiverId, 'ChatMessage', 'receiverId');
    BuiltValueNullFieldError.checkNotNull(senderId, 'ChatMessage', 'senderId');
    BuiltValueNullFieldError.checkNotNull(message, 'ChatMessage', 'message');
    BuiltValueNullFieldError.checkNotNull(
        timestamp, 'ChatMessage', 'timestamp');
    BuiltValueNullFieldError.checkNotNull(type, 'ChatMessage', 'type');
  }

  @override
  ChatMessage rebuild(void Function(ChatMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatMessageBuilder toBuilder() => new ChatMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatMessage &&
        messageId == other.messageId &&
        receiverId == other.receiverId &&
        senderId == other.senderId &&
        message == other.message &&
        timestamp == other.timestamp &&
        type == other.type &&
        photoUrl == other.photoUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, messageId.hashCode), receiverId.hashCode),
                        senderId.hashCode),
                    message.hashCode),
                timestamp.hashCode),
            type.hashCode),
        photoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatMessage')
          ..add('messageId', messageId)
          ..add('receiverId', receiverId)
          ..add('senderId', senderId)
          ..add('message', message)
          ..add('timestamp', timestamp)
          ..add('type', type)
          ..add('photoUrl', photoUrl))
        .toString();
  }
}

class ChatMessageBuilder implements Builder<ChatMessage, ChatMessageBuilder> {
  _$ChatMessage? _$v;

  String? _messageId;
  String? get messageId => _$this._messageId;
  set messageId(String? messageId) => _$this._messageId = messageId;

  String? _receiverId;
  String? get receiverId => _$this._receiverId;
  set receiverId(String? receiverId) => _$this._receiverId = receiverId;

  String? _senderId;
  String? get senderId => _$this._senderId;
  set senderId(String? senderId) => _$this._senderId = senderId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  ChatMessageType? _type;
  ChatMessageType? get type => _$this._type;
  set type(ChatMessageType? type) => _$this._type = type;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  ChatMessageBuilder();

  ChatMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messageId = $v.messageId;
      _receiverId = $v.receiverId;
      _senderId = $v.senderId;
      _message = $v.message;
      _timestamp = $v.timestamp;
      _type = $v.type;
      _photoUrl = $v.photoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatMessage;
  }

  @override
  void update(void Function(ChatMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatMessage build() {
    final _$result = _$v ??
        new _$ChatMessage._(
            messageId: messageId,
            receiverId: BuiltValueNullFieldError.checkNotNull(
                receiverId, 'ChatMessage', 'receiverId'),
            senderId: BuiltValueNullFieldError.checkNotNull(
                senderId, 'ChatMessage', 'senderId'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'ChatMessage', 'message'),
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, 'ChatMessage', 'timestamp'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'ChatMessage', 'type'),
            photoUrl: photoUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
