import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hive_core/code/models/_index.dart';
import 'package:hive_core/code/models/basic_statistics.dart';

part 'serializers.g.dart';

@SerializersFor([
  Address,
  BasicStatistics,
  // ChatMessageType,
  ChatRoom,
  Call,
  ChatMessage,
  ChatMessageLike,
  ChatMessageType,
  ChatPreferences,
  ContactInformation,
  ContactInformationValue,
  Device,
  User,
  UserStatus,
  MetadataEvent,
  Metadata,
  NotificationsPreferences,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
