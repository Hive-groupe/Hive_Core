import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

import '_index.dart';

part 'contactInformationValue.g.dart';

abstract class ContactInformationValue
    implements Built<ContactInformationValue, ContactInformationValueBuilder> {
  @nullable
  Metadata get metadata;
  String get value;
  String get label;

  ContactInformationValue._();
  factory ContactInformationValue(
          [void Function(ContactInformationValueBuilder) updates]) =
      _$ContactInformationValue;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(ContactInformationValue.serializer, this);
  }

  static ContactInformationValue fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(
        ContactInformationValue.serializer, json);
  }

  static Serializer<ContactInformationValue> get serializer =>
      _$contactInformationValueSerializer;
}
