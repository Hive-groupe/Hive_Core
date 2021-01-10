import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'metadataEvent.g.dart';

abstract class MetadataEvent
    implements Built<MetadataEvent, MetadataEventBuilder> {
  String get userId;

  String get date;

  MetadataEvent._();
  factory MetadataEvent([void Function(MetadataEventBuilder) updates]) =
      _$MetadataEvent;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(MetadataEvent.serializer, this);
  }

  static MetadataEvent fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MetadataEvent.serializer, json);
  }

  static Serializer<MetadataEvent> get serializer => _$metadataEventSerializer;
}
