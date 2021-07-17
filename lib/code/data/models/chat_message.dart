import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/data/models/enum/chat_message_type.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'chat_message.g.dart';

abstract class ChatMessage implements Built<ChatMessage, ChatMessageBuilder> {
  @BuiltValueField(wireName: 'message_id')
  String? get messageId;

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

  @BuiltValueField(wireName: 'photoUrl')
  String? get photoUrl;
  /*
  //bool isLiked, unread;

  BuiltList<ChatMessageLike> get likes;
  BuiltList<String> get readed;*/

  ChatMessage._();
  factory ChatMessage([void Function(ChatMessageBuilder) updates]) =
      _$ChatMessage;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(ChatMessage.serializer, this),
      ),
    );
  }

  static ChatMessage? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ChatMessage.serializer, json.decode(jsonString));
  }

  static Serializer<ChatMessage> get serializer => _$chatMessageSerializer;
}
