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
  Iterable<Object> serialize(Serializers serializers, ContactInformation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.metadata != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(object.metadata,
            specifiedType: const FullType(Metadata)));
    }
    if (object.phones != null) {
      result
        ..add('phones')
        ..add(serializers.serialize(object.phones,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContactInformationValue)])));
    }
    if (object.mails != null) {
      result
        ..add('mails')
        ..add(serializers.serialize(object.mails,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContactInformationValue)])));
    }
    if (object.addresses != null) {
      result
        ..add('addresses')
        ..add(serializers.serialize(object.addresses,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Address)])));
    }
    if (object.webs != null) {
      result
        ..add('webs')
        ..add(serializers.serialize(object.webs,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContactInformationValue)])));
    }
    if (object.linkedin != null) {
      result
        ..add('linkedin')
        ..add(serializers.serialize(object.linkedin,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContactInformationValue)])));
    }
    if (object.facebook != null) {
      result
        ..add('facebook')
        ..add(serializers.serialize(object.facebook,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContactInformationValue)])));
    }
    if (object.instagram != null) {
      result
        ..add('instagram')
        ..add(serializers.serialize(object.instagram,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContactInformationValue)])));
    }
    if (object.twitter != null) {
      result
        ..add('twitter')
        ..add(serializers.serialize(object.twitter,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContactInformationValue)])));
    }
    if (object.github != null) {
      result
        ..add('github')
        ..add(serializers.serialize(object.github,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContactInformationValue)])));
    }
    return result;
  }

  @override
  ContactInformation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactInformationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
              specifiedType: const FullType(Metadata)) as Metadata);
          break;
        case 'phones':
          result.phones.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ])) as BuiltList<Object>);
          break;
        case 'mails':
          result.mails.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ])) as BuiltList<Object>);
          break;
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Address)]))
              as BuiltList<Object>);
          break;
        case 'webs':
          result.webs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ])) as BuiltList<Object>);
          break;
        case 'linkedin':
          result.linkedin.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ])) as BuiltList<Object>);
          break;
        case 'facebook':
          result.facebook.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ])) as BuiltList<Object>);
          break;
        case 'instagram':
          result.instagram.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ])) as BuiltList<Object>);
          break;
        case 'twitter':
          result.twitter.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ])) as BuiltList<Object>);
          break;
        case 'github':
          result.github.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContactInformationValue)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ContactInformation extends ContactInformation {
  @override
  final String id;
  @override
  final Metadata metadata;
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
          [void Function(ContactInformationBuilder) updates]) =>
      (new ContactInformationBuilder()..update(updates)).build();

  _$ContactInformation._(
      {this.id,
      this.metadata,
      this.phones,
      this.mails,
      this.addresses,
      this.webs,
      this.linkedin,
      this.facebook,
      this.instagram,
      this.twitter,
      this.github})
      : super._();

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
  _$ContactInformation _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  MetadataBuilder _metadata;
  MetadataBuilder get metadata => _$this._metadata ??= new MetadataBuilder();
  set metadata(MetadataBuilder metadata) => _$this._metadata = metadata;

  ListBuilder<ContactInformationValue> _phones;
  ListBuilder<ContactInformationValue> get phones =>
      _$this._phones ??= new ListBuilder<ContactInformationValue>();
  set phones(ListBuilder<ContactInformationValue> phones) =>
      _$this._phones = phones;

  ListBuilder<ContactInformationValue> _mails;
  ListBuilder<ContactInformationValue> get mails =>
      _$this._mails ??= new ListBuilder<ContactInformationValue>();
  set mails(ListBuilder<ContactInformationValue> mails) =>
      _$this._mails = mails;

  ListBuilder<Address> _addresses;
  ListBuilder<Address> get addresses =>
      _$this._addresses ??= new ListBuilder<Address>();
  set addresses(ListBuilder<Address> addresses) =>
      _$this._addresses = addresses;

  ListBuilder<ContactInformationValue> _webs;
  ListBuilder<ContactInformationValue> get webs =>
      _$this._webs ??= new ListBuilder<ContactInformationValue>();
  set webs(ListBuilder<ContactInformationValue> webs) => _$this._webs = webs;

  ListBuilder<ContactInformationValue> _linkedin;
  ListBuilder<ContactInformationValue> get linkedin =>
      _$this._linkedin ??= new ListBuilder<ContactInformationValue>();
  set linkedin(ListBuilder<ContactInformationValue> linkedin) =>
      _$this._linkedin = linkedin;

  ListBuilder<ContactInformationValue> _facebook;
  ListBuilder<ContactInformationValue> get facebook =>
      _$this._facebook ??= new ListBuilder<ContactInformationValue>();
  set facebook(ListBuilder<ContactInformationValue> facebook) =>
      _$this._facebook = facebook;

  ListBuilder<ContactInformationValue> _instagram;
  ListBuilder<ContactInformationValue> get instagram =>
      _$this._instagram ??= new ListBuilder<ContactInformationValue>();
  set instagram(ListBuilder<ContactInformationValue> instagram) =>
      _$this._instagram = instagram;

  ListBuilder<ContactInformationValue> _twitter;
  ListBuilder<ContactInformationValue> get twitter =>
      _$this._twitter ??= new ListBuilder<ContactInformationValue>();
  set twitter(ListBuilder<ContactInformationValue> twitter) =>
      _$this._twitter = twitter;

  ListBuilder<ContactInformationValue> _github;
  ListBuilder<ContactInformationValue> get github =>
      _$this._github ??= new ListBuilder<ContactInformationValue>();
  set github(ListBuilder<ContactInformationValue> github) =>
      _$this._github = github;

  ContactInformationBuilder();

  ContactInformationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _metadata = _$v.metadata?.toBuilder();
      _phones = _$v.phones?.toBuilder();
      _mails = _$v.mails?.toBuilder();
      _addresses = _$v.addresses?.toBuilder();
      _webs = _$v.webs?.toBuilder();
      _linkedin = _$v.linkedin?.toBuilder();
      _facebook = _$v.facebook?.toBuilder();
      _instagram = _$v.instagram?.toBuilder();
      _twitter = _$v.twitter?.toBuilder();
      _github = _$v.github?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactInformation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContactInformation;
  }

  @override
  void update(void Function(ContactInformationBuilder) updates) {
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
              phones: _phones?.build(),
              mails: _mails?.build(),
              addresses: _addresses?.build(),
              webs: _webs?.build(),
              linkedin: _linkedin?.build(),
              facebook: _facebook?.build(),
              instagram: _instagram?.build(),
              twitter: _twitter?.build(),
              github: _github?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
        _$failedField = 'phones';
        _phones?.build();
        _$failedField = 'mails';
        _mails?.build();
        _$failedField = 'addresses';
        _addresses?.build();
        _$failedField = 'webs';
        _webs?.build();
        _$failedField = 'linkedin';
        _linkedin?.build();
        _$failedField = 'facebook';
        _facebook?.build();
        _$failedField = 'instagram';
        _instagram?.build();
        _$failedField = 'twitter';
        _twitter?.build();
        _$failedField = 'github';
        _github?.build();
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
