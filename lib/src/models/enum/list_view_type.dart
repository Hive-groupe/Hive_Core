import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive_core/src/utils/othes/serializers.dart';

part 'list_view_type.g.dart';

class ListViewType extends EnumClass {
  static const ListViewType LIST = _$LIST;
  static const ListViewType TABLE = _$TABLE;

  const ListViewType._(String name) : super(name);

  static BuiltSet<ListViewType> get values => _$listViewTypeValues;
  static ListViewType valueOf(String name) => _$listViewTypeValueOf(name);

  String serialize() {
    return serializers.serializeWith(ListViewType.serializer, this);
  }

  static ListViewType deserialize(String string) {
    return serializers.deserializeWith(ListViewType.serializer, string);
  }

  static Serializer<ListViewType> get serializer => _$listViewTypeSerializer;
}
