// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatMessageType _$MESSAGE_TYPE_TEXT =
    const ChatMessageType._('MESSAGE_TYPE_TEXT');
const ChatMessageType _$MESSAGE_TYPE_AUDIO =
    const ChatMessageType._('MESSAGE_TYPE_AUDIO');
const ChatMessageType _$MESSAGE_TYPE_IMAGE =
    const ChatMessageType._('MESSAGE_TYPE_IMAGE');
const ChatMessageType _$MESSAGE_TYPE_STICKER =
    const ChatMessageType._('MESSAGE_TYPE_STICKER');
const ChatMessageType _$MESSAGE_TYPE_FILE =
    const ChatMessageType._('MESSAGE_TYPE_FILE');

ChatMessageType _$chatMessageTypeValueOf(String name) {
  switch (name) {
    case 'MESSAGE_TYPE_TEXT':
      return _$MESSAGE_TYPE_TEXT;
    case 'MESSAGE_TYPE_AUDIO':
      return _$MESSAGE_TYPE_AUDIO;
    case 'MESSAGE_TYPE_IMAGE':
      return _$MESSAGE_TYPE_IMAGE;
    case 'MESSAGE_TYPE_STICKER':
      return _$MESSAGE_TYPE_STICKER;
    case 'MESSAGE_TYPE_FILE':
      return _$MESSAGE_TYPE_FILE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChatMessageType> _$chatMessageTypeValues =
    new BuiltSet<ChatMessageType>(const <ChatMessageType>[
  _$MESSAGE_TYPE_TEXT,
  _$MESSAGE_TYPE_AUDIO,
  _$MESSAGE_TYPE_IMAGE,
  _$MESSAGE_TYPE_STICKER,
  _$MESSAGE_TYPE_FILE,
]);

Serializer<ChatMessageType> _$chatMessageTypeSerializer =
    new _$ChatMessageTypeSerializer();

class _$ChatMessageTypeSerializer
    implements PrimitiveSerializer<ChatMessageType> {
  @override
  final Iterable<Type> types = const <Type>[ChatMessageType];
  @override
  final String wireName = 'ChatMessageType';

  @override
  Object serialize(Serializers serializers, ChatMessageType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ChatMessageType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatMessageType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
