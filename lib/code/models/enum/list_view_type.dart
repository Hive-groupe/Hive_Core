import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/code/utils/othes/serializers.dart';

part 'list_view_type.g.dart';

class ListViewType extends EnumClass {
  static const ListViewType LIST = _$LIST;
  static const ListViewType TABLE = _$TABLE;

  const ListViewType._(String name) : super(name);

  static BuiltSet<ListViewType> get values => _$listViewTypeValues;
  static ListViewType valueOf(String name) => _$listViewTypeValueOf(name);

  Map<String, dynamic> serialize() {
    return json.decode(
      json.encode(
        serializers.serializeWith(ListViewType.serializer, this),
      ),
    );
  }

  static ListViewType? deserialize(Map<String, dynamic> json) {
    return serializers.deserializeWith(ListViewType.serializer, json);
  }

  static Serializer<ListViewType> get serializer => _$listViewTypeSerializer;
}
