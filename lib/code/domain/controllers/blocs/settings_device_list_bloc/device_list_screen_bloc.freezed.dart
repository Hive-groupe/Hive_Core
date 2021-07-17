// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'device_list_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeviceListScreenEventTearOff {
  const _$DeviceListScreenEventTearOff();

  FindDevices findDevices() {
    return const FindDevices();
  }

  DeleteDeviceItem deleteDeviceItem({required String deviceId}) {
    return DeleteDeviceItem(
      deviceId: deviceId,
    );
  }
}

/// @nodoc
const $DeviceListScreenEvent = _$DeviceListScreenEventTearOff();

/// @nodoc
mixin _$DeviceListScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findDevices,
    required TResult Function(String deviceId) deleteDeviceItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findDevices,
    TResult Function(String deviceId)? deleteDeviceItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindDevices value) findDevices,
    required TResult Function(DeleteDeviceItem value) deleteDeviceItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindDevices value)? findDevices,
    TResult Function(DeleteDeviceItem value)? deleteDeviceItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceListScreenEventCopyWith<$Res> {
  factory $DeviceListScreenEventCopyWith(DeviceListScreenEvent value,
          $Res Function(DeviceListScreenEvent) then) =
      _$DeviceListScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceListScreenEventCopyWithImpl<$Res>
    implements $DeviceListScreenEventCopyWith<$Res> {
  _$DeviceListScreenEventCopyWithImpl(this._value, this._then);

  final DeviceListScreenEvent _value;
  // ignore: unused_field
  final $Res Function(DeviceListScreenEvent) _then;
}

/// @nodoc
abstract class $FindDevicesCopyWith<$Res> {
  factory $FindDevicesCopyWith(
          FindDevices value, $Res Function(FindDevices) then) =
      _$FindDevicesCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindDevicesCopyWithImpl<$Res>
    extends _$DeviceListScreenEventCopyWithImpl<$Res>
    implements $FindDevicesCopyWith<$Res> {
  _$FindDevicesCopyWithImpl(
      FindDevices _value, $Res Function(FindDevices) _then)
      : super(_value, (v) => _then(v as FindDevices));

  @override
  FindDevices get _value => super._value as FindDevices;
}

/// @nodoc

class _$FindDevices implements FindDevices {
  const _$FindDevices();

  @override
  String toString() {
    return 'DeviceListScreenEvent.findDevices()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindDevices);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findDevices,
    required TResult Function(String deviceId) deleteDeviceItem,
  }) {
    return findDevices();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findDevices,
    TResult Function(String deviceId)? deleteDeviceItem,
    required TResult orElse(),
  }) {
    if (findDevices != null) {
      return findDevices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindDevices value) findDevices,
    required TResult Function(DeleteDeviceItem value) deleteDeviceItem,
  }) {
    return findDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindDevices value)? findDevices,
    TResult Function(DeleteDeviceItem value)? deleteDeviceItem,
    required TResult orElse(),
  }) {
    if (findDevices != null) {
      return findDevices(this);
    }
    return orElse();
  }
}

abstract class FindDevices implements DeviceListScreenEvent {
  const factory FindDevices() = _$FindDevices;
}

/// @nodoc
abstract class $DeleteDeviceItemCopyWith<$Res> {
  factory $DeleteDeviceItemCopyWith(
          DeleteDeviceItem value, $Res Function(DeleteDeviceItem) then) =
      _$DeleteDeviceItemCopyWithImpl<$Res>;
  $Res call({String deviceId});
}

/// @nodoc
class _$DeleteDeviceItemCopyWithImpl<$Res>
    extends _$DeviceListScreenEventCopyWithImpl<$Res>
    implements $DeleteDeviceItemCopyWith<$Res> {
  _$DeleteDeviceItemCopyWithImpl(
      DeleteDeviceItem _value, $Res Function(DeleteDeviceItem) _then)
      : super(_value, (v) => _then(v as DeleteDeviceItem));

  @override
  DeleteDeviceItem get _value => super._value as DeleteDeviceItem;

  @override
  $Res call({
    Object? deviceId = freezed,
  }) {
    return _then(DeleteDeviceItem(
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteDeviceItem implements DeleteDeviceItem {
  const _$DeleteDeviceItem({required this.deviceId});

  @override
  final String deviceId;

  @override
  String toString() {
    return 'DeviceListScreenEvent.deleteDeviceItem(deviceId: $deviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteDeviceItem &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deviceId);

  @JsonKey(ignore: true)
  @override
  $DeleteDeviceItemCopyWith<DeleteDeviceItem> get copyWith =>
      _$DeleteDeviceItemCopyWithImpl<DeleteDeviceItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findDevices,
    required TResult Function(String deviceId) deleteDeviceItem,
  }) {
    return deleteDeviceItem(deviceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findDevices,
    TResult Function(String deviceId)? deleteDeviceItem,
    required TResult orElse(),
  }) {
    if (deleteDeviceItem != null) {
      return deleteDeviceItem(deviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindDevices value) findDevices,
    required TResult Function(DeleteDeviceItem value) deleteDeviceItem,
  }) {
    return deleteDeviceItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindDevices value)? findDevices,
    TResult Function(DeleteDeviceItem value)? deleteDeviceItem,
    required TResult orElse(),
  }) {
    if (deleteDeviceItem != null) {
      return deleteDeviceItem(this);
    }
    return orElse();
  }
}

abstract class DeleteDeviceItem implements DeviceListScreenEvent {
  const factory DeleteDeviceItem({required String deviceId}) =
      _$DeleteDeviceItem;

  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteDeviceItemCopyWith<DeleteDeviceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DeviceListScreenStateTearOff {
  const _$DeviceListScreenStateTearOff();

  DeviceListInitial deviceListInitial() {
    return const DeviceListInitial();
  }

  DeviceListError deviceListError() {
    return const DeviceListError();
  }

  DeviceListLoading deviceListLoading() {
    return const DeviceListLoading();
  }

  DeviceListLoaded deviceListLoaded(
      {required Stream<BuiltList<Device>> deviceList}) {
    return DeviceListLoaded(
      deviceList: deviceList,
    );
  }
}

/// @nodoc
const $DeviceListScreenState = _$DeviceListScreenStateTearOff();

/// @nodoc
mixin _$DeviceListScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deviceListInitial,
    required TResult Function() deviceListError,
    required TResult Function() deviceListLoading,
    required TResult Function(Stream<BuiltList<Device>> deviceList)
        deviceListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deviceListInitial,
    TResult Function()? deviceListError,
    TResult Function()? deviceListLoading,
    TResult Function(Stream<BuiltList<Device>> deviceList)? deviceListLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceListInitial value) deviceListInitial,
    required TResult Function(DeviceListError value) deviceListError,
    required TResult Function(DeviceListLoading value) deviceListLoading,
    required TResult Function(DeviceListLoaded value) deviceListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceListInitial value)? deviceListInitial,
    TResult Function(DeviceListError value)? deviceListError,
    TResult Function(DeviceListLoading value)? deviceListLoading,
    TResult Function(DeviceListLoaded value)? deviceListLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceListScreenStateCopyWith<$Res> {
  factory $DeviceListScreenStateCopyWith(DeviceListScreenState value,
          $Res Function(DeviceListScreenState) then) =
      _$DeviceListScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceListScreenStateCopyWithImpl<$Res>
    implements $DeviceListScreenStateCopyWith<$Res> {
  _$DeviceListScreenStateCopyWithImpl(this._value, this._then);

  final DeviceListScreenState _value;
  // ignore: unused_field
  final $Res Function(DeviceListScreenState) _then;
}

/// @nodoc
abstract class $DeviceListInitialCopyWith<$Res> {
  factory $DeviceListInitialCopyWith(
          DeviceListInitial value, $Res Function(DeviceListInitial) then) =
      _$DeviceListInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceListInitialCopyWithImpl<$Res>
    extends _$DeviceListScreenStateCopyWithImpl<$Res>
    implements $DeviceListInitialCopyWith<$Res> {
  _$DeviceListInitialCopyWithImpl(
      DeviceListInitial _value, $Res Function(DeviceListInitial) _then)
      : super(_value, (v) => _then(v as DeviceListInitial));

  @override
  DeviceListInitial get _value => super._value as DeviceListInitial;
}

/// @nodoc

class _$DeviceListInitial implements DeviceListInitial {
  const _$DeviceListInitial();

  @override
  String toString() {
    return 'DeviceListScreenState.deviceListInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeviceListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deviceListInitial,
    required TResult Function() deviceListError,
    required TResult Function() deviceListLoading,
    required TResult Function(Stream<BuiltList<Device>> deviceList)
        deviceListLoaded,
  }) {
    return deviceListInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deviceListInitial,
    TResult Function()? deviceListError,
    TResult Function()? deviceListLoading,
    TResult Function(Stream<BuiltList<Device>> deviceList)? deviceListLoaded,
    required TResult orElse(),
  }) {
    if (deviceListInitial != null) {
      return deviceListInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceListInitial value) deviceListInitial,
    required TResult Function(DeviceListError value) deviceListError,
    required TResult Function(DeviceListLoading value) deviceListLoading,
    required TResult Function(DeviceListLoaded value) deviceListLoaded,
  }) {
    return deviceListInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceListInitial value)? deviceListInitial,
    TResult Function(DeviceListError value)? deviceListError,
    TResult Function(DeviceListLoading value)? deviceListLoading,
    TResult Function(DeviceListLoaded value)? deviceListLoaded,
    required TResult orElse(),
  }) {
    if (deviceListInitial != null) {
      return deviceListInitial(this);
    }
    return orElse();
  }
}

abstract class DeviceListInitial implements DeviceListScreenState {
  const factory DeviceListInitial() = _$DeviceListInitial;
}

/// @nodoc
abstract class $DeviceListErrorCopyWith<$Res> {
  factory $DeviceListErrorCopyWith(
          DeviceListError value, $Res Function(DeviceListError) then) =
      _$DeviceListErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceListErrorCopyWithImpl<$Res>
    extends _$DeviceListScreenStateCopyWithImpl<$Res>
    implements $DeviceListErrorCopyWith<$Res> {
  _$DeviceListErrorCopyWithImpl(
      DeviceListError _value, $Res Function(DeviceListError) _then)
      : super(_value, (v) => _then(v as DeviceListError));

  @override
  DeviceListError get _value => super._value as DeviceListError;
}

/// @nodoc

class _$DeviceListError implements DeviceListError {
  const _$DeviceListError();

  @override
  String toString() {
    return 'DeviceListScreenState.deviceListError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeviceListError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deviceListInitial,
    required TResult Function() deviceListError,
    required TResult Function() deviceListLoading,
    required TResult Function(Stream<BuiltList<Device>> deviceList)
        deviceListLoaded,
  }) {
    return deviceListError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deviceListInitial,
    TResult Function()? deviceListError,
    TResult Function()? deviceListLoading,
    TResult Function(Stream<BuiltList<Device>> deviceList)? deviceListLoaded,
    required TResult orElse(),
  }) {
    if (deviceListError != null) {
      return deviceListError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceListInitial value) deviceListInitial,
    required TResult Function(DeviceListError value) deviceListError,
    required TResult Function(DeviceListLoading value) deviceListLoading,
    required TResult Function(DeviceListLoaded value) deviceListLoaded,
  }) {
    return deviceListError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceListInitial value)? deviceListInitial,
    TResult Function(DeviceListError value)? deviceListError,
    TResult Function(DeviceListLoading value)? deviceListLoading,
    TResult Function(DeviceListLoaded value)? deviceListLoaded,
    required TResult orElse(),
  }) {
    if (deviceListError != null) {
      return deviceListError(this);
    }
    return orElse();
  }
}

abstract class DeviceListError implements DeviceListScreenState {
  const factory DeviceListError() = _$DeviceListError;
}

/// @nodoc
abstract class $DeviceListLoadingCopyWith<$Res> {
  factory $DeviceListLoadingCopyWith(
          DeviceListLoading value, $Res Function(DeviceListLoading) then) =
      _$DeviceListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceListLoadingCopyWithImpl<$Res>
    extends _$DeviceListScreenStateCopyWithImpl<$Res>
    implements $DeviceListLoadingCopyWith<$Res> {
  _$DeviceListLoadingCopyWithImpl(
      DeviceListLoading _value, $Res Function(DeviceListLoading) _then)
      : super(_value, (v) => _then(v as DeviceListLoading));

  @override
  DeviceListLoading get _value => super._value as DeviceListLoading;
}

/// @nodoc

class _$DeviceListLoading implements DeviceListLoading {
  const _$DeviceListLoading();

  @override
  String toString() {
    return 'DeviceListScreenState.deviceListLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeviceListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deviceListInitial,
    required TResult Function() deviceListError,
    required TResult Function() deviceListLoading,
    required TResult Function(Stream<BuiltList<Device>> deviceList)
        deviceListLoaded,
  }) {
    return deviceListLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deviceListInitial,
    TResult Function()? deviceListError,
    TResult Function()? deviceListLoading,
    TResult Function(Stream<BuiltList<Device>> deviceList)? deviceListLoaded,
    required TResult orElse(),
  }) {
    if (deviceListLoading != null) {
      return deviceListLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceListInitial value) deviceListInitial,
    required TResult Function(DeviceListError value) deviceListError,
    required TResult Function(DeviceListLoading value) deviceListLoading,
    required TResult Function(DeviceListLoaded value) deviceListLoaded,
  }) {
    return deviceListLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceListInitial value)? deviceListInitial,
    TResult Function(DeviceListError value)? deviceListError,
    TResult Function(DeviceListLoading value)? deviceListLoading,
    TResult Function(DeviceListLoaded value)? deviceListLoaded,
    required TResult orElse(),
  }) {
    if (deviceListLoading != null) {
      return deviceListLoading(this);
    }
    return orElse();
  }
}

abstract class DeviceListLoading implements DeviceListScreenState {
  const factory DeviceListLoading() = _$DeviceListLoading;
}

/// @nodoc
abstract class $DeviceListLoadedCopyWith<$Res> {
  factory $DeviceListLoadedCopyWith(
          DeviceListLoaded value, $Res Function(DeviceListLoaded) then) =
      _$DeviceListLoadedCopyWithImpl<$Res>;
  $Res call({Stream<BuiltList<Device>> deviceList});
}

/// @nodoc
class _$DeviceListLoadedCopyWithImpl<$Res>
    extends _$DeviceListScreenStateCopyWithImpl<$Res>
    implements $DeviceListLoadedCopyWith<$Res> {
  _$DeviceListLoadedCopyWithImpl(
      DeviceListLoaded _value, $Res Function(DeviceListLoaded) _then)
      : super(_value, (v) => _then(v as DeviceListLoaded));

  @override
  DeviceListLoaded get _value => super._value as DeviceListLoaded;

  @override
  $Res call({
    Object? deviceList = freezed,
  }) {
    return _then(DeviceListLoaded(
      deviceList: deviceList == freezed
          ? _value.deviceList
          : deviceList // ignore: cast_nullable_to_non_nullable
              as Stream<BuiltList<Device>>,
    ));
  }
}

/// @nodoc

class _$DeviceListLoaded implements DeviceListLoaded {
  const _$DeviceListLoaded({required this.deviceList});

  @override
  final Stream<BuiltList<Device>> deviceList;

  @override
  String toString() {
    return 'DeviceListScreenState.deviceListLoaded(deviceList: $deviceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceListLoaded &&
            (identical(other.deviceList, deviceList) ||
                const DeepCollectionEquality()
                    .equals(other.deviceList, deviceList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deviceList);

  @JsonKey(ignore: true)
  @override
  $DeviceListLoadedCopyWith<DeviceListLoaded> get copyWith =>
      _$DeviceListLoadedCopyWithImpl<DeviceListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deviceListInitial,
    required TResult Function() deviceListError,
    required TResult Function() deviceListLoading,
    required TResult Function(Stream<BuiltList<Device>> deviceList)
        deviceListLoaded,
  }) {
    return deviceListLoaded(deviceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deviceListInitial,
    TResult Function()? deviceListError,
    TResult Function()? deviceListLoading,
    TResult Function(Stream<BuiltList<Device>> deviceList)? deviceListLoaded,
    required TResult orElse(),
  }) {
    if (deviceListLoaded != null) {
      return deviceListLoaded(deviceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceListInitial value) deviceListInitial,
    required TResult Function(DeviceListError value) deviceListError,
    required TResult Function(DeviceListLoading value) deviceListLoading,
    required TResult Function(DeviceListLoaded value) deviceListLoaded,
  }) {
    return deviceListLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceListInitial value)? deviceListInitial,
    TResult Function(DeviceListError value)? deviceListError,
    TResult Function(DeviceListLoading value)? deviceListLoading,
    TResult Function(DeviceListLoaded value)? deviceListLoaded,
    required TResult orElse(),
  }) {
    if (deviceListLoaded != null) {
      return deviceListLoaded(this);
    }
    return orElse();
  }
}

abstract class DeviceListLoaded implements DeviceListScreenState {
  const factory DeviceListLoaded(
      {required Stream<BuiltList<Device>> deviceList}) = _$DeviceListLoaded;

  Stream<BuiltList<Device>> get deviceList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceListLoadedCopyWith<DeviceListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
