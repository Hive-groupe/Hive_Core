// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationsEventTearOff {
  const _$NotificationsEventTearOff();

  InitNotifications initNotifications(
      {NotificationsPreferences? notificationsPreferences}) {
    return InitNotifications(
      notificationsPreferences: notificationsPreferences,
    );
  }

  SaveDevice saveDevice() {
    return const SaveDevice();
  }

  ChangeNotificationsPreferences changeNotificationsPreferences(
      {required NotificationsPreferences notificationsPreferences}) {
    return ChangeNotificationsPreferences(
      notificationsPreferences: notificationsPreferences,
    );
  }

  FinishTutorialNotifications finishTutorialNotifications() {
    return const FinishTutorialNotifications();
  }
}

/// @nodoc
const $NotificationsEvent = _$NotificationsEventTearOff();

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            NotificationsPreferences? notificationsPreferences)
        initNotifications,
    required TResult Function() saveDevice,
    required TResult Function(NotificationsPreferences notificationsPreferences)
        changeNotificationsPreferences,
    required TResult Function() finishTutorialNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationsPreferences? notificationsPreferences)?
        initNotifications,
    TResult Function()? saveDevice,
    TResult Function(NotificationsPreferences notificationsPreferences)?
        changeNotificationsPreferences,
    TResult Function()? finishTutorialNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitNotifications value) initNotifications,
    required TResult Function(SaveDevice value) saveDevice,
    required TResult Function(ChangeNotificationsPreferences value)
        changeNotificationsPreferences,
    required TResult Function(FinishTutorialNotifications value)
        finishTutorialNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitNotifications value)? initNotifications,
    TResult Function(SaveDevice value)? saveDevice,
    TResult Function(ChangeNotificationsPreferences value)?
        changeNotificationsPreferences,
    TResult Function(FinishTutorialNotifications value)?
        finishTutorialNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  final NotificationsEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationsEvent) _then;
}

/// @nodoc
abstract class $InitNotificationsCopyWith<$Res> {
  factory $InitNotificationsCopyWith(
          InitNotifications value, $Res Function(InitNotifications) then) =
      _$InitNotificationsCopyWithImpl<$Res>;
  $Res call({NotificationsPreferences? notificationsPreferences});
}

/// @nodoc
class _$InitNotificationsCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements $InitNotificationsCopyWith<$Res> {
  _$InitNotificationsCopyWithImpl(
      InitNotifications _value, $Res Function(InitNotifications) _then)
      : super(_value, (v) => _then(v as InitNotifications));

  @override
  InitNotifications get _value => super._value as InitNotifications;

  @override
  $Res call({
    Object? notificationsPreferences = freezed,
  }) {
    return _then(InitNotifications(
      notificationsPreferences: notificationsPreferences == freezed
          ? _value.notificationsPreferences
          : notificationsPreferences // ignore: cast_nullable_to_non_nullable
              as NotificationsPreferences?,
    ));
  }
}

/// @nodoc

class _$InitNotifications implements InitNotifications {
  const _$InitNotifications({this.notificationsPreferences});

  @override
  final NotificationsPreferences? notificationsPreferences;

  @override
  String toString() {
    return 'NotificationsEvent.initNotifications(notificationsPreferences: $notificationsPreferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitNotifications &&
            (identical(
                    other.notificationsPreferences, notificationsPreferences) ||
                const DeepCollectionEquality().equals(
                    other.notificationsPreferences, notificationsPreferences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationsPreferences);

  @JsonKey(ignore: true)
  @override
  $InitNotificationsCopyWith<InitNotifications> get copyWith =>
      _$InitNotificationsCopyWithImpl<InitNotifications>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            NotificationsPreferences? notificationsPreferences)
        initNotifications,
    required TResult Function() saveDevice,
    required TResult Function(NotificationsPreferences notificationsPreferences)
        changeNotificationsPreferences,
    required TResult Function() finishTutorialNotifications,
  }) {
    return initNotifications(notificationsPreferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationsPreferences? notificationsPreferences)?
        initNotifications,
    TResult Function()? saveDevice,
    TResult Function(NotificationsPreferences notificationsPreferences)?
        changeNotificationsPreferences,
    TResult Function()? finishTutorialNotifications,
    required TResult orElse(),
  }) {
    if (initNotifications != null) {
      return initNotifications(notificationsPreferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitNotifications value) initNotifications,
    required TResult Function(SaveDevice value) saveDevice,
    required TResult Function(ChangeNotificationsPreferences value)
        changeNotificationsPreferences,
    required TResult Function(FinishTutorialNotifications value)
        finishTutorialNotifications,
  }) {
    return initNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitNotifications value)? initNotifications,
    TResult Function(SaveDevice value)? saveDevice,
    TResult Function(ChangeNotificationsPreferences value)?
        changeNotificationsPreferences,
    TResult Function(FinishTutorialNotifications value)?
        finishTutorialNotifications,
    required TResult orElse(),
  }) {
    if (initNotifications != null) {
      return initNotifications(this);
    }
    return orElse();
  }
}

abstract class InitNotifications implements NotificationsEvent {
  const factory InitNotifications(
          {NotificationsPreferences? notificationsPreferences}) =
      _$InitNotifications;

  NotificationsPreferences? get notificationsPreferences =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitNotificationsCopyWith<InitNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveDeviceCopyWith<$Res> {
  factory $SaveDeviceCopyWith(
          SaveDevice value, $Res Function(SaveDevice) then) =
      _$SaveDeviceCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveDeviceCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements $SaveDeviceCopyWith<$Res> {
  _$SaveDeviceCopyWithImpl(SaveDevice _value, $Res Function(SaveDevice) _then)
      : super(_value, (v) => _then(v as SaveDevice));

  @override
  SaveDevice get _value => super._value as SaveDevice;
}

/// @nodoc

class _$SaveDevice implements SaveDevice {
  const _$SaveDevice();

  @override
  String toString() {
    return 'NotificationsEvent.saveDevice()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveDevice);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            NotificationsPreferences? notificationsPreferences)
        initNotifications,
    required TResult Function() saveDevice,
    required TResult Function(NotificationsPreferences notificationsPreferences)
        changeNotificationsPreferences,
    required TResult Function() finishTutorialNotifications,
  }) {
    return saveDevice();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationsPreferences? notificationsPreferences)?
        initNotifications,
    TResult Function()? saveDevice,
    TResult Function(NotificationsPreferences notificationsPreferences)?
        changeNotificationsPreferences,
    TResult Function()? finishTutorialNotifications,
    required TResult orElse(),
  }) {
    if (saveDevice != null) {
      return saveDevice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitNotifications value) initNotifications,
    required TResult Function(SaveDevice value) saveDevice,
    required TResult Function(ChangeNotificationsPreferences value)
        changeNotificationsPreferences,
    required TResult Function(FinishTutorialNotifications value)
        finishTutorialNotifications,
  }) {
    return saveDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitNotifications value)? initNotifications,
    TResult Function(SaveDevice value)? saveDevice,
    TResult Function(ChangeNotificationsPreferences value)?
        changeNotificationsPreferences,
    TResult Function(FinishTutorialNotifications value)?
        finishTutorialNotifications,
    required TResult orElse(),
  }) {
    if (saveDevice != null) {
      return saveDevice(this);
    }
    return orElse();
  }
}

abstract class SaveDevice implements NotificationsEvent {
  const factory SaveDevice() = _$SaveDevice;
}

/// @nodoc
abstract class $ChangeNotificationsPreferencesCopyWith<$Res> {
  factory $ChangeNotificationsPreferencesCopyWith(
          ChangeNotificationsPreferences value,
          $Res Function(ChangeNotificationsPreferences) then) =
      _$ChangeNotificationsPreferencesCopyWithImpl<$Res>;
  $Res call({NotificationsPreferences notificationsPreferences});
}

/// @nodoc
class _$ChangeNotificationsPreferencesCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements $ChangeNotificationsPreferencesCopyWith<$Res> {
  _$ChangeNotificationsPreferencesCopyWithImpl(
      ChangeNotificationsPreferences _value,
      $Res Function(ChangeNotificationsPreferences) _then)
      : super(_value, (v) => _then(v as ChangeNotificationsPreferences));

  @override
  ChangeNotificationsPreferences get _value =>
      super._value as ChangeNotificationsPreferences;

  @override
  $Res call({
    Object? notificationsPreferences = freezed,
  }) {
    return _then(ChangeNotificationsPreferences(
      notificationsPreferences: notificationsPreferences == freezed
          ? _value.notificationsPreferences
          : notificationsPreferences // ignore: cast_nullable_to_non_nullable
              as NotificationsPreferences,
    ));
  }
}

/// @nodoc

class _$ChangeNotificationsPreferences
    implements ChangeNotificationsPreferences {
  const _$ChangeNotificationsPreferences(
      {required this.notificationsPreferences});

  @override
  final NotificationsPreferences notificationsPreferences;

  @override
  String toString() {
    return 'NotificationsEvent.changeNotificationsPreferences(notificationsPreferences: $notificationsPreferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeNotificationsPreferences &&
            (identical(
                    other.notificationsPreferences, notificationsPreferences) ||
                const DeepCollectionEquality().equals(
                    other.notificationsPreferences, notificationsPreferences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationsPreferences);

  @JsonKey(ignore: true)
  @override
  $ChangeNotificationsPreferencesCopyWith<ChangeNotificationsPreferences>
      get copyWith => _$ChangeNotificationsPreferencesCopyWithImpl<
          ChangeNotificationsPreferences>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            NotificationsPreferences? notificationsPreferences)
        initNotifications,
    required TResult Function() saveDevice,
    required TResult Function(NotificationsPreferences notificationsPreferences)
        changeNotificationsPreferences,
    required TResult Function() finishTutorialNotifications,
  }) {
    return changeNotificationsPreferences(notificationsPreferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationsPreferences? notificationsPreferences)?
        initNotifications,
    TResult Function()? saveDevice,
    TResult Function(NotificationsPreferences notificationsPreferences)?
        changeNotificationsPreferences,
    TResult Function()? finishTutorialNotifications,
    required TResult orElse(),
  }) {
    if (changeNotificationsPreferences != null) {
      return changeNotificationsPreferences(notificationsPreferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitNotifications value) initNotifications,
    required TResult Function(SaveDevice value) saveDevice,
    required TResult Function(ChangeNotificationsPreferences value)
        changeNotificationsPreferences,
    required TResult Function(FinishTutorialNotifications value)
        finishTutorialNotifications,
  }) {
    return changeNotificationsPreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitNotifications value)? initNotifications,
    TResult Function(SaveDevice value)? saveDevice,
    TResult Function(ChangeNotificationsPreferences value)?
        changeNotificationsPreferences,
    TResult Function(FinishTutorialNotifications value)?
        finishTutorialNotifications,
    required TResult orElse(),
  }) {
    if (changeNotificationsPreferences != null) {
      return changeNotificationsPreferences(this);
    }
    return orElse();
  }
}

abstract class ChangeNotificationsPreferences implements NotificationsEvent {
  const factory ChangeNotificationsPreferences(
          {required NotificationsPreferences notificationsPreferences}) =
      _$ChangeNotificationsPreferences;

  NotificationsPreferences get notificationsPreferences =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeNotificationsPreferencesCopyWith<ChangeNotificationsPreferences>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishTutorialNotificationsCopyWith<$Res> {
  factory $FinishTutorialNotificationsCopyWith(
          FinishTutorialNotifications value,
          $Res Function(FinishTutorialNotifications) then) =
      _$FinishTutorialNotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class _$FinishTutorialNotificationsCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements $FinishTutorialNotificationsCopyWith<$Res> {
  _$FinishTutorialNotificationsCopyWithImpl(FinishTutorialNotifications _value,
      $Res Function(FinishTutorialNotifications) _then)
      : super(_value, (v) => _then(v as FinishTutorialNotifications));

  @override
  FinishTutorialNotifications get _value =>
      super._value as FinishTutorialNotifications;
}

/// @nodoc

class _$FinishTutorialNotifications implements FinishTutorialNotifications {
  const _$FinishTutorialNotifications();

  @override
  String toString() {
    return 'NotificationsEvent.finishTutorialNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FinishTutorialNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            NotificationsPreferences? notificationsPreferences)
        initNotifications,
    required TResult Function() saveDevice,
    required TResult Function(NotificationsPreferences notificationsPreferences)
        changeNotificationsPreferences,
    required TResult Function() finishTutorialNotifications,
  }) {
    return finishTutorialNotifications();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationsPreferences? notificationsPreferences)?
        initNotifications,
    TResult Function()? saveDevice,
    TResult Function(NotificationsPreferences notificationsPreferences)?
        changeNotificationsPreferences,
    TResult Function()? finishTutorialNotifications,
    required TResult orElse(),
  }) {
    if (finishTutorialNotifications != null) {
      return finishTutorialNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitNotifications value) initNotifications,
    required TResult Function(SaveDevice value) saveDevice,
    required TResult Function(ChangeNotificationsPreferences value)
        changeNotificationsPreferences,
    required TResult Function(FinishTutorialNotifications value)
        finishTutorialNotifications,
  }) {
    return finishTutorialNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitNotifications value)? initNotifications,
    TResult Function(SaveDevice value)? saveDevice,
    TResult Function(ChangeNotificationsPreferences value)?
        changeNotificationsPreferences,
    TResult Function(FinishTutorialNotifications value)?
        finishTutorialNotifications,
    required TResult orElse(),
  }) {
    if (finishTutorialNotifications != null) {
      return finishTutorialNotifications(this);
    }
    return orElse();
  }
}

abstract class FinishTutorialNotifications implements NotificationsEvent {
  const factory FinishTutorialNotifications() = _$FinishTutorialNotifications;
}

/// @nodoc
class _$NotificationsStateTearOff {
  const _$NotificationsStateTearOff();

  NotificationsInitial notificationsInitial() {
    return const NotificationsInitial();
  }

  NotificationsError notificationsError() {
    return const NotificationsError();
  }

  NotificationsLoading notificationsLoading() {
    return const NotificationsLoading();
  }

  NotificationsLoaded notificationsLoaded(
      {required Stream<BuiltList<Widget>> notificationsList}) {
    return NotificationsLoaded(
      notificationsList: notificationsList,
    );
  }
}

/// @nodoc
const $NotificationsState = _$NotificationsStateTearOff();

/// @nodoc
mixin _$NotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationsInitial,
    required TResult Function() notificationsError,
    required TResult Function() notificationsLoading,
    required TResult Function(Stream<BuiltList<Widget>> notificationsList)
        notificationsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationsInitial,
    TResult Function()? notificationsError,
    TResult Function()? notificationsLoading,
    TResult Function(Stream<BuiltList<Widget>> notificationsList)?
        notificationsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationsInitial value) notificationsInitial,
    required TResult Function(NotificationsError value) notificationsError,
    required TResult Function(NotificationsLoading value) notificationsLoading,
    required TResult Function(NotificationsLoaded value) notificationsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsInitial value)? notificationsInitial,
    TResult Function(NotificationsError value)? notificationsError,
    TResult Function(NotificationsLoading value)? notificationsLoading,
    TResult Function(NotificationsLoaded value)? notificationsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  final NotificationsState _value;
  // ignore: unused_field
  final $Res Function(NotificationsState) _then;
}

/// @nodoc
abstract class $NotificationsInitialCopyWith<$Res> {
  factory $NotificationsInitialCopyWith(NotificationsInitial value,
          $Res Function(NotificationsInitial) then) =
      _$NotificationsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsInitialCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsInitialCopyWith<$Res> {
  _$NotificationsInitialCopyWithImpl(
      NotificationsInitial _value, $Res Function(NotificationsInitial) _then)
      : super(_value, (v) => _then(v as NotificationsInitial));

  @override
  NotificationsInitial get _value => super._value as NotificationsInitial;
}

/// @nodoc

class _$NotificationsInitial implements NotificationsInitial {
  const _$NotificationsInitial();

  @override
  String toString() {
    return 'NotificationsState.notificationsInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotificationsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationsInitial,
    required TResult Function() notificationsError,
    required TResult Function() notificationsLoading,
    required TResult Function(Stream<BuiltList<Widget>> notificationsList)
        notificationsLoaded,
  }) {
    return notificationsInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationsInitial,
    TResult Function()? notificationsError,
    TResult Function()? notificationsLoading,
    TResult Function(Stream<BuiltList<Widget>> notificationsList)?
        notificationsLoaded,
    required TResult orElse(),
  }) {
    if (notificationsInitial != null) {
      return notificationsInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationsInitial value) notificationsInitial,
    required TResult Function(NotificationsError value) notificationsError,
    required TResult Function(NotificationsLoading value) notificationsLoading,
    required TResult Function(NotificationsLoaded value) notificationsLoaded,
  }) {
    return notificationsInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsInitial value)? notificationsInitial,
    TResult Function(NotificationsError value)? notificationsError,
    TResult Function(NotificationsLoading value)? notificationsLoading,
    TResult Function(NotificationsLoaded value)? notificationsLoaded,
    required TResult orElse(),
  }) {
    if (notificationsInitial != null) {
      return notificationsInitial(this);
    }
    return orElse();
  }
}

abstract class NotificationsInitial implements NotificationsState {
  const factory NotificationsInitial() = _$NotificationsInitial;
}

/// @nodoc
abstract class $NotificationsErrorCopyWith<$Res> {
  factory $NotificationsErrorCopyWith(
          NotificationsError value, $Res Function(NotificationsError) then) =
      _$NotificationsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsErrorCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsErrorCopyWith<$Res> {
  _$NotificationsErrorCopyWithImpl(
      NotificationsError _value, $Res Function(NotificationsError) _then)
      : super(_value, (v) => _then(v as NotificationsError));

  @override
  NotificationsError get _value => super._value as NotificationsError;
}

/// @nodoc

class _$NotificationsError implements NotificationsError {
  const _$NotificationsError();

  @override
  String toString() {
    return 'NotificationsState.notificationsError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotificationsError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationsInitial,
    required TResult Function() notificationsError,
    required TResult Function() notificationsLoading,
    required TResult Function(Stream<BuiltList<Widget>> notificationsList)
        notificationsLoaded,
  }) {
    return notificationsError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationsInitial,
    TResult Function()? notificationsError,
    TResult Function()? notificationsLoading,
    TResult Function(Stream<BuiltList<Widget>> notificationsList)?
        notificationsLoaded,
    required TResult orElse(),
  }) {
    if (notificationsError != null) {
      return notificationsError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationsInitial value) notificationsInitial,
    required TResult Function(NotificationsError value) notificationsError,
    required TResult Function(NotificationsLoading value) notificationsLoading,
    required TResult Function(NotificationsLoaded value) notificationsLoaded,
  }) {
    return notificationsError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsInitial value)? notificationsInitial,
    TResult Function(NotificationsError value)? notificationsError,
    TResult Function(NotificationsLoading value)? notificationsLoading,
    TResult Function(NotificationsLoaded value)? notificationsLoaded,
    required TResult orElse(),
  }) {
    if (notificationsError != null) {
      return notificationsError(this);
    }
    return orElse();
  }
}

abstract class NotificationsError implements NotificationsState {
  const factory NotificationsError() = _$NotificationsError;
}

/// @nodoc
abstract class $NotificationsLoadingCopyWith<$Res> {
  factory $NotificationsLoadingCopyWith(NotificationsLoading value,
          $Res Function(NotificationsLoading) then) =
      _$NotificationsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsLoadingCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsLoadingCopyWith<$Res> {
  _$NotificationsLoadingCopyWithImpl(
      NotificationsLoading _value, $Res Function(NotificationsLoading) _then)
      : super(_value, (v) => _then(v as NotificationsLoading));

  @override
  NotificationsLoading get _value => super._value as NotificationsLoading;
}

/// @nodoc

class _$NotificationsLoading implements NotificationsLoading {
  const _$NotificationsLoading();

  @override
  String toString() {
    return 'NotificationsState.notificationsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotificationsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationsInitial,
    required TResult Function() notificationsError,
    required TResult Function() notificationsLoading,
    required TResult Function(Stream<BuiltList<Widget>> notificationsList)
        notificationsLoaded,
  }) {
    return notificationsLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationsInitial,
    TResult Function()? notificationsError,
    TResult Function()? notificationsLoading,
    TResult Function(Stream<BuiltList<Widget>> notificationsList)?
        notificationsLoaded,
    required TResult orElse(),
  }) {
    if (notificationsLoading != null) {
      return notificationsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationsInitial value) notificationsInitial,
    required TResult Function(NotificationsError value) notificationsError,
    required TResult Function(NotificationsLoading value) notificationsLoading,
    required TResult Function(NotificationsLoaded value) notificationsLoaded,
  }) {
    return notificationsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsInitial value)? notificationsInitial,
    TResult Function(NotificationsError value)? notificationsError,
    TResult Function(NotificationsLoading value)? notificationsLoading,
    TResult Function(NotificationsLoaded value)? notificationsLoaded,
    required TResult orElse(),
  }) {
    if (notificationsLoading != null) {
      return notificationsLoading(this);
    }
    return orElse();
  }
}

abstract class NotificationsLoading implements NotificationsState {
  const factory NotificationsLoading() = _$NotificationsLoading;
}

/// @nodoc
abstract class $NotificationsLoadedCopyWith<$Res> {
  factory $NotificationsLoadedCopyWith(
          NotificationsLoaded value, $Res Function(NotificationsLoaded) then) =
      _$NotificationsLoadedCopyWithImpl<$Res>;
  $Res call({Stream<BuiltList<Widget>> notificationsList});
}

/// @nodoc
class _$NotificationsLoadedCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsLoadedCopyWith<$Res> {
  _$NotificationsLoadedCopyWithImpl(
      NotificationsLoaded _value, $Res Function(NotificationsLoaded) _then)
      : super(_value, (v) => _then(v as NotificationsLoaded));

  @override
  NotificationsLoaded get _value => super._value as NotificationsLoaded;

  @override
  $Res call({
    Object? notificationsList = freezed,
  }) {
    return _then(NotificationsLoaded(
      notificationsList: notificationsList == freezed
          ? _value.notificationsList
          : notificationsList // ignore: cast_nullable_to_non_nullable
              as Stream<BuiltList<Widget>>,
    ));
  }
}

/// @nodoc

class _$NotificationsLoaded implements NotificationsLoaded {
  const _$NotificationsLoaded({required this.notificationsList});

  @override
  final Stream<BuiltList<Widget>> notificationsList;

  @override
  String toString() {
    return 'NotificationsState.notificationsLoaded(notificationsList: $notificationsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationsLoaded &&
            (identical(other.notificationsList, notificationsList) ||
                const DeepCollectionEquality()
                    .equals(other.notificationsList, notificationsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationsList);

  @JsonKey(ignore: true)
  @override
  $NotificationsLoadedCopyWith<NotificationsLoaded> get copyWith =>
      _$NotificationsLoadedCopyWithImpl<NotificationsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationsInitial,
    required TResult Function() notificationsError,
    required TResult Function() notificationsLoading,
    required TResult Function(Stream<BuiltList<Widget>> notificationsList)
        notificationsLoaded,
  }) {
    return notificationsLoaded(notificationsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationsInitial,
    TResult Function()? notificationsError,
    TResult Function()? notificationsLoading,
    TResult Function(Stream<BuiltList<Widget>> notificationsList)?
        notificationsLoaded,
    required TResult orElse(),
  }) {
    if (notificationsLoaded != null) {
      return notificationsLoaded(notificationsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationsInitial value) notificationsInitial,
    required TResult Function(NotificationsError value) notificationsError,
    required TResult Function(NotificationsLoading value) notificationsLoading,
    required TResult Function(NotificationsLoaded value) notificationsLoaded,
  }) {
    return notificationsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsInitial value)? notificationsInitial,
    TResult Function(NotificationsError value)? notificationsError,
    TResult Function(NotificationsLoading value)? notificationsLoading,
    TResult Function(NotificationsLoaded value)? notificationsLoaded,
    required TResult orElse(),
  }) {
    if (notificationsLoaded != null) {
      return notificationsLoaded(this);
    }
    return orElse();
  }
}

abstract class NotificationsLoaded implements NotificationsState {
  const factory NotificationsLoaded(
          {required Stream<BuiltList<Widget>> notificationsList}) =
      _$NotificationsLoaded;

  Stream<BuiltList<Widget>> get notificationsList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationsLoadedCopyWith<NotificationsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
