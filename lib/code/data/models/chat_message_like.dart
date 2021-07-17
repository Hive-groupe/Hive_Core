import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'chat_message_like.g.dart';

abstract class ChatMessageLike
    implements Built<ChatMessageLike, ChatMessageLikeBuilder> {
  String get ownerUid; //, ownerPhotoUrl, ownerName;
  DateTime get timeStamp;

  ChatMessageLike._();
  factory ChatMessageLike([void Function(ChatMessageLikeBuilder) updates]) =
      _$ChatMessageLike;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(ChatMessageLike.serializer, this),
      ),
    );
  }

  static ChatMessageLike? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ChatMessageLike.serializer, json);
  }

  static Serializer<ChatMessageLike> get serializer =>
      _$chatMessageLikeSerializer;
}
