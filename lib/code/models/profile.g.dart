// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Profile> _$profileSerializer = new _$ProfileSerializer();

class _$ProfileSerializer implements StructuredSerializer<Profile> {
  @override
  final Iterable<Type> types = const [Profile, _$Profile];
  @override
  final String wireName = 'Profile';

  @override
  Iterable<Object?> serialize(Serializers serializers, Profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'firstname',
      serializers.serialize(object.firstname,
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
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.secondname;
    if (value != null) {
      result
        ..add('secondname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nickname;
    if (value != null) {
      result
        ..add('nickname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactInformation;
    if (value != null) {
      result
        ..add('contactInformation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ContactInformation)));
    }
    value = object.events;
    if (value != null) {
      result
        ..add('events')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Gender)));
    }
    return result;
  }

  @override
  Profile deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileBuilder();

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
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'secondname':
          result.secondname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nickname':
          result.nickname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactInformation':
          result.contactInformation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ContactInformation))!
              as ContactInformation);
          break;
        case 'events':
          result.events = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(Gender)) as Gender?;
          break;
      }
    }

    return result.build();
  }
}

class _$Profile extends Profile {
  @override
  final String? id;
  @override
  final String? avatar;
  @override
  final String name;
  @override
  final String firstname;
  @override
  final String? secondname;
  @override
  final String? nickname;
  @override
  final ContactInformation? contactInformation;
  @override
  final Map<String, dynamic>? events;
  @override
  final Gender? gender;

  factory _$Profile([void Function(ProfileBuilder)? updates]) =>
      (new ProfileBuilder()..update(updates)).build();

  _$Profile._(
      {this.id,
      this.avatar,
      required this.name,
      required this.firstname,
      this.secondname,
      this.nickname,
      this.contactInformation,
      this.events,
      this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Profile', 'name');
    BuiltValueNullFieldError.checkNotNull(firstname, 'Profile', 'firstname');
  }

  @override
  Profile rebuild(void Function(ProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileBuilder toBuilder() => new ProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Profile &&
        id == other.id &&
        avatar == other.avatar &&
        name == other.name &&
        firstname == other.firstname &&
        secondname == other.secondname &&
        nickname == other.nickname &&
        contactInformation == other.contactInformation &&
        events == other.events &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), avatar.hashCode),
                                name.hashCode),
                            firstname.hashCode),
                        secondname.hashCode),
                    nickname.hashCode),
                contactInformation.hashCode),
            events.hashCode),
        gender.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Profile')
          ..add('id', id)
          ..add('avatar', avatar)
          ..add('name', name)
          ..add('firstname', firstname)
          ..add('secondname', secondname)
          ..add('nickname', nickname)
          ..add('contactInformation', contactInformation)
          ..add('events', events)
          ..add('gender', gender))
        .toString();
  }
}

class ProfileBuilder implements Builder<Profile, ProfileBuilder> {
  _$Profile? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _secondname;
  String? get secondname => _$this._secondname;
  set secondname(String? secondname) => _$this._secondname = secondname;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  ContactInformationBuilder? _contactInformation;
  ContactInformationBuilder get contactInformation =>
      _$this._contactInformation ??= new ContactInformationBuilder();
  set contactInformation(ContactInformationBuilder? contactInformation) =>
      _$this._contactInformation = contactInformation;

  Map<String, dynamic>? _events;
  Map<String, dynamic>? get events => _$this._events;
  set events(Map<String, dynamic>? events) => _$this._events = events;

  Gender? _gender;
  Gender? get gender => _$this._gender;
  set gender(Gender? gender) => _$this._gender = gender;

  ProfileBuilder();

  ProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _avatar = $v.avatar;
      _name = $v.name;
      _firstname = $v.firstname;
      _secondname = $v.secondname;
      _nickname = $v.nickname;
      _contactInformation = $v.contactInformation?.toBuilder();
      _events = $v.events;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Profile;
  }

  @override
  void update(void Function(ProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Profile build() {
    _$Profile _$result;
    try {
      _$result = _$v ??
          new _$Profile._(
              id: id,
              avatar: avatar,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Profile', 'name'),
              firstname: BuiltValueNullFieldError.checkNotNull(
                  firstname, 'Profile', 'firstname'),
              secondname: secondname,
              nickname: nickname,
              contactInformation: _contactInformation?.build(),
              events: events,
              gender: gender);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contactInformation';
        _contactInformation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Profile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
