import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/src/utils/othes/serializers.dart';

import 'enum/chat_message_type.dart';

part 'chat_message.g.dart';

abstract class ChatMessage implements Built<ChatMessage, ChatMessageBuilder> {
  @nullable
  @BuiltValueField(wireName: 'message_id')
  String get messageId;

  @BuiltValueField(wireName: 'receiver_id')
  String get receiverId;

  @BuiltValueField(wireName: 'sender_id')
  String get senderId;

  @BuiltValueField(wireName: 'message')
  String get message;

  @BuiltValueField(wireName: 'timestamp')
  DateTime get timestamp;

  @BuiltValueField(wireName: 'type')
  ChatMessageType get type;

  @nullable
  @BuiltValueField(wireName: 'photoUrl')
  String get photoUrl;
  /*
  //bool isLiked, unread;

  BuiltList<ChatMessageLike> get likes;
  BuiltList<String> get readed;*/

  ChatMessage._();
  factory ChatMessage([void Function(ChatMessageBuilder) updates]) =
      _$ChatMessage;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(ChatMessage.serializer, this);
  }

  static ChatMessage fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ChatMessage.serializer, json);
  }

  static Serializer<ChatMessage> get serializer => _$chatMessageSerializer;
}
