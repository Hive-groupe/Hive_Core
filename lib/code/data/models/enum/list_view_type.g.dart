// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_view_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListViewType _$LIST = const ListViewType._('LIST');
const ListViewType _$TABLE = const ListViewType._('TABLE');

ListViewType _$listViewTypeValueOf(String name) {
  switch (name) {
    case 'LIST':
      return _$LIST;
    case 'TABLE':
      return _$TABLE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ListViewType> _$listViewTypeValues =
    new BuiltSet<ListViewType>(const <ListViewType>[
  _$LIST,
  _$TABLE,
]);

Serializer<ListViewType> _$listViewTypeSerializer =
    new _$ListViewTypeSerializer();

class _$ListViewTypeSerializer implements PrimitiveSerializer<ListViewType> {
  @override
  final Iterable<Type> types = const <Type>[ListViewType];
  @override
  final String wireName = 'ListViewType';

  @override
  Object serialize(Serializers serializers, ListViewType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ListViewType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListViewType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
