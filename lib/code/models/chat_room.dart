import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/models/chat_message.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

import 'metadata.dart';

part 'chat_room.g.dart';

abstract class ChatRoom implements Built<ChatRoom, ChatRoomBuilder> {
  Metadata? get metadata;

  BuiltList<String>? get members;

  BuiltList<ChatMessage>? get messages;

  ChatRoom._();
  factory ChatRoom([void Function(ChatRoomBuilder) updates]) = _$ChatRoom;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(ChatRoom.serializer, this),
      ),
    );
  }

  static ChatRoom? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ChatRoom.serializer, json);
  }

  static Serializer<ChatRoom> get serializer => _$chatRoomSerializer;
}
