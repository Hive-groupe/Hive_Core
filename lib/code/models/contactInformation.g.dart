// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactInformation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContactInformation> _$contactInformationSerializer =
    new _$ContactInformationSerializer();

class _$ContactInformationSerializer
    implements StructuredSerializer<ContactInformation> {
  @override
  final Iterable<Type> types = const [ContactInformation, _$ContactInformation];
  @override
  final String wireName = 'ContactInformation';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ContactInformation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phones',
      serializers.serialize(object.phones,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ContactInformationValue)])),
      'mails',
      serializers.serialize(object.mails,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ContactInformationValue)])),
      'addresses',
      serializers.serialize(object.addresses,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Address)])),
      'webs',
      serializers.serialize(object.webs,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ContactInformationValue)])),
      'linkedin',
      serializers.serialize(object.linkedin,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ContactInformationValue)])),
      'facebook',
      serializers.serialize(object.facebook,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ContactInformationValue)])),
      'instagram',
      serializers.serialize(object.instagram,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ContactInformationValue)])),
      'twitter',
      serializers.serialize(object.twitter,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ContactInformationValue)])),
      'github',
      serializers.serialize(object.github,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ContactInformationValue)])),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.metadata;
    if (value != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Metadata)));
    }
    return result;
  }

  @override
  ContactInformation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactInformationBuilder();

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
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
              specifiedType: const FullType(Metadata))! as Metadata);
          break;
        case 'phones':
          result.phones.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ]))! as BuiltList<Object?>);
          break;
        case 'mails':
          result.mails.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ]))! as BuiltList<Object?>);
          break;
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Address)]))!
              as BuiltList<Object?>);
          break;
        case 'webs':
          result.webs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ]))! as BuiltList<Object?>);
          break;
        case 'linkedin':
          result.linkedin.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ]))! as BuiltList<Object?>);
          break;
        case 'facebook':
          result.facebook.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ]))! as BuiltList<Object?>);
          break;
        case 'instagram':
          result.instagram.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ]))! as BuiltList<Object?>);
          break;
        case 'twitter':
          result.twitter.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ]))! as BuiltList<Object?>);
          break;
        case 'github':
          result.github.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ContactInformation extends ContactInformation {
  @override
  final String? id;
  @override
  final Metadata? metadata;
  @override
  final BuiltList<ContactInformationValue> phones;
  @override
  final BuiltList<ContactInformationValue> mails;
  @override
  final BuiltList<Address> addresses;
  @override
  final BuiltList<ContactInformationValue> webs;
  @override
  final BuiltList<ContactInformationValue> linkedin;
  @override
  final BuiltList<ContactInformationValue> facebook;
  @override
  final BuiltList<ContactInformationValue> instagram;
  @override
  final BuiltList<ContactInformationValue> twitter;
  @override
  final BuiltList<ContactInformationValue> github;

  factory _$ContactInformation(
          [void Function(ContactInformationBuilder)? updates]) =>
      (new ContactInformationBuilder()..update(updates)).build();

  _$ContactInformation._(
      {this.id,
      this.metadata,
      required this.phones,
      required this.mails,
      required this.addresses,
      required this.webs,
      required this.linkedin,
      required this.facebook,
      required this.instagram,
      required this.twitter,
      required this.github})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        phones, 'ContactInformation', 'phones');
    BuiltValueNullFieldError.checkNotNull(mails, 'ContactInformation', 'mails');
    BuiltValueNullFieldError.checkNotNull(
        addresses, 'ContactInformation', 'addresses');
    BuiltValueNullFieldError.checkNotNull(webs, 'ContactInformation', 'webs');
    BuiltValueNullFieldError.checkNotNull(
        linkedin, 'ContactInformation', 'linkedin');
    BuiltValueNullFieldError.checkNotNull(
        facebook, 'ContactInformation', 'facebook');
    BuiltValueNullFieldError.checkNotNull(
        instagram, 'ContactInformation', 'instagram');
    BuiltValueNullFieldError.checkNotNull(
        twitter, 'ContactInformation', 'twitter');
    BuiltValueNullFieldError.checkNotNull(
        github, 'ContactInformation', 'github');
  }

  @override
  ContactInformation rebuild(
          void Function(ContactInformationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactInformationBuilder toBuilder() =>
      new ContactInformationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactInformation &&
        id == other.id &&
        metadata == other.metadata &&
        phones == other.phones &&
        mails == other.mails &&
        addresses == other.addresses &&
        webs == other.webs &&
        linkedin == other.linkedin &&
        facebook == other.facebook &&
        instagram == other.instagram &&
        twitter == other.twitter &&
        github == other.github;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            metadata.hashCode),
                                        phones.hashCode),
                                    mails.hashCode),
                                addresses.hashCode),
                            webs.hashCode),
                        linkedin.hashCode),
                    facebook.hashCode),
                instagram.hashCode),
            twitter.hashCode),
        github.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContactInformation')
          ..add('id', id)
          ..add('metadata', metadata)
          ..add('phones', phones)
          ..add('mails', mails)
          ..add('addresses', addresses)
          ..add('webs', webs)
          ..add('linkedin', linkedin)
          ..add('facebook', facebook)
          ..add('instagram', instagram)
          ..add('twitter', twitter)
          ..add('github', github))
        .toString();
  }
}

class ContactInformationBuilder
    implements Builder<ContactInformation, ContactInformationBuilder> {
  _$ContactInformation? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  MetadataBuilder? _metadata;
  MetadataBuilder get metadata => _$this._metadata ??= new MetadataBuilder();
  set metadata(MetadataBuilder? metadata) => _$this._metadata = metadata;

  ListBuilder<ContactInformationValue>? _phones;
  ListBuilder<ContactInformationValue> get phones =>
      _$this._phones ??= new ListBuilder<ContactInformationValue>();
  set phones(ListBuilder<ContactInformationValue>? phones) =>
      _$this._phones = phones;

  ListBuilder<ContactInformationValue>? _mails;
  ListBuilder<ContactInformationValue> get mails =>
      _$this._mails ??= new ListBuilder<ContactInformationValue>();
  set mails(ListBuilder<ContactInformationValue>? mails) =>
      _$this._mails = mails;

  ListBuilder<Address>? _addresses;
  ListBuilder<Address> get addresses =>
      _$this._addresses ??= new ListBuilder<Address>();
  set addresses(ListBuilder<Address>? addresses) =>
      _$this._addresses = addresses;

  ListBuilder<ContactInformationValue>? _webs;
  ListBuilder<ContactInformationValue> get webs =>
      _$this._webs ??= new ListBuilder<ContactInformationValue>();
  set webs(ListBuilder<ContactInformationValue>? webs) => _$this._webs = webs;

  ListBuilder<ContactInformationValue>? _linkedin;
  ListBuilder<ContactInformationValue> get linkedin =>
      _$this._linkedin ??= new ListBuilder<ContactInformationValue>();
  set linkedin(ListBuilder<ContactInformationValue>? linkedin) =>
      _$this._linkedin = linkedin;

  ListBuilder<ContactInformationValue>? _facebook;
  ListBuilder<ContactInformationValue> get facebook =>
      _$this._facebook ??= new ListBuilder<ContactInformationValue>();
  set facebook(ListBuilder<ContactInformationValue>? facebook) =>
      _$this._facebook = facebook;

  ListBuilder<ContactInformationValue>? _instagram;
  ListBuilder<ContactInformationValue> get instagram =>
      _$this._instagram ??= new ListBuilder<ContactInformationValue>();
  set instagram(ListBuilder<ContactInformationValue>? instagram) =>
      _$this._instagram = instagram;

  ListBuilder<ContactInformationValue>? _twitter;
  ListBuilder<ContactInformationValue> get twitter =>
      _$this._twitter ??= new ListBuilder<ContactInformationValue>();
  set twitter(ListBuilder<ContactInformationValue>? twitter) =>
      _$this._twitter = twitter;

  ListBuilder<ContactInformationValue>? _github;
  ListBuilder<ContactInformationValue> get github =>
      _$this._github ??= new ListBuilder<ContactInformationValue>();
  set github(ListBuilder<ContactInformationValue>? github) =>
      _$this._github = github;

  ContactInformationBuilder();

  ContactInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _metadata = $v.metadata?.toBuilder();
      _phones = $v.phones.toBuilder();
      _mails = $v.mails.toBuilder();
      _addresses = $v.addresses.toBuilder();
      _webs = $v.webs.toBuilder();
      _linkedin = $v.linkedin.toBuilder();
      _facebook = $v.facebook.toBuilder();
      _instagram = $v.instagram.toBuilder();
      _twitter = $v.twitter.toBuilder();
      _github = $v.github.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContactInformation;
  }

  @override
  void update(void Function(ContactInformationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContactInformation build() {
    _$ContactInformation _$result;
    try {
      _$result = _$v ??
          new _$ContactInformation._(
              id: id,
              metadata: _metadata?.build(),
              phones: phones.build(),
              mails: mails.build(),
              addresses: addresses.build(),
              webs: webs.build(),
              linkedin: linkedin.build(),
              facebook: facebook.build(),
              instagram: instagram.build(),
              twitter: twitter.build(),
              github: github.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
        _$failedField = 'phones';
        phones.build();
        _$failedField = 'mails';
        mails.build();
        _$failedField = 'addresses';
        addresses.build();
        _$failedField = 'webs';
        webs.build();
        _$failedField = 'linkedin';
        linkedin.build();
        _$failedField = 'facebook';
        facebook.build();
        _$failedField = 'instagram';
        instagram.build();
        _$failedField = 'twitter';
        twitter.build();
        _$failedField = 'github';
        github.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContactInformation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
