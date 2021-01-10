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
  Iterable<Object> serialize(Serializers serializers, ChatMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
    if (object.messageId != null) {
      result
        ..add('message_id')
        ..add(serializers.serialize(object.messageId,
            specifiedType: const FullType(String)));
    }
    if (object.photoUrl != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(object.photoUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ChatMessage deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'message_id':
          result.messageId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ChatMessage extends ChatMessage {
  @override
  final String messageId;
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
  final String photoUrl;

  factory _$ChatMessage([void Function(ChatMessageBuilder) updates]) =>
      (new ChatMessageBuilder()..update(updates)).build();

  _$ChatMessage._(
      {this.messageId,
      this.receiverId,
      this.senderId,
      this.message,
      this.timestamp,
      this.type,
      this.photoUrl})
      : super._() {
    if (receiverId == null) {
      throw new BuiltValueNullFieldError('ChatMessage', 'receiverId');
    }
    if (senderId == null) {
      throw new BuiltValueNullFieldError('ChatMessage', 'senderId');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('ChatMessage', 'message');
    }
    if (timestamp == null) {
      throw new BuiltValueNullFieldError('ChatMessage', 'timestamp');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('ChatMessage', 'type');
    }
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
  _$ChatMessage _$v;

  String _messageId;
  String get messageId => _$this._messageId;
  set messageId(String messageId) => _$this._messageId = messageId;

  String _receiverId;
  String get receiverId => _$this._receiverId;
  set receiverId(String receiverId) => _$this._receiverId = receiverId;

  String _senderId;
  String get senderId => _$this._senderId;
  set senderId(String senderId) => _$this._senderId = senderId;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DateTime _timestamp;
  DateTime get timestamp => _$this._timestamp;
  set timestamp(DateTime timestamp) => _$this._timestamp = timestamp;

  ChatMessageType _type;
  ChatMessageType get type => _$this._type;
  set type(ChatMessageType type) => _$this._type = type;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  ChatMessageBuilder();

  ChatMessageBuilder get _$this {
    if (_$v != null) {
      _messageId = _$v.messageId;
      _receiverId = _$v.receiverId;
      _senderId = _$v.senderId;
      _message = _$v.message;
      _timestamp = _$v.timestamp;
      _type = _$v.type;
      _photoUrl = _$v.photoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatMessage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChatMessage;
  }

  @override
  void update(void Function(ChatMessageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatMessage build() {
    final _$result = _$v ??
        new _$ChatMessage._(
            messageId: messageId,
            receiverId: receiverId,
            senderId: senderId,
            message: message,
            timestamp: timestamp,
            type: type,
            photoUrl: photoUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
