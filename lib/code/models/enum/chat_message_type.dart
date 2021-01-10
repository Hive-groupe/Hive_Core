import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'chat_message_type.g.dart';

class ChatMessageType extends EnumClass {
  static const ChatMessageType MESSAGE_TYPE_TEXT = _$MESSAGE_TYPE_TEXT;
  static const ChatMessageType MESSAGE_TYPE_AUDIO = _$MESSAGE_TYPE_AUDIO;
  static const ChatMessageType MESSAGE_TYPE_IMAGE = _$MESSAGE_TYPE_IMAGE;
  static const ChatMessageType MESSAGE_TYPE_STICKER = _$MESSAGE_TYPE_STICKER;
  static const ChatMessageType MESSAGE_TYPE_FILE = _$MESSAGE_TYPE_FILE;

  const ChatMessageType._(String name) : super(name);

  static BuiltSet<ChatMessageType> get values => _$chatMessageTypeValues;
  static ChatMessageType valueOf(String name) => _$chatMessageTypeValueOf(name);

  String serialize() {
    return serializers.serializeWith(ChatMessageType.serializer, this);
  }

  static ChatMessageType deserialize(String string) {
    return serializers.deserializeWith(ChatMessageType.serializer, string);
  }

  static Serializer<ChatMessageType> get serializer =>
      _$chatMessageTypeSerializer;
}
