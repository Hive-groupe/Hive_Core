// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_preferences.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationsPreferences> _$notificationsPreferencesSerializer =
    new _$NotificationsPreferencesSerializer();

class _$NotificationsPreferencesSerializer
    implements StructuredSerializer<NotificationsPreferences> {
  @override
  final Iterable<Type> types = const [
    NotificationsPreferences,
    _$NotificationsPreferences
  ];
  @override
  final String wireName = 'NotificationsPreferences';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationsPreferences object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'notifications',
      serializers.serialize(object.notifications,
          specifiedType: const FullType(bool)),
      'soundEffects',
      serializers.serialize(object.soundEffects,
          specifiedType: const FullType(bool)),
      'vibration',
      serializers.serialize(object.vibration,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  NotificationsPreferences deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsPreferencesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'notifications':
          result.notifications = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'soundEffects':
          result.soundEffects = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'vibration':
          result.vibration = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationsPreferences extends NotificationsPreferences {
  @override
  final bool notifications;
  @override
  final bool soundEffects;
  @override
  final bool vibration;

  factory _$NotificationsPreferences(
          [void Function(NotificationsPreferencesBuilder)? updates]) =>
      (new NotificationsPreferencesBuilder()..update(updates)).build();

  _$NotificationsPreferences._(
      {required this.notifications,
      required this.soundEffects,
      required this.vibration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        notifications, 'NotificationsPreferences', 'notifications');
    BuiltValueNullFieldError.checkNotNull(
        soundEffects, 'NotificationsPreferences', 'soundEffects');
    BuiltValueNullFieldError.checkNotNull(
        vibration, 'NotificationsPreferences', 'vibration');
  }

  @override
  NotificationsPreferences rebuild(
          void Function(NotificationsPreferencesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsPreferencesBuilder toBuilder() =>
      new NotificationsPreferencesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsPreferences &&
        notifications == other.notifications &&
        soundEffects == other.soundEffects &&
        vibration == other.vibration;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, notifications.hashCode), soundEffects.hashCode),
        vibration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationsPreferences')
          ..add('notifications', notifications)
          ..add('soundEffects', soundEffects)
          ..add('vibration', vibration))
        .toString();
  }
}

class NotificationsPreferencesBuilder
    implements
        Builder<NotificationsPreferences, NotificationsPreferencesBuilder> {
  _$NotificationsPreferences? _$v;

  bool? _notifications;
  bool? get notifications => _$this._notifications;
  set notifications(bool? notifications) =>
      _$this._notifications = notifications;

  bool? _soundEffects;
  bool? get soundEffects => _$this._soundEffects;
  set soundEffects(bool? soundEffects) => _$this._soundEffects = soundEffects;

  bool? _vibration;
  bool? get vibration => _$this._vibration;
  set vibration(bool? vibration) => _$this._vibration = vibration;

  NotificationsPreferencesBuilder();

  NotificationsPreferencesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notifications = $v.notifications;
      _soundEffects = $v.soundEffects;
      _vibration = $v.vibration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsPreferences other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsPreferences;
  }

  @override
  void update(void Function(NotificationsPreferencesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationsPreferences build() {
    final _$result = _$v ??
        new _$NotificationsPreferences._(
            notifications: BuiltValueNullFieldError.checkNotNull(
                notifications, 'NotificationsPreferences', 'notifications'),
            soundEffects: BuiltValueNullFieldError.checkNotNull(
                soundEffects, 'NotificationsPreferences', 'soundEffects'),
            vibration: BuiltValueNullFieldError.checkNotNull(
                vibration, 'NotificationsPreferences', 'vibration'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
