// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object?> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profile;
    if (value != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Profile)));
    }
    value = object.userStatus;
    if (value != null) {
      result
        ..add('userStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserStatus)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
              specifiedType: const FullType(Profile))! as Profile);
          break;
        case 'userStatus':
          result.userStatus = serializers.deserialize(value,
              specifiedType: const FullType(UserStatus)) as UserStatus?;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String? id;
  @override
  final String username;
  @override
  final String? password;
  @override
  final Profile? profile;
  @override
  final UserStatus? userStatus;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.id,
      required this.username,
      this.password,
      this.profile,
      this.userStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(username, 'User', 'username');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        username == other.username &&
        password == other.password &&
        profile == other.profile &&
        userStatus == other.userStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), username.hashCode), password.hashCode),
            profile.hashCode),
        userStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('username', username)
          ..add('password', password)
          ..add('profile', profile)
          ..add('userStatus', userStatus))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  ProfileBuilder? _profile;
  ProfileBuilder get profile => _$this._profile ??= new ProfileBuilder();
  set profile(ProfileBuilder? profile) => _$this._profile = profile;

  UserStatus? _userStatus;
  UserStatus? get userStatus => _$this._userStatus;
  set userStatus(UserStatus? userStatus) => _$this._userStatus = userStatus;

  UserBuilder();

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _password = $v.password;
      _profile = $v.profile?.toBuilder();
      _userStatus = $v.userStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'User', 'username'),
              password: password,
              profile: _profile?.build(),
              userStatus: userStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile';
        _profile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
