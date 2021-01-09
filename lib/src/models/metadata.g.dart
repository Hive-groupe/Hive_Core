// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Metadata> _$metadataSerializer = new _$MetadataSerializer();

class _$MetadataSerializer implements StructuredSerializer<Metadata> {
  @override
  final Iterable<Type> types = const [Metadata, _$Metadata];
  @override
  final String wireName = 'Metadata';

  @override
  Iterable<Object> serialize(Serializers serializers, Metadata object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'creation',
      serializers.serialize(object.creation,
          specifiedType: const FullType(MetadataEvent)),
      'modification',
      serializers.serialize(object.modification,
          specifiedType: const FullType(MetadataEvent)),
      'lastRead',
      serializers.serialize(object.lastRead,
          specifiedType: const FullType(MetadataEvent)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.deleted != null) {
      result
        ..add('deleted')
        ..add(serializers.serialize(object.deleted,
            specifiedType: const FullType(MetadataEvent)));
    }
    return result;
  }

  @override
  Metadata deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetadataBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'creation':
          result.creation.replace(serializers.deserialize(value,
              specifiedType: const FullType(MetadataEvent)) as MetadataEvent);
          break;
        case 'modification':
          result.modification.replace(serializers.deserialize(value,
              specifiedType: const FullType(MetadataEvent)) as MetadataEvent);
          break;
        case 'lastRead':
          result.lastRead.replace(serializers.deserialize(value,
              specifiedType: const FullType(MetadataEvent)) as MetadataEvent);
          break;
        case 'deleted':
          result.deleted.replace(serializers.deserialize(value,
              specifiedType: const FullType(MetadataEvent)) as MetadataEvent);
          break;
      }
    }

    return result.build();
  }
}

class _$Metadata extends Metadata {
  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final MetadataEvent creation;
  @override
  final MetadataEvent modification;
  @override
  final MetadataEvent lastRead;
  @override
  final MetadataEvent deleted;

  factory _$Metadata([void Function(MetadataBuilder) updates]) =>
      (new MetadataBuilder()..update(updates)).build();

  _$Metadata._(
      {this.id,
      this.title,
      this.description,
      this.creation,
      this.modification,
      this.lastRead,
      this.deleted})
      : super._() {
    if (creation == null) {
      throw new BuiltValueNullFieldError('Metadata', 'creation');
    }
    if (modification == null) {
      throw new BuiltValueNullFieldError('Metadata', 'modification');
    }
    if (lastRead == null) {
      throw new BuiltValueNullFieldError('Metadata', 'lastRead');
    }
  }

  @override
  Metadata rebuild(void Function(MetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetadataBuilder toBuilder() => new MetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Metadata &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        creation == other.creation &&
        modification == other.modification &&
        lastRead == other.lastRead &&
        deleted == other.deleted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), title.hashCode),
                        description.hashCode),
                    creation.hashCode),
                modification.hashCode),
            lastRead.hashCode),
        deleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Metadata')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('creation', creation)
          ..add('modification', modification)
          ..add('lastRead', lastRead)
          ..add('deleted', deleted))
        .toString();
  }
}

class MetadataBuilder implements Builder<Metadata, MetadataBuilder> {
  _$Metadata _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  MetadataEventBuilder _creation;
  MetadataEventBuilder get creation =>
      _$this._creation ??= new MetadataEventBuilder();
  set creation(MetadataEventBuilder creation) => _$this._creation = creation;

  MetadataEventBuilder _modification;
  MetadataEventBuilder get modification =>
      _$this._modification ??= new MetadataEventBuilder();
  set modification(MetadataEventBuilder modification) =>
      _$this._modification = modification;

  MetadataEventBuilder _lastRead;
  MetadataEventBuilder get lastRead =>
      _$this._lastRead ??= new MetadataEventBuilder();
  set lastRead(MetadataEventBuilder lastRead) => _$this._lastRead = lastRead;

  MetadataEventBuilder _deleted;
  MetadataEventBuilder get deleted =>
      _$this._deleted ??= new MetadataEventBuilder();
  set deleted(MetadataEventBuilder deleted) => _$this._deleted = deleted;

  MetadataBuilder();

  MetadataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _description = _$v.description;
      _creation = _$v.creation?.toBuilder();
      _modification = _$v.modification?.toBuilder();
      _lastRead = _$v.lastRead?.toBuilder();
      _deleted = _$v.deleted?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Metadata other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Metadata;
  }

  @override
  void update(void Function(MetadataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Metadata build() {
    _$Metadata _$result;
    try {
      _$result = _$v ??
          new _$Metadata._(
              id: id,
              title: title,
              description: description,
              creation: creation.build(),
              modification: modification.build(),
              lastRead: lastRead.build(),
              deleted: _deleted?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'creation';
        creation.build();
        _$failedField = 'modification';
        modification.build();
        _$failedField = 'lastRead';
        lastRead.build();
        _$failedField = 'deleted';
        _deleted?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Metadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
