// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatSearchEventTearOff {
  const _$ChatSearchEventTearOff();

  StartChatSearching startChatSearching() {
    return const StartChatSearching();
  }

  ResetChatSearch resetChatSearch() {
    return const ResetChatSearch();
  }

  SearchingChats searchingChats({required String value}) {
    return SearchingChats(
      value: value,
    );
  }
}

/// @nodoc
const $ChatSearchEvent = _$ChatSearchEventTearOff();

/// @nodoc
mixin _$ChatSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startChatSearching,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startChatSearching,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSearchEventCopyWith<$Res> {
  factory $ChatSearchEventCopyWith(
          ChatSearchEvent value, $Res Function(ChatSearchEvent) then) =
      _$ChatSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatSearchEventCopyWithImpl<$Res>
    implements $ChatSearchEventCopyWith<$Res> {
  _$ChatSearchEventCopyWithImpl(this._value, this._then);

  final ChatSearchEvent _value;
  // ignore: unused_field
  final $Res Function(ChatSearchEvent) _then;
}

/// @nodoc
abstract class $StartChatSearchingCopyWith<$Res> {
  factory $StartChatSearchingCopyWith(
          StartChatSearching value, $Res Function(StartChatSearching) then) =
      _$StartChatSearchingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartChatSearchingCopyWithImpl<$Res>
    extends _$ChatSearchEventCopyWithImpl<$Res>
    implements $StartChatSearchingCopyWith<$Res> {
  _$StartChatSearchingCopyWithImpl(
      StartChatSearching _value, $Res Function(StartChatSearching) _then)
      : super(_value, (v) => _then(v as StartChatSearching));

  @override
  StartChatSearching get _value => super._value as StartChatSearching;
}

/// @nodoc

class _$StartChatSearching implements StartChatSearching {
  const _$StartChatSearching();

  @override
  String toString() {
    return 'ChatSearchEvent.startChatSearching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StartChatSearching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startChatSearching,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
  }) {
    return startChatSearching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startChatSearching,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    required TResult orElse(),
  }) {
    if (startChatSearching != null) {
      return startChatSearching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
  }) {
    return startChatSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    required TResult orElse(),
  }) {
    if (startChatSearching != null) {
      return startChatSearching(this);
    }
    return orElse();
  }
}

abstract class StartChatSearching implements ChatSearchEvent {
  const factory StartChatSearching() = _$StartChatSearching;
}

/// @nodoc
abstract class $ResetChatSearchCopyWith<$Res> {
  factory $ResetChatSearchCopyWith(
          ResetChatSearch value, $Res Function(ResetChatSearch) then) =
      _$ResetChatSearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetChatSearchCopyWithImpl<$Res>
    extends _$ChatSearchEventCopyWithImpl<$Res>
    implements $ResetChatSearchCopyWith<$Res> {
  _$ResetChatSearchCopyWithImpl(
      ResetChatSearch _value, $Res Function(ResetChatSearch) _then)
      : super(_value, (v) => _then(v as ResetChatSearch));

  @override
  ResetChatSearch get _value => super._value as ResetChatSearch;
}

/// @nodoc

class _$ResetChatSearch implements ResetChatSearch {
  const _$ResetChatSearch();

  @override
  String toString() {
    return 'ChatSearchEvent.resetChatSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetChatSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startChatSearching,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
  }) {
    return resetChatSearch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startChatSearching,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    required TResult orElse(),
  }) {
    if (resetChatSearch != null) {
      return resetChatSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
  }) {
    return resetChatSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    required TResult orElse(),
  }) {
    if (resetChatSearch != null) {
      return resetChatSearch(this);
    }
    return orElse();
  }
}

abstract class ResetChatSearch implements ChatSearchEvent {
  const factory ResetChatSearch() = _$ResetChatSearch;
}

/// @nodoc
abstract class $SearchingChatsCopyWith<$Res> {
  factory $SearchingChatsCopyWith(
          SearchingChats value, $Res Function(SearchingChats) then) =
      _$SearchingChatsCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SearchingChatsCopyWithImpl<$Res>
    extends _$ChatSearchEventCopyWithImpl<$Res>
    implements $SearchingChatsCopyWith<$Res> {
  _$SearchingChatsCopyWithImpl(
      SearchingChats _value, $Res Function(SearchingChats) _then)
      : super(_value, (v) => _then(v as SearchingChats));

  @override
  SearchingChats get _value => super._value as SearchingChats;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SearchingChats(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchingChats implements SearchingChats {
  const _$SearchingChats({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ChatSearchEvent.searchingChats(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchingChats &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $SearchingChatsCopyWith<SearchingChats> get copyWith =>
      _$SearchingChatsCopyWithImpl<SearchingChats>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startChatSearching,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
  }) {
    return searchingChats(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startChatSearching,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    required TResult orElse(),
  }) {
    if (searchingChats != null) {
      return searchingChats(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
  }) {
    return searchingChats(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    required TResult orElse(),
  }) {
    if (searchingChats != null) {
      return searchingChats(this);
    }
    return orElse();
  }
}

abstract class SearchingChats implements ChatSearchEvent {
  const factory SearchingChats({required String value}) = _$SearchingChats;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchingChatsCopyWith<SearchingChats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatSearchStateTearOff {
  const _$ChatSearchStateTearOff();

  ChatSearchInitial chatSearchInitial() {
    return const ChatSearchInitial();
  }

  ChatSearchError chatSearchError() {
    return const ChatSearchError();
  }

  ChatSearchLoading chatSearchLoading() {
    return const ChatSearchLoading();
  }

  ChatSearching chatSearching({required Stream<BuiltList<User>> userList}) {
    return ChatSearching(
      userList: userList,
    );
  }
}

/// @nodoc
const $ChatSearchState = _$ChatSearchStateTearOff();

/// @nodoc
mixin _$ChatSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatSearchInitial,
    required TResult Function() chatSearchError,
    required TResult Function() chatSearchLoading,
    required TResult Function(Stream<BuiltList<User>> userList) chatSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatSearchInitial,
    TResult Function()? chatSearchError,
    TResult Function()? chatSearchLoading,
    TResult Function(Stream<BuiltList<User>> userList)? chatSearching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSearchInitial value) chatSearchInitial,
    required TResult Function(ChatSearchError value) chatSearchError,
    required TResult Function(ChatSearchLoading value) chatSearchLoading,
    required TResult Function(ChatSearching value) chatSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSearchInitial value)? chatSearchInitial,
    TResult Function(ChatSearchError value)? chatSearchError,
    TResult Function(ChatSearchLoading value)? chatSearchLoading,
    TResult Function(ChatSearching value)? chatSearching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSearchStateCopyWith<$Res> {
  factory $ChatSearchStateCopyWith(
          ChatSearchState value, $Res Function(ChatSearchState) then) =
      _$ChatSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatSearchStateCopyWithImpl<$Res>
    implements $ChatSearchStateCopyWith<$Res> {
  _$ChatSearchStateCopyWithImpl(this._value, this._then);

  final ChatSearchState _value;
  // ignore: unused_field
  final $Res Function(ChatSearchState) _then;
}

/// @nodoc
abstract class $ChatSearchInitialCopyWith<$Res> {
  factory $ChatSearchInitialCopyWith(
          ChatSearchInitial value, $Res Function(ChatSearchInitial) then) =
      _$ChatSearchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatSearchInitialCopyWithImpl<$Res>
    extends _$ChatSearchStateCopyWithImpl<$Res>
    implements $ChatSearchInitialCopyWith<$Res> {
  _$ChatSearchInitialCopyWithImpl(
      ChatSearchInitial _value, $Res Function(ChatSearchInitial) _then)
      : super(_value, (v) => _then(v as ChatSearchInitial));

  @override
  ChatSearchInitial get _value => super._value as ChatSearchInitial;
}

/// @nodoc

class _$ChatSearchInitial implements ChatSearchInitial {
  const _$ChatSearchInitial();

  @override
  String toString() {
    return 'ChatSearchState.chatSearchInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChatSearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatSearchInitial,
    required TResult Function() chatSearchError,
    required TResult Function() chatSearchLoading,
    required TResult Function(Stream<BuiltList<User>> userList) chatSearching,
  }) {
    return chatSearchInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatSearchInitial,
    TResult Function()? chatSearchError,
    TResult Function()? chatSearchLoading,
    TResult Function(Stream<BuiltList<User>> userList)? chatSearching,
    required TResult orElse(),
  }) {
    if (chatSearchInitial != null) {
      return chatSearchInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSearchInitial value) chatSearchInitial,
    required TResult Function(ChatSearchError value) chatSearchError,
    required TResult Function(ChatSearchLoading value) chatSearchLoading,
    required TResult Function(ChatSearching value) chatSearching,
  }) {
    return chatSearchInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSearchInitial value)? chatSearchInitial,
    TResult Function(ChatSearchError value)? chatSearchError,
    TResult Function(ChatSearchLoading value)? chatSearchLoading,
    TResult Function(ChatSearching value)? chatSearching,
    required TResult orElse(),
  }) {
    if (chatSearchInitial != null) {
      return chatSearchInitial(this);
    }
    return orElse();
  }
}

abstract class ChatSearchInitial implements ChatSearchState {
  const factory ChatSearchInitial() = _$ChatSearchInitial;
}

/// @nodoc
abstract class $ChatSearchErrorCopyWith<$Res> {
  factory $ChatSearchErrorCopyWith(
          ChatSearchError value, $Res Function(ChatSearchError) then) =
      _$ChatSearchErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatSearchErrorCopyWithImpl<$Res>
    extends _$ChatSearchStateCopyWithImpl<$Res>
    implements $ChatSearchErrorCopyWith<$Res> {
  _$ChatSearchErrorCopyWithImpl(
      ChatSearchError _value, $Res Function(ChatSearchError) _then)
      : super(_value, (v) => _then(v as ChatSearchError));

  @override
  ChatSearchError get _value => super._value as ChatSearchError;
}

/// @nodoc

class _$ChatSearchError implements ChatSearchError {
  const _$ChatSearchError();

  @override
  String toString() {
    return 'ChatSearchState.chatSearchError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChatSearchError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatSearchInitial,
    required TResult Function() chatSearchError,
    required TResult Function() chatSearchLoading,
    required TResult Function(Stream<BuiltList<User>> userList) chatSearching,
  }) {
    return chatSearchError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatSearchInitial,
    TResult Function()? chatSearchError,
    TResult Function()? chatSearchLoading,
    TResult Function(Stream<BuiltList<User>> userList)? chatSearching,
    required TResult orElse(),
  }) {
    if (chatSearchError != null) {
      return chatSearchError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSearchInitial value) chatSearchInitial,
    required TResult Function(ChatSearchError value) chatSearchError,
    required TResult Function(ChatSearchLoading value) chatSearchLoading,
    required TResult Function(ChatSearching value) chatSearching,
  }) {
    return chatSearchError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSearchInitial value)? chatSearchInitial,
    TResult Function(ChatSearchError value)? chatSearchError,
    TResult Function(ChatSearchLoading value)? chatSearchLoading,
    TResult Function(ChatSearching value)? chatSearching,
    required TResult orElse(),
  }) {
    if (chatSearchError != null) {
      return chatSearchError(this);
    }
    return orElse();
  }
}

abstract class ChatSearchError implements ChatSearchState {
  const factory ChatSearchError() = _$ChatSearchError;
}

/// @nodoc
abstract class $ChatSearchLoadingCopyWith<$Res> {
  factory $ChatSearchLoadingCopyWith(
          ChatSearchLoading value, $Res Function(ChatSearchLoading) then) =
      _$ChatSearchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatSearchLoadingCopyWithImpl<$Res>
    extends _$ChatSearchStateCopyWithImpl<$Res>
    implements $ChatSearchLoadingCopyWith<$Res> {
  _$ChatSearchLoadingCopyWithImpl(
      ChatSearchLoading _value, $Res Function(ChatSearchLoading) _then)
      : super(_value, (v) => _then(v as ChatSearchLoading));

  @override
  ChatSearchLoading get _value => super._value as ChatSearchLoading;
}

/// @nodoc

class _$ChatSearchLoading implements ChatSearchLoading {
  const _$ChatSearchLoading();

  @override
  String toString() {
    return 'ChatSearchState.chatSearchLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChatSearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatSearchInitial,
    required TResult Function() chatSearchError,
    required TResult Function() chatSearchLoading,
    required TResult Function(Stream<BuiltList<User>> userList) chatSearching,
  }) {
    return chatSearchLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatSearchInitial,
    TResult Function()? chatSearchError,
    TResult Function()? chatSearchLoading,
    TResult Function(Stream<BuiltList<User>> userList)? chatSearching,
    required TResult orElse(),
  }) {
    if (chatSearchLoading != null) {
      return chatSearchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSearchInitial value) chatSearchInitial,
    required TResult Function(ChatSearchError value) chatSearchError,
    required TResult Function(ChatSearchLoading value) chatSearchLoading,
    required TResult Function(ChatSearching value) chatSearching,
  }) {
    return chatSearchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSearchInitial value)? chatSearchInitial,
    TResult Function(ChatSearchError value)? chatSearchError,
    TResult Function(ChatSearchLoading value)? chatSearchLoading,
    TResult Function(ChatSearching value)? chatSearching,
    required TResult orElse(),
  }) {
    if (chatSearchLoading != null) {
      return chatSearchLoading(this);
    }
    return orElse();
  }
}

abstract class ChatSearchLoading implements ChatSearchState {
  const factory ChatSearchLoading() = _$ChatSearchLoading;
}

/// @nodoc
abstract class $ChatSearchingCopyWith<$Res> {
  factory $ChatSearchingCopyWith(
          ChatSearching value, $Res Function(ChatSearching) then) =
      _$ChatSearchingCopyWithImpl<$Res>;
  $Res call({Stream<BuiltList<User>> userList});
}

/// @nodoc
class _$ChatSearchingCopyWithImpl<$Res>
    extends _$ChatSearchStateCopyWithImpl<$Res>
    implements $ChatSearchingCopyWith<$Res> {
  _$ChatSearchingCopyWithImpl(
      ChatSearching _value, $Res Function(ChatSearching) _then)
      : super(_value, (v) => _then(v as ChatSearching));

  @override
  ChatSearching get _value => super._value as ChatSearching;

  @override
  $Res call({
    Object? userList = freezed,
  }) {
    return _then(ChatSearching(
      userList: userList == freezed
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as Stream<BuiltList<User>>,
    ));
  }
}

/// @nodoc

class _$ChatSearching implements ChatSearching {
  const _$ChatSearching({required this.userList});

  @override
  final Stream<BuiltList<User>> userList;

  @override
  String toString() {
    return 'ChatSearchState.chatSearching(userList: $userList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChatSearching &&
            (identical(other.userList, userList) ||
                const DeepCollectionEquality()
                    .equals(other.userList, userList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userList);

  @JsonKey(ignore: true)
  @override
  $ChatSearchingCopyWith<ChatSearching> get copyWith =>
      _$ChatSearchingCopyWithImpl<ChatSearching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatSearchInitial,
    required TResult Function() chatSearchError,
    required TResult Function() chatSearchLoading,
    required TResult Function(Stream<BuiltList<User>> userList) chatSearching,
  }) {
    return chatSearching(userList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatSearchInitial,
    TResult Function()? chatSearchError,
    TResult Function()? chatSearchLoading,
    TResult Function(Stream<BuiltList<User>> userList)? chatSearching,
    required TResult orElse(),
  }) {
    if (chatSearching != null) {
      return chatSearching(userList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSearchInitial value) chatSearchInitial,
    required TResult Function(ChatSearchError value) chatSearchError,
    required TResult Function(ChatSearchLoading value) chatSearchLoading,
    required TResult Function(ChatSearching value) chatSearching,
  }) {
    return chatSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSearchInitial value)? chatSearchInitial,
    TResult Function(ChatSearchError value)? chatSearchError,
    TResult Function(ChatSearchLoading value)? chatSearchLoading,
    TResult Function(ChatSearching value)? chatSearching,
    required TResult orElse(),
  }) {
    if (chatSearching != null) {
      return chatSearching(this);
    }
    return orElse();
  }
}

abstract class ChatSearching implements ChatSearchState {
  const factory ChatSearching({required Stream<BuiltList<User>> userList}) =
      _$ChatSearching;

  Stream<BuiltList<User>> get userList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatSearchingCopyWith<ChatSearching> get copyWith =>
      throw _privateConstructorUsedError;
}
