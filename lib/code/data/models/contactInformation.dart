import 'dart:convert';

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
  String? get id;

  Metadata? get metadata;

  BuiltList<ContactInformationValue> get phones;

  BuiltList<ContactInformationValue> get mails;

  BuiltList<Address> get addresses;

  BuiltList<ContactInformationValue> get webs;

  BuiltList<ContactInformationValue> get linkedin;

  BuiltList<ContactInformationValue> get facebook;

  BuiltList<ContactInformationValue> get instagram;

  BuiltList<ContactInformationValue> get twitter;

  BuiltList<ContactInformationValue> get github;

  ContactInformation._();
  factory ContactInformation(
          [void Function(ContactInformationBuilder) updates]) =
      _$ContactInformation;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(ContactInformation.serializer, this),
      ),
    );
  }

  static ContactInformation? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ContactInformation.serializer, json);
  }

  static Serializer<ContactInformation> get serializer =>
      _$contactInformationSerializer;
}
