// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_preferences.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatPreferences> _$chatPreferencesSerializer =
    new _$ChatPreferencesSerializer();

class _$ChatPreferencesSerializer
    implements StructuredSerializer<ChatPreferences> {
  @override
  final Iterable<Type> types = const [ChatPreferences, _$ChatPreferences];
  @override
  final String wireName = 'ChatPreferences';

  @override
  Iterable<Object> serialize(Serializers serializers, ChatPreferences object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.enterToSend != null) {
      result
        ..add('enterToSend')
        ..add(serializers.serialize(object.enterToSend,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ChatPreferences deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatPreferencesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'enterToSend':
          result.enterToSend = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ChatPreferences extends ChatPreferences {
  @override
  final bool enterToSend;

  factory _$ChatPreferences([void Function(ChatPreferencesBuilder) updates]) =>
      (new ChatPreferencesBuilder()..update(updates)).build();

  _$ChatPreferences._({this.enterToSend}) : super._();

  @override
  ChatPreferences rebuild(void Function(ChatPreferencesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatPreferencesBuilder toBuilder() =>
      new ChatPreferencesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatPreferences && enterToSend == other.enterToSend;
  }

  @override
  int get hashCode {
    return $jf($jc(0, enterToSend.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatPreferences')
          ..add('enterToSend', enterToSend))
        .toString();
  }
}

class ChatPreferencesBuilder
    implements Builder<ChatPreferences, ChatPreferencesBuilder> {
  _$ChatPreferences _$v;

  bool _enterToSend;
  bool get enterToSend => _$this._enterToSend;
  set enterToSend(bool enterToSend) => _$this._enterToSend = enterToSend;

  ChatPreferencesBuilder();

  ChatPreferencesBuilder get _$this {
    if (_$v != null) {
      _enterToSend = _$v.enterToSend;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatPreferences other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChatPreferences;
  }

  @override
  void update(void Function(ChatPreferencesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatPreferences build() {
    final _$result = _$v ?? new _$ChatPreferences._(enterToSend: enterToSend);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
