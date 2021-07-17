// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatRoom> _$chatRoomSerializer = new _$ChatRoomSerializer();

class _$ChatRoomSerializer implements StructuredSerializer<ChatRoom> {
  @override
  final Iterable<Type> types = const [ChatRoom, _$ChatRoom];
  @override
  final String wireName = 'ChatRoom';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatRoom object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.metadata;
    if (value != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Metadata)));
    }
    value = object.members;
    if (value != null) {
      result
        ..add('members')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.messages;
    if (value != null) {
      result
        ..add('messages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ChatMessage)])));
    }
    return result;
  }

  @override
  ChatRoom deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatRoomBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
              specifiedType: const FullType(Metadata))! as Metadata);
          break;
        case 'members':
          result.members.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'messages':
          result.messages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ChatMessage)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ChatRoom extends ChatRoom {
  @override
  final Metadata? metadata;
  @override
  final BuiltList<String>? members;
  @override
  final BuiltList<ChatMessage>? messages;

  factory _$ChatRoom([void Function(ChatRoomBuilder)? updates]) =>
      (new ChatRoomBuilder()..update(updates)).build();

  _$ChatRoom._({this.metadata, this.members, this.messages}) : super._();

  @override
  ChatRoom rebuild(void Function(ChatRoomBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatRoomBuilder toBuilder() => new ChatRoomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatRoom &&
        metadata == other.metadata &&
        members == other.members &&
        messages == other.messages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, metadata.hashCode), members.hashCode), messages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatRoom')
          ..add('metadata', metadata)
          ..add('members', members)
          ..add('messages', messages))
        .toString();
  }
}

class ChatRoomBuilder implements Builder<ChatRoom, ChatRoomBuilder> {
  _$ChatRoom? _$v;

  MetadataBuilder? _metadata;
  MetadataBuilder get metadata => _$this._metadata ??= new MetadataBuilder();
  set metadata(MetadataBuilder? metadata) => _$this._metadata = metadata;

  ListBuilder<String>? _members;
  ListBuilder<String> get members =>
      _$this._members ??= new ListBuilder<String>();
  set members(ListBuilder<String>? members) => _$this._members = members;

  ListBuilder<ChatMessage>? _messages;
  ListBuilder<ChatMessage> get messages =>
      _$this._messages ??= new ListBuilder<ChatMessage>();
  set messages(ListBuilder<ChatMessage>? messages) =>
      _$this._messages = messages;

  ChatRoomBuilder();

  ChatRoomBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metadata = $v.metadata?.toBuilder();
      _members = $v.members?.toBuilder();
      _messages = $v.messages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatRoom other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatRoom;
  }

  @override
  void update(void Function(ChatRoomBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatRoom build() {
    _$ChatRoom _$result;
    try {
      _$result = _$v ??
          new _$ChatRoom._(
              metadata: _metadata?.build(),
              members: _members?.build(),
              messages: _messages?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
        _$failedField = 'members';
        _members?.build();
        _$failedField = 'messages';
        _messages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ChatRoom', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
