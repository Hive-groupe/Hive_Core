import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

import 'address.dart';
import 'contactInformationValue.dart';
import 'metadata.dart';

part 'contactInformation.g.dart';

abstract class ContactInformation
    implements Built<ContactInformation, ContactInformationBuilder> {
  @nullable
  String get id;
  @nullable
  Metadata get metadata;
  @nullable
  BuiltList<ContactInformationValue> get phones;
  @nullable
  BuiltList<ContactInformationValue> get mails;
  @nullable
  BuiltList<Address> get addresses;
  @nullable
  BuiltList<ContactInformationValue> get webs;
  @nullable
  BuiltList<ContactInformationValue> get linkedin;
  @nullable
  BuiltList<ContactInformationValue> get facebook;
  @nullable
  BuiltList<ContactInformationValue> get instagram;
  @nullable
  BuiltList<ContactInformationValue> get twitter;
  @nullable
  BuiltList<ContactInformationValue> get github;

  ContactInformation._();
  factory ContactInformation(
          [void Function(ContactInformationBuilder) updates]) =
      _$ContactInformation;

  List<ContactInformationValue> toJson() {
    return serializers.serializeWith(ContactInformation.serializer, this);
  }

  static ContactInformation fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ContactInformation.serializer, json);
  }

  static Serializer<ContactInformation> get serializer =>
      _$contactInformationSerializer;
}
