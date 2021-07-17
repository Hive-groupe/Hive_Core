// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userStateus.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserStatus _$online = const UserStatus._('online');
const UserStatus _$offline = const UserStatus._('offline');
const UserStatus _$waiting = const UserStatus._('waiting');
const UserStatus _$deleted = const UserStatus._('deleted');

UserStatus _$userStatusValueOf(String name) {
  switch (name) {
    case 'online':
      return _$online;
    case 'offline':
      return _$offline;
    case 'waiting':
      return _$waiting;
    case 'deleted':
      return _$deleted;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UserStatus> _$userStatusValues =
    new BuiltSet<UserStatus>(const <UserStatus>[
  _$online,
  _$offline,
  _$waiting,
  _$deleted,
]);

Serializer<UserStatus> _$userStatusSerializer = new _$UserStatusSerializer();

class _$UserStatusSerializer implements PrimitiveSerializer<UserStatus> {
  @override
  final Iterable<Type> types = const <Type>[UserStatus];
  @override
  final String wireName = 'UserStatus';

  @override
  Object serialize(Serializers serializers, UserStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  UserStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserStatus.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
