import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

import "metadataEvent.dart";

part 'metadata.g.dart';

abstract class Metadata implements Built<Metadata, MetadataBuilder> {
  String? get id;

  String? get title;

  String? get description;

  MetadataEvent get creation;

  MetadataEvent get modification;

  MetadataEvent get lastRead;

  MetadataEvent? get deleted;

  Metadata._();
  factory Metadata([void Function(MetadataBuilder) updates]) = _$Metadata;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(Metadata.serializer, this),
      ),
    );
  }

  static Metadata? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Metadata.serializer, json);
  }

  static Serializer<Metadata> get serializer => _$metadataSerializer;
}
