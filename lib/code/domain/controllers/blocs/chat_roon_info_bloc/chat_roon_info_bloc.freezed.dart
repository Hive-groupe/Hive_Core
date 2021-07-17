// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_roon_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatRoonInfoEventTearOff {
  const _$ChatRoonInfoEventTearOff();

  StartChatRoonInfo startChatRoonInfo({required String receiverId}) {
    return StartChatRoonInfo(
      receiverId: receiverId,
    );
  }
}

/// @nodoc
const $ChatRoonInfoEvent = _$ChatRoonInfoEventTearOff();

/// @nodoc
mixin _$ChatRoonInfoEvent {
  String get receiverId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) startChatRoonInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? startChatRoonInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartChatRoonInfo value) startChatRoonInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartChatRoonInfo value)? startChatRoonInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatRoonInfoEventCopyWith<ChatRoonInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoonInfoEventCopyWith<$Res> {
  factory $ChatRoonInfoEventCopyWith(
          ChatRoonInfoEvent value, $Res Function(ChatRoonInfoEvent) then) =
      _$ChatRoonInfoEventCopyWithImpl<$Res>;
  $Res call({String receiverId});
}

/// @nodoc
class _$ChatRoonInfoEventCopyWithImpl<$Res>
    implements $ChatRoonInfoEventCopyWith<$Res> {
  _$ChatRoonInfoEventCopyWithImpl(this._value, this._then);

  final ChatRoonInfoEvent _value;
  // ignore: unused_field
  final $Res Function(ChatRoonInfoEvent) _then;

  @override
  $Res call({
    Object? receiverId = freezed,
  }) {
    return _then(_value.copyWith(
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $StartChatRoonInfoCopyWith<$Res>
    implements $ChatRoonInfoEventCopyWith<$Res> {
  factory $StartChatRoonInfoCopyWith(
          StartChatRoonInfo value, $Res Function(StartChatRoonInfo) then) =
      _$StartChatRoonInfoCopyWithImpl<$Res>;
  @override
  $Res call({String receiverId});
}

/// @nodoc
class _$StartChatRoonInfoCopyWithImpl<$Res>
    extends _$ChatRoonInfoEventCopyWithImpl<$Res>
    implements $StartChatRoonInfoCopyWith<$Res> {
  _$StartChatRoonInfoCopyWithImpl(
      StartChatRoonInfo _value, $Res Function(StartChatRoonInfo) _then)
      : super(_value, (v) => _then(v as StartChatRoonInfo));

  @override
  StartChatRoonInfo get _value => super._value as StartChatRoonInfo;

  @override
  $Res call({
    Object? receiverId = freezed,
  }) {
    return _then(StartChatRoonInfo(
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartChatRoonInfo implements StartChatRoonInfo {
  const _$StartChatRoonInfo({required this.receiverId});

  @override
  final String receiverId;

  @override
  String toString() {
    return 'ChatRoonInfoEvent.startChatRoonInfo(receiverId: $receiverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartChatRoonInfo &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiverId);

  @JsonKey(ignore: true)
  @override
  $StartChatRoonInfoCopyWith<StartChatRoonInfo> get copyWith =>
      _$StartChatRoonInfoCopyWithImpl<StartChatRoonInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) startChatRoonInfo,
  }) {
    return startChatRoonInfo(receiverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? startChatRoonInfo,
    required TResult orElse(),
  }) {
    if (startChatRoonInfo != null) {
      return startChatRoonInfo(receiverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartChatRoonInfo value) startChatRoonInfo,
  }) {
    return startChatRoonInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartChatRoonInfo value)? startChatRoonInfo,
    required TResult orElse(),
  }) {
    if (startChatRoonInfo != null) {
      return startChatRoonInfo(this);
    }
    return orElse();
  }
}

abstract class StartChatRoonInfo implements ChatRoonInfoEvent {
  const factory StartChatRoonInfo({required String receiverId}) =
      _$StartChatRoonInfo;

  @override
  String get receiverId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StartChatRoonInfoCopyWith<StartChatRoonInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatRoonInfoStateTearOff {
  const _$ChatRoonInfoStateTearOff();

  ChatRoonInfoInitial chatRoonInfoInitial() {
    return const ChatRoonInfoInitial();
  }

  ChatLoaded chatLoaded(
      {required Stream<User> reciver,
      required Stream<BuiltList<ChatMessage>> chatImageMessageList}) {
    return ChatLoaded(
      reciver: reciver,
      chatImageMessageList: chatImageMessageList,
    );
  }
}

/// @nodoc
const $ChatRoonInfoState = _$ChatRoonInfoStateTearOff();

/// @nodoc
mixin _$ChatRoonInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatRoonInfoInitial,
    required TResult Function(Stream<User> reciver,
            Stream<BuiltList<ChatMessage>> chatImageMessageList)
        chatLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatRoonInfoInitial,
    TResult Function(Stream<User> reciver,
            Stream<BuiltList<ChatMessage>> chatImageMessageList)?
        chatLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatRoonInfoInitial value) chatRoonInfoInitial,
    required TResult Function(ChatLoaded value) chatLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatRoonInfoInitial value)? chatRoonInfoInitial,
    TResult Function(ChatLoaded value)? chatLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoonInfoStateCopyWith<$Res> {
  factory $ChatRoonInfoStateCopyWith(
          ChatRoonInfoState value, $Res Function(ChatRoonInfoState) then) =
      _$ChatRoonInfoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatRoonInfoStateCopyWithImpl<$Res>
    implements $ChatRoonInfoStateCopyWith<$Res> {
  _$ChatRoonInfoStateCopyWithImpl(this._value, this._then);

  final ChatRoonInfoState _value;
  // ignore: unused_field
  final $Res Function(ChatRoonInfoState) _then;
}

/// @nodoc
abstract class $ChatRoonInfoInitialCopyWith<$Res> {
  factory $ChatRoonInfoInitialCopyWith(
          ChatRoonInfoInitial value, $Res Function(ChatRoonInfoInitial) then) =
      _$ChatRoonInfoInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatRoonInfoInitialCopyWithImpl<$Res>
    extends _$ChatRoonInfoStateCopyWithImpl<$Res>
    implements $ChatRoonInfoInitialCopyWith<$Res> {
  _$ChatRoonInfoInitialCopyWithImpl(
      ChatRoonInfoInitial _value, $Res Function(ChatRoonInfoInitial) _then)
      : super(_value, (v) => _then(v as ChatRoonInfoInitial));

  @override
  ChatRoonInfoInitial get _value => super._value as ChatRoonInfoInitial;
}

/// @nodoc

class _$ChatRoonInfoInitial implements ChatRoonInfoInitial {
  const _$ChatRoonInfoInitial();

  @override
  String toString() {
    return 'ChatRoonInfoState.chatRoonInfoInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChatRoonInfoInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatRoonInfoInitial,
    required TResult Function(Stream<User> reciver,
            Stream<BuiltList<ChatMessage>> chatImageMessageList)
        chatLoaded,
  }) {
    return chatRoonInfoInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatRoonInfoInitial,
    TResult Function(Stream<User> reciver,
            Stream<BuiltList<ChatMessage>> chatImageMessageList)?
        chatLoaded,
    required TResult orElse(),
  }) {
    if (chatRoonInfoInitial != null) {
      return chatRoonInfoInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatRoonInfoInitial value) chatRoonInfoInitial,
    required TResult Function(ChatLoaded value) chatLoaded,
  }) {
    return chatRoonInfoInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatRoonInfoInitial value)? chatRoonInfoInitial,
    TResult Function(ChatLoaded value)? chatLoaded,
    required TResult orElse(),
  }) {
    if (chatRoonInfoInitial != null) {
      return chatRoonInfoInitial(this);
    }
    return orElse();
  }
}

abstract class ChatRoonInfoInitial implements ChatRoonInfoState {
  const factory ChatRoonInfoInitial() = _$ChatRoonInfoInitial;
}

/// @nodoc
abstract class $ChatLoadedCopyWith<$Res> {
  factory $ChatLoadedCopyWith(
          ChatLoaded value, $Res Function(ChatLoaded) then) =
      _$ChatLoadedCopyWithImpl<$Res>;
  $Res call(
      {Stream<User> reciver,
      Stream<BuiltList<ChatMessage>> chatImageMessageList});
}

/// @nodoc
class _$ChatLoadedCopyWithImpl<$Res>
    extends _$ChatRoonInfoStateCopyWithImpl<$Res>
    implements $ChatLoadedCopyWith<$Res> {
  _$ChatLoadedCopyWithImpl(ChatLoaded _value, $Res Function(ChatLoaded) _then)
      : super(_value, (v) => _then(v as ChatLoaded));

  @override
  ChatLoaded get _value => super._value as ChatLoaded;

  @override
  $Res call({
    Object? reciver = freezed,
    Object? chatImageMessageList = freezed,
  }) {
    return _then(ChatLoaded(
      reciver: reciver == freezed
          ? _value.reciver
          : reciver // ignore: cast_nullable_to_non_nullable
              as Stream<User>,
      chatImageMessageList: chatImageMessageList == freezed
          ? _value.chatImageMessageList
          : chatImageMessageList // ignore: cast_nullable_to_non_nullable
              as Stream<BuiltList<ChatMessage>>,
    ));
  }
}

/// @nodoc

class _$ChatLoaded implements ChatLoaded {
  const _$ChatLoaded(
      {required this.reciver, required this.chatImageMessageList});

  @override
  final Stream<User> reciver;
  @override
  final Stream<BuiltList<ChatMessage>> chatImageMessageList;

  @override
  String toString() {
    return 'ChatRoonInfoState.chatLoaded(reciver: $reciver, chatImageMessageList: $chatImageMessageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChatLoaded &&
            (identical(other.reciver, reciver) ||
                const DeepCollectionEquality()
                    .equals(other.reciver, reciver)) &&
            (identical(other.chatImageMessageList, chatImageMessageList) ||
                const DeepCollectionEquality()
                    .equals(other.chatImageMessageList, chatImageMessageList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reciver) ^
      const DeepCollectionEquality().hash(chatImageMessageList);

  @JsonKey(ignore: true)
  @override
  $ChatLoadedCopyWith<ChatLoaded> get copyWith =>
      _$ChatLoadedCopyWithImpl<ChatLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatRoonInfoInitial,
    required TResult Function(Stream<User> reciver,
            Stream<BuiltList<ChatMessage>> chatImageMessageList)
        chatLoaded,
  }) {
    return chatLoaded(reciver, chatImageMessageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatRoonInfoInitial,
    TResult Function(Stream<User> reciver,
            Stream<BuiltList<ChatMessage>> chatImageMessageList)?
        chatLoaded,
    required TResult orElse(),
  }) {
    if (chatLoaded != null) {
      return chatLoaded(reciver, chatImageMessageList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatRoonInfoInitial value) chatRoonInfoInitial,
    required TResult Function(ChatLoaded value) chatLoaded,
  }) {
    return chatLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatRoonInfoInitial value)? chatRoonInfoInitial,
    TResult Function(ChatLoaded value)? chatLoaded,
    required TResult orElse(),
  }) {
    if (chatLoaded != null) {
      return chatLoaded(this);
    }
    return orElse();
  }
}

abstract class ChatLoaded implements ChatRoonInfoState {
  const factory ChatLoaded(
          {required Stream<User> reciver,
          required Stream<BuiltList<ChatMessage>> chatImageMessageList}) =
      _$ChatLoaded;

  Stream<User> get reciver => throw _privateConstructorUsedError;
  Stream<BuiltList<ChatMessage>> get chatImageMessageList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatLoadedCopyWith<ChatLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
