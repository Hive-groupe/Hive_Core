import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

import 'metadata.dart';

part 'address.g.dart';

abstract class Address implements Built<Address, AddressBuilder> {
  String? get id;

  Metadata? get metadata;

  String? get label;

  String? get postalCode;

  String? get country;

  String? get city;

  String? get province;

  String? get street;

  int? get number;

  int? get floor;

  String? get door;

  Address._();
  factory Address([void Function(AddressBuilder) updates]) = _$Address;

  Map<String, dynamic> toJson() {
    return json.decode(
      json.encode(
        serializers.serializeWith(Address.serializer, this),
      ),
    );
  }

  static Address? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Address.serializer, json);
  }

  static Serializer<Address> get serializer => _$addressSerializer;
}
