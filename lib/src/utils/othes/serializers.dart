import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hive_core/src/models/address.dart';
import 'package:hive_core/src/models/basic_statistics.dart';
import 'package:hive_core/src/models/call.dart';
import 'package:hive_core/src/models/chat_message.dart';
import 'package:hive_core/src/models/chat_message_like.dart';
import 'package:hive_core/src/models/chat_preferences.dart';
import 'package:hive_core/src/models/chat_room.dart';
import 'package:hive_core/src/models/contactInformation.dart';
import 'package:hive_core/src/models/contactInformationValue.dart';
import 'package:hive_core/src/models/device.dart';
import 'package:hive_core/src/models/enum/chat_message_type.dart';
import 'package:hive_core/src/models/enum/gender.dart';
import 'package:hive_core/src/models/enum/userStateus.dart';
import 'package:hive_core/src/models/metadata.dart';
import 'package:hive_core/src/models/metadataEvent.dart';
import 'package:hive_core/src/models/notifications_preferences.dart';
import 'package:hive_core/src/models/profile.dart';
import 'package:hive_core/src/models/user.dart';

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
