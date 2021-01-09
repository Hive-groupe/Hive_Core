import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/src/utils/othes/serializers.dart';

import 'chat_message.dart';
import 'metadata.dart';

part 'chat_room.g.dart';

abstract class ChatRoom implements Built<ChatRoom, ChatRoomBuilder> {
  @nullable
  Metadata get metadata;
  @nullable
  BuiltList<String> get members;
  @nullable
  BuiltList<ChatMessage> get messages;

  ChatRoom._();
  factory ChatRoom([void Function(ChatRoomBuilder) updates]) = _$ChatRoom;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(ChatRoom.serializer, this);
  }

  static ChatRoom fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ChatRoom.serializer, json);
  }

  static Serializer<ChatRoom> get serializer => _$chatRoomSerializer;
}
