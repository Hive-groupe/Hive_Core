import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

import 'metadata.dart';

part 'address.g.dart';

abstract class Address implements Built<Address, AddressBuilder> {
  @nullable
  String get id;
  @nullable
  Metadata get metadata;
  @nullable
  String get label;
  @nullable
  String get postalCode;
  @nullable
  String get country;
  @nullable
  String get city;
  @nullable
  String get province;
  @nullable
  String get street;
  @nullable
  int get number;
  @nullable
  int get floor;
  @nullable
  String get door;

  Address._();
  factory Address([void Function(AddressBuilder) updates]) = _$Address;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Address.serializer, this);
  }

  static Address fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Address.serializer, json);
  }

  static Serializer<Address> get serializer => _$addressSerializer;
}
