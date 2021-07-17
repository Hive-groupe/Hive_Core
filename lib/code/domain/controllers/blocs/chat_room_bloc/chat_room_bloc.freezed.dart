// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatRoomEventTearOff {
  const _$ChatRoomEventTearOff();

  LoadChat loadChat({required String receiverId}) {
    return LoadChat(
      receiverId: receiverId,
    );
  }

  SendTextMessage sendTextMessage(
      {required String receiverId, required String message}) {
    return SendTextMessage(
      receiverId: receiverId,
      message: message,
    );
  }

  SendAudioMessage sendAudioMessage(
      {required String receiverId, required String message}) {
    return SendAudioMessage(
      receiverId: receiverId,
      message: message,
    );
  }

  SendImageMessage sendImageMessage(
      {required String receiverId,
      required String message,
      required File photo}) {
    return SendImageMessage(
      receiverId: receiverId,
      message: message,
      photo: photo,
    );
  }

  SendStickerMessage sendStickerMessage(
      {required String receiverId,
      required String message,
      required File sticker}) {
    return SendStickerMessage(
      receiverId: receiverId,
      message: message,
      sticker: sticker,
    );
  }

  RecordAudio recordAudio() {
    return const RecordAudio();
  }

  MoveScrollToDown moveScrollToDown() {
    return const MoveScrollToDown();
  }

  OnTextEditChanged onTextEditChanged({required bool writing}) {
    return OnTextEditChanged(
      writing: writing,
    );
  }

  ShowKeyboard showKeyboard() {
    return const ShowKeyboard();
  }

  HideKeyboard hideKeyboard() {
    return const HideKeyboard();
  }

  HideEmojiContainer hideEmojiContainer() {
    return const HideEmojiContainer();
  }

  OnTapBtnEmojis onTapBtnEmojis() {
    return const OnTapBtnEmojis();
  }

  AddEmoji addEmoji({required Emoji emoji}) {
    return AddEmoji(
      emoji: emoji,
    );
  }

  SelectMessage selectMessage({required ChatMessage messageId}) {
    return SelectMessage(
      messageId: messageId,
    );
  }

  UnselectMessage unselectMessage() {
    return const UnselectMessage();
  }

  DeleteMessage deleteMessage({required String? messageId}) {
    return DeleteMessage(
      messageId: messageId,
    );
  }

  LikedMessage likedMessage({required ChatMessage chatMessage}) {
    return LikedMessage(
      chatMessage: chatMessage,
    );
  }

  StartChatSearching startChatSearching() {
    return const StartChatSearching();
  }

  CancelChatSearch cancelChatSearch() {
    return const CancelChatSearch();
  }

  ResetChatSearch resetChatSearch() {
    return const ResetChatSearch();
  }

  SearchingChats searchingChats({required String value}) {
    return SearchingChats(
      value: value,
    );
  }

  EmptyChatRoon emptyChatRoon({required String receiverId}) {
    return EmptyChatRoon(
      receiverId: receiverId,
    );
  }
}

/// @nodoc
const $ChatRoomEvent = _$ChatRoomEventTearOff();

/// @nodoc
mixin _$ChatRoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomEventCopyWith<$Res> {
  factory $ChatRoomEventCopyWith(
          ChatRoomEvent value, $Res Function(ChatRoomEvent) then) =
      _$ChatRoomEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatRoomEventCopyWithImpl<$Res>
    implements $ChatRoomEventCopyWith<$Res> {
  _$ChatRoomEventCopyWithImpl(this._value, this._then);

  final ChatRoomEvent _value;
  // ignore: unused_field
  final $Res Function(ChatRoomEvent) _then;
}

/// @nodoc
abstract class $LoadChatCopyWith<$Res> {
  factory $LoadChatCopyWith(LoadChat value, $Res Function(LoadChat) then) =
      _$LoadChatCopyWithImpl<$Res>;
  $Res call({String receiverId});
}

/// @nodoc
class _$LoadChatCopyWithImpl<$Res> extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $LoadChatCopyWith<$Res> {
  _$LoadChatCopyWithImpl(LoadChat _value, $Res Function(LoadChat) _then)
      : super(_value, (v) => _then(v as LoadChat));

  @override
  LoadChat get _value => super._value as LoadChat;

  @override
  $Res call({
    Object? receiverId = freezed,
  }) {
    return _then(LoadChat(
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadChat implements LoadChat {
  const _$LoadChat({required this.receiverId});

  @override
  final String receiverId;

  @override
  String toString() {
    return 'ChatRoomEvent.loadChat(receiverId: $receiverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadChat &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiverId);

  @JsonKey(ignore: true)
  @override
  $LoadChatCopyWith<LoadChat> get copyWith =>
      _$LoadChatCopyWithImpl<LoadChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return loadChat(receiverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (loadChat != null) {
      return loadChat(receiverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return loadChat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (loadChat != null) {
      return loadChat(this);
    }
    return orElse();
  }
}

abstract class LoadChat implements ChatRoomEvent {
  const factory LoadChat({required String receiverId}) = _$LoadChat;

  String get receiverId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadChatCopyWith<LoadChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTextMessageCopyWith<$Res> {
  factory $SendTextMessageCopyWith(
          SendTextMessage value, $Res Function(SendTextMessage) then) =
      _$SendTextMessageCopyWithImpl<$Res>;
  $Res call({String receiverId, String message});
}

/// @nodoc
class _$SendTextMessageCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $SendTextMessageCopyWith<$Res> {
  _$SendTextMessageCopyWithImpl(
      SendTextMessage _value, $Res Function(SendTextMessage) _then)
      : super(_value, (v) => _then(v as SendTextMessage));

  @override
  SendTextMessage get _value => super._value as SendTextMessage;

  @override
  $Res call({
    Object? receiverId = freezed,
    Object? message = freezed,
  }) {
    return _then(SendTextMessage(
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendTextMessage implements SendTextMessage {
  const _$SendTextMessage({required this.receiverId, required this.message});

  @override
  final String receiverId;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatRoomEvent.sendTextMessage(receiverId: $receiverId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendTextMessage &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $SendTextMessageCopyWith<SendTextMessage> get copyWith =>
      _$SendTextMessageCopyWithImpl<SendTextMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return sendTextMessage(receiverId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (sendTextMessage != null) {
      return sendTextMessage(receiverId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return sendTextMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (sendTextMessage != null) {
      return sendTextMessage(this);
    }
    return orElse();
  }
}

abstract class SendTextMessage implements ChatRoomEvent {
  const factory SendTextMessage(
      {required String receiverId,
      required String message}) = _$SendTextMessage;

  String get receiverId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendTextMessageCopyWith<SendTextMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendAudioMessageCopyWith<$Res> {
  factory $SendAudioMessageCopyWith(
          SendAudioMessage value, $Res Function(SendAudioMessage) then) =
      _$SendAudioMessageCopyWithImpl<$Res>;
  $Res call({String receiverId, String message});
}

/// @nodoc
class _$SendAudioMessageCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $SendAudioMessageCopyWith<$Res> {
  _$SendAudioMessageCopyWithImpl(
      SendAudioMessage _value, $Res Function(SendAudioMessage) _then)
      : super(_value, (v) => _then(v as SendAudioMessage));

  @override
  SendAudioMessage get _value => super._value as SendAudioMessage;

  @override
  $Res call({
    Object? receiverId = freezed,
    Object? message = freezed,
  }) {
    return _then(SendAudioMessage(
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendAudioMessage implements SendAudioMessage {
  const _$SendAudioMessage({required this.receiverId, required this.message});

  @override
  final String receiverId;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatRoomEvent.sendAudioMessage(receiverId: $receiverId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendAudioMessage &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $SendAudioMessageCopyWith<SendAudioMessage> get copyWith =>
      _$SendAudioMessageCopyWithImpl<SendAudioMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return sendAudioMessage(receiverId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (sendAudioMessage != null) {
      return sendAudioMessage(receiverId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return sendAudioMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (sendAudioMessage != null) {
      return sendAudioMessage(this);
    }
    return orElse();
  }
}

abstract class SendAudioMessage implements ChatRoomEvent {
  const factory SendAudioMessage(
      {required String receiverId,
      required String message}) = _$SendAudioMessage;

  String get receiverId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendAudioMessageCopyWith<SendAudioMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendImageMessageCopyWith<$Res> {
  factory $SendImageMessageCopyWith(
          SendImageMessage value, $Res Function(SendImageMessage) then) =
      _$SendImageMessageCopyWithImpl<$Res>;
  $Res call({String receiverId, String message, File photo});
}

/// @nodoc
class _$SendImageMessageCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $SendImageMessageCopyWith<$Res> {
  _$SendImageMessageCopyWithImpl(
      SendImageMessage _value, $Res Function(SendImageMessage) _then)
      : super(_value, (v) => _then(v as SendImageMessage));

  @override
  SendImageMessage get _value => super._value as SendImageMessage;

  @override
  $Res call({
    Object? receiverId = freezed,
    Object? message = freezed,
    Object? photo = freezed,
  }) {
    return _then(SendImageMessage(
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$SendImageMessage implements SendImageMessage {
  const _$SendImageMessage(
      {required this.receiverId, required this.message, required this.photo});

  @override
  final String receiverId;
  @override
  final String message;
  @override
  final File photo;

  @override
  String toString() {
    return 'ChatRoomEvent.sendImageMessage(receiverId: $receiverId, message: $message, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendImageMessage &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(photo);

  @JsonKey(ignore: true)
  @override
  $SendImageMessageCopyWith<SendImageMessage> get copyWith =>
      _$SendImageMessageCopyWithImpl<SendImageMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return sendImageMessage(receiverId, message, photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(receiverId, message, photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return sendImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(this);
    }
    return orElse();
  }
}

abstract class SendImageMessage implements ChatRoomEvent {
  const factory SendImageMessage(
      {required String receiverId,
      required String message,
      required File photo}) = _$SendImageMessage;

  String get receiverId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  File get photo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendImageMessageCopyWith<SendImageMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendStickerMessageCopyWith<$Res> {
  factory $SendStickerMessageCopyWith(
          SendStickerMessage value, $Res Function(SendStickerMessage) then) =
      _$SendStickerMessageCopyWithImpl<$Res>;
  $Res call({String receiverId, String message, File sticker});
}

/// @nodoc
class _$SendStickerMessageCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $SendStickerMessageCopyWith<$Res> {
  _$SendStickerMessageCopyWithImpl(
      SendStickerMessage _value, $Res Function(SendStickerMessage) _then)
      : super(_value, (v) => _then(v as SendStickerMessage));

  @override
  SendStickerMessage get _value => super._value as SendStickerMessage;

  @override
  $Res call({
    Object? receiverId = freezed,
    Object? message = freezed,
    Object? sticker = freezed,
  }) {
    return _then(SendStickerMessage(
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sticker: sticker == freezed
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$SendStickerMessage implements SendStickerMessage {
  const _$SendStickerMessage(
      {required this.receiverId, required this.message, required this.sticker});

  @override
  final String receiverId;
  @override
  final String message;
  @override
  final File sticker;

  @override
  String toString() {
    return 'ChatRoomEvent.sendStickerMessage(receiverId: $receiverId, message: $message, sticker: $sticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendStickerMessage &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.sticker, sticker) ||
                const DeepCollectionEquality().equals(other.sticker, sticker)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(sticker);

  @JsonKey(ignore: true)
  @override
  $SendStickerMessageCopyWith<SendStickerMessage> get copyWith =>
      _$SendStickerMessageCopyWithImpl<SendStickerMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return sendStickerMessage(receiverId, message, sticker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (sendStickerMessage != null) {
      return sendStickerMessage(receiverId, message, sticker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return sendStickerMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (sendStickerMessage != null) {
      return sendStickerMessage(this);
    }
    return orElse();
  }
}

abstract class SendStickerMessage implements ChatRoomEvent {
  const factory SendStickerMessage(
      {required String receiverId,
      required String message,
      required File sticker}) = _$SendStickerMessage;

  String get receiverId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  File get sticker => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendStickerMessageCopyWith<SendStickerMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordAudioCopyWith<$Res> {
  factory $RecordAudioCopyWith(
          RecordAudio value, $Res Function(RecordAudio) then) =
      _$RecordAudioCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecordAudioCopyWithImpl<$Res> extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $RecordAudioCopyWith<$Res> {
  _$RecordAudioCopyWithImpl(
      RecordAudio _value, $Res Function(RecordAudio) _then)
      : super(_value, (v) => _then(v as RecordAudio));

  @override
  RecordAudio get _value => super._value as RecordAudio;
}

/// @nodoc

class _$RecordAudio implements RecordAudio {
  const _$RecordAudio();

  @override
  String toString() {
    return 'ChatRoomEvent.recordAudio()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RecordAudio);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return recordAudio();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (recordAudio != null) {
      return recordAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return recordAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (recordAudio != null) {
      return recordAudio(this);
    }
    return orElse();
  }
}

abstract class RecordAudio implements ChatRoomEvent {
  const factory RecordAudio() = _$RecordAudio;
}

/// @nodoc
abstract class $MoveScrollToDownCopyWith<$Res> {
  factory $MoveScrollToDownCopyWith(
          MoveScrollToDown value, $Res Function(MoveScrollToDown) then) =
      _$MoveScrollToDownCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoveScrollToDownCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $MoveScrollToDownCopyWith<$Res> {
  _$MoveScrollToDownCopyWithImpl(
      MoveScrollToDown _value, $Res Function(MoveScrollToDown) _then)
      : super(_value, (v) => _then(v as MoveScrollToDown));

  @override
  MoveScrollToDown get _value => super._value as MoveScrollToDown;
}

/// @nodoc

class _$MoveScrollToDown implements MoveScrollToDown {
  const _$MoveScrollToDown();

  @override
  String toString() {
    return 'ChatRoomEvent.moveScrollToDown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MoveScrollToDown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return moveScrollToDown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (moveScrollToDown != null) {
      return moveScrollToDown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return moveScrollToDown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (moveScrollToDown != null) {
      return moveScrollToDown(this);
    }
    return orElse();
  }
}

abstract class MoveScrollToDown implements ChatRoomEvent {
  const factory MoveScrollToDown() = _$MoveScrollToDown;
}

/// @nodoc
abstract class $OnTextEditChangedCopyWith<$Res> {
  factory $OnTextEditChangedCopyWith(
          OnTextEditChanged value, $Res Function(OnTextEditChanged) then) =
      _$OnTextEditChangedCopyWithImpl<$Res>;
  $Res call({bool writing});
}

/// @nodoc
class _$OnTextEditChangedCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $OnTextEditChangedCopyWith<$Res> {
  _$OnTextEditChangedCopyWithImpl(
      OnTextEditChanged _value, $Res Function(OnTextEditChanged) _then)
      : super(_value, (v) => _then(v as OnTextEditChanged));

  @override
  OnTextEditChanged get _value => super._value as OnTextEditChanged;

  @override
  $Res call({
    Object? writing = freezed,
  }) {
    return _then(OnTextEditChanged(
      writing: writing == freezed
          ? _value.writing
          : writing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnTextEditChanged implements OnTextEditChanged {
  const _$OnTextEditChanged({required this.writing});

  @override
  final bool writing;

  @override
  String toString() {
    return 'ChatRoomEvent.onTextEditChanged(writing: $writing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnTextEditChanged &&
            (identical(other.writing, writing) ||
                const DeepCollectionEquality().equals(other.writing, writing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(writing);

  @JsonKey(ignore: true)
  @override
  $OnTextEditChangedCopyWith<OnTextEditChanged> get copyWith =>
      _$OnTextEditChangedCopyWithImpl<OnTextEditChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return onTextEditChanged(writing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (onTextEditChanged != null) {
      return onTextEditChanged(writing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return onTextEditChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (onTextEditChanged != null) {
      return onTextEditChanged(this);
    }
    return orElse();
  }
}

abstract class OnTextEditChanged implements ChatRoomEvent {
  const factory OnTextEditChanged({required bool writing}) =
      _$OnTextEditChanged;

  bool get writing => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnTextEditChangedCopyWith<OnTextEditChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowKeyboardCopyWith<$Res> {
  factory $ShowKeyboardCopyWith(
          ShowKeyboard value, $Res Function(ShowKeyboard) then) =
      _$ShowKeyboardCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowKeyboardCopyWithImpl<$Res> extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $ShowKeyboardCopyWith<$Res> {
  _$ShowKeyboardCopyWithImpl(
      ShowKeyboard _value, $Res Function(ShowKeyboard) _then)
      : super(_value, (v) => _then(v as ShowKeyboard));

  @override
  ShowKeyboard get _value => super._value as ShowKeyboard;
}

/// @nodoc

class _$ShowKeyboard implements ShowKeyboard {
  const _$ShowKeyboard();

  @override
  String toString() {
    return 'ChatRoomEvent.showKeyboard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowKeyboard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return showKeyboard();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (showKeyboard != null) {
      return showKeyboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return showKeyboard(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (showKeyboard != null) {
      return showKeyboard(this);
    }
    return orElse();
  }
}

abstract class ShowKeyboard implements ChatRoomEvent {
  const factory ShowKeyboard() = _$ShowKeyboard;
}

/// @nodoc
abstract class $HideKeyboardCopyWith<$Res> {
  factory $HideKeyboardCopyWith(
          HideKeyboard value, $Res Function(HideKeyboard) then) =
      _$HideKeyboardCopyWithImpl<$Res>;
}

/// @nodoc
class _$HideKeyboardCopyWithImpl<$Res> extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $HideKeyboardCopyWith<$Res> {
  _$HideKeyboardCopyWithImpl(
      HideKeyboard _value, $Res Function(HideKeyboard) _then)
      : super(_value, (v) => _then(v as HideKeyboard));

  @override
  HideKeyboard get _value => super._value as HideKeyboard;
}

/// @nodoc

class _$HideKeyboard implements HideKeyboard {
  const _$HideKeyboard();

  @override
  String toString() {
    return 'ChatRoomEvent.hideKeyboard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HideKeyboard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return hideKeyboard();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (hideKeyboard != null) {
      return hideKeyboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return hideKeyboard(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (hideKeyboard != null) {
      return hideKeyboard(this);
    }
    return orElse();
  }
}

abstract class HideKeyboard implements ChatRoomEvent {
  const factory HideKeyboard() = _$HideKeyboard;
}

/// @nodoc
abstract class $HideEmojiContainerCopyWith<$Res> {
  factory $HideEmojiContainerCopyWith(
          HideEmojiContainer value, $Res Function(HideEmojiContainer) then) =
      _$HideEmojiContainerCopyWithImpl<$Res>;
}

/// @nodoc
class _$HideEmojiContainerCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $HideEmojiContainerCopyWith<$Res> {
  _$HideEmojiContainerCopyWithImpl(
      HideEmojiContainer _value, $Res Function(HideEmojiContainer) _then)
      : super(_value, (v) => _then(v as HideEmojiContainer));

  @override
  HideEmojiContainer get _value => super._value as HideEmojiContainer;
}

/// @nodoc

class _$HideEmojiContainer implements HideEmojiContainer {
  const _$HideEmojiContainer();

  @override
  String toString() {
    return 'ChatRoomEvent.hideEmojiContainer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HideEmojiContainer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return hideEmojiContainer();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (hideEmojiContainer != null) {
      return hideEmojiContainer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return hideEmojiContainer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (hideEmojiContainer != null) {
      return hideEmojiContainer(this);
    }
    return orElse();
  }
}

abstract class HideEmojiContainer implements ChatRoomEvent {
  const factory HideEmojiContainer() = _$HideEmojiContainer;
}

/// @nodoc
abstract class $OnTapBtnEmojisCopyWith<$Res> {
  factory $OnTapBtnEmojisCopyWith(
          OnTapBtnEmojis value, $Res Function(OnTapBtnEmojis) then) =
      _$OnTapBtnEmojisCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnTapBtnEmojisCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $OnTapBtnEmojisCopyWith<$Res> {
  _$OnTapBtnEmojisCopyWithImpl(
      OnTapBtnEmojis _value, $Res Function(OnTapBtnEmojis) _then)
      : super(_value, (v) => _then(v as OnTapBtnEmojis));

  @override
  OnTapBtnEmojis get _value => super._value as OnTapBtnEmojis;
}

/// @nodoc

class _$OnTapBtnEmojis implements OnTapBtnEmojis {
  const _$OnTapBtnEmojis();

  @override
  String toString() {
    return 'ChatRoomEvent.onTapBtnEmojis()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnTapBtnEmojis);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return onTapBtnEmojis();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (onTapBtnEmojis != null) {
      return onTapBtnEmojis();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return onTapBtnEmojis(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (onTapBtnEmojis != null) {
      return onTapBtnEmojis(this);
    }
    return orElse();
  }
}

abstract class OnTapBtnEmojis implements ChatRoomEvent {
  const factory OnTapBtnEmojis() = _$OnTapBtnEmojis;
}

/// @nodoc
abstract class $AddEmojiCopyWith<$Res> {
  factory $AddEmojiCopyWith(AddEmoji value, $Res Function(AddEmoji) then) =
      _$AddEmojiCopyWithImpl<$Res>;
  $Res call({Emoji emoji});
}

/// @nodoc
class _$AddEmojiCopyWithImpl<$Res> extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $AddEmojiCopyWith<$Res> {
  _$AddEmojiCopyWithImpl(AddEmoji _value, $Res Function(AddEmoji) _then)
      : super(_value, (v) => _then(v as AddEmoji));

  @override
  AddEmoji get _value => super._value as AddEmoji;

  @override
  $Res call({
    Object? emoji = freezed,
  }) {
    return _then(AddEmoji(
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as Emoji,
    ));
  }
}

/// @nodoc

class _$AddEmoji implements AddEmoji {
  const _$AddEmoji({required this.emoji});

  @override
  final Emoji emoji;

  @override
  String toString() {
    return 'ChatRoomEvent.addEmoji(emoji: $emoji)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddEmoji &&
            (identical(other.emoji, emoji) ||
                const DeepCollectionEquality().equals(other.emoji, emoji)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emoji);

  @JsonKey(ignore: true)
  @override
  $AddEmojiCopyWith<AddEmoji> get copyWith =>
      _$AddEmojiCopyWithImpl<AddEmoji>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return addEmoji(emoji);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (addEmoji != null) {
      return addEmoji(emoji);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return addEmoji(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (addEmoji != null) {
      return addEmoji(this);
    }
    return orElse();
  }
}

abstract class AddEmoji implements ChatRoomEvent {
  const factory AddEmoji({required Emoji emoji}) = _$AddEmoji;

  Emoji get emoji => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddEmojiCopyWith<AddEmoji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectMessageCopyWith<$Res> {
  factory $SelectMessageCopyWith(
          SelectMessage value, $Res Function(SelectMessage) then) =
      _$SelectMessageCopyWithImpl<$Res>;
  $Res call({ChatMessage messageId});
}

/// @nodoc
class _$SelectMessageCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $SelectMessageCopyWith<$Res> {
  _$SelectMessageCopyWithImpl(
      SelectMessage _value, $Res Function(SelectMessage) _then)
      : super(_value, (v) => _then(v as SelectMessage));

  @override
  SelectMessage get _value => super._value as SelectMessage;

  @override
  $Res call({
    Object? messageId = freezed,
  }) {
    return _then(SelectMessage(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$SelectMessage implements SelectMessage {
  const _$SelectMessage({required this.messageId});

  @override
  final ChatMessage messageId;

  @override
  String toString() {
    return 'ChatRoomEvent.selectMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectMessage &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messageId);

  @JsonKey(ignore: true)
  @override
  $SelectMessageCopyWith<SelectMessage> get copyWith =>
      _$SelectMessageCopyWithImpl<SelectMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return selectMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (selectMessage != null) {
      return selectMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return selectMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (selectMessage != null) {
      return selectMessage(this);
    }
    return orElse();
  }
}

abstract class SelectMessage implements ChatRoomEvent {
  const factory SelectMessage({required ChatMessage messageId}) =
      _$SelectMessage;

  ChatMessage get messageId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectMessageCopyWith<SelectMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnselectMessageCopyWith<$Res> {
  factory $UnselectMessageCopyWith(
          UnselectMessage value, $Res Function(UnselectMessage) then) =
      _$UnselectMessageCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnselectMessageCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $UnselectMessageCopyWith<$Res> {
  _$UnselectMessageCopyWithImpl(
      UnselectMessage _value, $Res Function(UnselectMessage) _then)
      : super(_value, (v) => _then(v as UnselectMessage));

  @override
  UnselectMessage get _value => super._value as UnselectMessage;
}

/// @nodoc

class _$UnselectMessage implements UnselectMessage {
  const _$UnselectMessage();

  @override
  String toString() {
    return 'ChatRoomEvent.unselectMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnselectMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return unselectMessage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (unselectMessage != null) {
      return unselectMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return unselectMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (unselectMessage != null) {
      return unselectMessage(this);
    }
    return orElse();
  }
}

abstract class UnselectMessage implements ChatRoomEvent {
  const factory UnselectMessage() = _$UnselectMessage;
}

/// @nodoc
abstract class $DeleteMessageCopyWith<$Res> {
  factory $DeleteMessageCopyWith(
          DeleteMessage value, $Res Function(DeleteMessage) then) =
      _$DeleteMessageCopyWithImpl<$Res>;
  $Res call({String? messageId});
}

/// @nodoc
class _$DeleteMessageCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $DeleteMessageCopyWith<$Res> {
  _$DeleteMessageCopyWithImpl(
      DeleteMessage _value, $Res Function(DeleteMessage) _then)
      : super(_value, (v) => _then(v as DeleteMessage));

  @override
  DeleteMessage get _value => super._value as DeleteMessage;

  @override
  $Res call({
    Object? messageId = freezed,
  }) {
    return _then(DeleteMessage(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteMessage implements DeleteMessage {
  const _$DeleteMessage({required this.messageId});

  @override
  final String? messageId;

  @override
  String toString() {
    return 'ChatRoomEvent.deleteMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteMessage &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messageId);

  @JsonKey(ignore: true)
  @override
  $DeleteMessageCopyWith<DeleteMessage> get copyWith =>
      _$DeleteMessageCopyWithImpl<DeleteMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return deleteMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class DeleteMessage implements ChatRoomEvent {
  const factory DeleteMessage({required String? messageId}) = _$DeleteMessage;

  String? get messageId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteMessageCopyWith<DeleteMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedMessageCopyWith<$Res> {
  factory $LikedMessageCopyWith(
          LikedMessage value, $Res Function(LikedMessage) then) =
      _$LikedMessageCopyWithImpl<$Res>;
  $Res call({ChatMessage chatMessage});
}

/// @nodoc
class _$LikedMessageCopyWithImpl<$Res> extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $LikedMessageCopyWith<$Res> {
  _$LikedMessageCopyWithImpl(
      LikedMessage _value, $Res Function(LikedMessage) _then)
      : super(_value, (v) => _then(v as LikedMessage));

  @override
  LikedMessage get _value => super._value as LikedMessage;

  @override
  $Res call({
    Object? chatMessage = freezed,
  }) {
    return _then(LikedMessage(
      chatMessage: chatMessage == freezed
          ? _value.chatMessage
          : chatMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$LikedMessage implements LikedMessage {
  const _$LikedMessage({required this.chatMessage});

  @override
  final ChatMessage chatMessage;

  @override
  String toString() {
    return 'ChatRoomEvent.likedMessage(chatMessage: $chatMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LikedMessage &&
            (identical(other.chatMessage, chatMessage) ||
                const DeepCollectionEquality()
                    .equals(other.chatMessage, chatMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatMessage);

  @JsonKey(ignore: true)
  @override
  $LikedMessageCopyWith<LikedMessage> get copyWith =>
      _$LikedMessageCopyWithImpl<LikedMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return likedMessage(chatMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (likedMessage != null) {
      return likedMessage(chatMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return likedMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (likedMessage != null) {
      return likedMessage(this);
    }
    return orElse();
  }
}

abstract class LikedMessage implements ChatRoomEvent {
  const factory LikedMessage({required ChatMessage chatMessage}) =
      _$LikedMessage;

  ChatMessage get chatMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikedMessageCopyWith<LikedMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartChatSearchingCopyWith<$Res> {
  factory $StartChatSearchingCopyWith(
          StartChatSearching value, $Res Function(StartChatSearching) then) =
      _$StartChatSearchingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartChatSearchingCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
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
    return 'ChatRoomEvent.startChatSearching()';
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
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return startChatSearching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
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
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return startChatSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (startChatSearching != null) {
      return startChatSearching(this);
    }
    return orElse();
  }
}

abstract class StartChatSearching implements ChatRoomEvent {
  const factory StartChatSearching() = _$StartChatSearching;
}

/// @nodoc
abstract class $CancelChatSearchCopyWith<$Res> {
  factory $CancelChatSearchCopyWith(
          CancelChatSearch value, $Res Function(CancelChatSearch) then) =
      _$CancelChatSearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelChatSearchCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $CancelChatSearchCopyWith<$Res> {
  _$CancelChatSearchCopyWithImpl(
      CancelChatSearch _value, $Res Function(CancelChatSearch) _then)
      : super(_value, (v) => _then(v as CancelChatSearch));

  @override
  CancelChatSearch get _value => super._value as CancelChatSearch;
}

/// @nodoc

class _$CancelChatSearch implements CancelChatSearch {
  const _$CancelChatSearch();

  @override
  String toString() {
    return 'ChatRoomEvent.cancelChatSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelChatSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return cancelChatSearch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (cancelChatSearch != null) {
      return cancelChatSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return cancelChatSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (cancelChatSearch != null) {
      return cancelChatSearch(this);
    }
    return orElse();
  }
}

abstract class CancelChatSearch implements ChatRoomEvent {
  const factory CancelChatSearch() = _$CancelChatSearch;
}

/// @nodoc
abstract class $ResetChatSearchCopyWith<$Res> {
  factory $ResetChatSearchCopyWith(
          ResetChatSearch value, $Res Function(ResetChatSearch) then) =
      _$ResetChatSearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetChatSearchCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
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
    return 'ChatRoomEvent.resetChatSearch()';
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
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return resetChatSearch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
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
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return resetChatSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (resetChatSearch != null) {
      return resetChatSearch(this);
    }
    return orElse();
  }
}

abstract class ResetChatSearch implements ChatRoomEvent {
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
    extends _$ChatRoomEventCopyWithImpl<$Res>
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
    return 'ChatRoomEvent.searchingChats(value: $value)';
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
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return searchingChats(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
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
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return searchingChats(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (searchingChats != null) {
      return searchingChats(this);
    }
    return orElse();
  }
}

abstract class SearchingChats implements ChatRoomEvent {
  const factory SearchingChats({required String value}) = _$SearchingChats;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchingChatsCopyWith<SearchingChats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyChatRoonCopyWith<$Res> {
  factory $EmptyChatRoonCopyWith(
          EmptyChatRoon value, $Res Function(EmptyChatRoon) then) =
      _$EmptyChatRoonCopyWithImpl<$Res>;
  $Res call({String receiverId});
}

/// @nodoc
class _$EmptyChatRoonCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $EmptyChatRoonCopyWith<$Res> {
  _$EmptyChatRoonCopyWithImpl(
      EmptyChatRoon _value, $Res Function(EmptyChatRoon) _then)
      : super(_value, (v) => _then(v as EmptyChatRoon));

  @override
  EmptyChatRoon get _value => super._value as EmptyChatRoon;

  @override
  $Res call({
    Object? receiverId = freezed,
  }) {
    return _then(EmptyChatRoon(
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmptyChatRoon implements EmptyChatRoon {
  const _$EmptyChatRoon({required this.receiverId});

  @override
  final String receiverId;

  @override
  String toString() {
    return 'ChatRoomEvent.emptyChatRoon(receiverId: $receiverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyChatRoon &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiverId);

  @JsonKey(ignore: true)
  @override
  $EmptyChatRoonCopyWith<EmptyChatRoon> get copyWith =>
      _$EmptyChatRoonCopyWithImpl<EmptyChatRoon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId) loadChat,
    required TResult Function(String receiverId, String message)
        sendTextMessage,
    required TResult Function(String receiverId, String message)
        sendAudioMessage,
    required TResult Function(String receiverId, String message, File photo)
        sendImageMessage,
    required TResult Function(String receiverId, String message, File sticker)
        sendStickerMessage,
    required TResult Function() recordAudio,
    required TResult Function() moveScrollToDown,
    required TResult Function(bool writing) onTextEditChanged,
    required TResult Function() showKeyboard,
    required TResult Function() hideKeyboard,
    required TResult Function() hideEmojiContainer,
    required TResult Function() onTapBtnEmojis,
    required TResult Function(Emoji emoji) addEmoji,
    required TResult Function(ChatMessage messageId) selectMessage,
    required TResult Function() unselectMessage,
    required TResult Function(String? messageId) deleteMessage,
    required TResult Function(ChatMessage chatMessage) likedMessage,
    required TResult Function() startChatSearching,
    required TResult Function() cancelChatSearch,
    required TResult Function() resetChatSearch,
    required TResult Function(String value) searchingChats,
    required TResult Function(String receiverId) emptyChatRoon,
  }) {
    return emptyChatRoon(receiverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId)? loadChat,
    TResult Function(String receiverId, String message)? sendTextMessage,
    TResult Function(String receiverId, String message)? sendAudioMessage,
    TResult Function(String receiverId, String message, File photo)?
        sendImageMessage,
    TResult Function(String receiverId, String message, File sticker)?
        sendStickerMessage,
    TResult Function()? recordAudio,
    TResult Function()? moveScrollToDown,
    TResult Function(bool writing)? onTextEditChanged,
    TResult Function()? showKeyboard,
    TResult Function()? hideKeyboard,
    TResult Function()? hideEmojiContainer,
    TResult Function()? onTapBtnEmojis,
    TResult Function(Emoji emoji)? addEmoji,
    TResult Function(ChatMessage messageId)? selectMessage,
    TResult Function()? unselectMessage,
    TResult Function(String? messageId)? deleteMessage,
    TResult Function(ChatMessage chatMessage)? likedMessage,
    TResult Function()? startChatSearching,
    TResult Function()? cancelChatSearch,
    TResult Function()? resetChatSearch,
    TResult Function(String value)? searchingChats,
    TResult Function(String receiverId)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (emptyChatRoon != null) {
      return emptyChatRoon(receiverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChat value) loadChat,
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(SendAudioMessage value) sendAudioMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(RecordAudio value) recordAudio,
    required TResult Function(MoveScrollToDown value) moveScrollToDown,
    required TResult Function(OnTextEditChanged value) onTextEditChanged,
    required TResult Function(ShowKeyboard value) showKeyboard,
    required TResult Function(HideKeyboard value) hideKeyboard,
    required TResult Function(HideEmojiContainer value) hideEmojiContainer,
    required TResult Function(OnTapBtnEmojis value) onTapBtnEmojis,
    required TResult Function(AddEmoji value) addEmoji,
    required TResult Function(SelectMessage value) selectMessage,
    required TResult Function(UnselectMessage value) unselectMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(LikedMessage value) likedMessage,
    required TResult Function(StartChatSearching value) startChatSearching,
    required TResult Function(CancelChatSearch value) cancelChatSearch,
    required TResult Function(ResetChatSearch value) resetChatSearch,
    required TResult Function(SearchingChats value) searchingChats,
    required TResult Function(EmptyChatRoon value) emptyChatRoon,
  }) {
    return emptyChatRoon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChat value)? loadChat,
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(SendAudioMessage value)? sendAudioMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(RecordAudio value)? recordAudio,
    TResult Function(MoveScrollToDown value)? moveScrollToDown,
    TResult Function(OnTextEditChanged value)? onTextEditChanged,
    TResult Function(ShowKeyboard value)? showKeyboard,
    TResult Function(HideKeyboard value)? hideKeyboard,
    TResult Function(HideEmojiContainer value)? hideEmojiContainer,
    TResult Function(OnTapBtnEmojis value)? onTapBtnEmojis,
    TResult Function(AddEmoji value)? addEmoji,
    TResult Function(SelectMessage value)? selectMessage,
    TResult Function(UnselectMessage value)? unselectMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(LikedMessage value)? likedMessage,
    TResult Function(StartChatSearching value)? startChatSearching,
    TResult Function(CancelChatSearch value)? cancelChatSearch,
    TResult Function(ResetChatSearch value)? resetChatSearch,
    TResult Function(SearchingChats value)? searchingChats,
    TResult Function(EmptyChatRoon value)? emptyChatRoon,
    required TResult orElse(),
  }) {
    if (emptyChatRoon != null) {
      return emptyChatRoon(this);
    }
    return orElse();
  }
}

abstract class EmptyChatRoon implements ChatRoomEvent {
  const factory EmptyChatRoon({required String receiverId}) = _$EmptyChatRoon;

  String get receiverId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyChatRoonCopyWith<EmptyChatRoon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatRoomStateTearOff {
  const _$ChatRoomStateTearOff();

  ChatInitial chatInitial({required TextEditingController sendController}) {
    return ChatInitial(
      sendController: sendController,
    );
  }

  ChatLoaded chatLoaded(
      {required TextEditingController sendController,
      required TextEditingController searchController,
      required FocusNode textFieldFocus,
      required ScrollController listScrollController,
      required bool isWriting,
      required bool showEmojiPicker,
      required bool isMessageSelected,
      required bool isScrollDown,
      required bool isSearchingMessage,
      required bool isRecordingAudio,
      required User sender,
      required Stream<BuiltList<ChatMessage>> chatMessageList}) {
    return ChatLoaded(
      sendController: sendController,
      searchController: searchController,
      textFieldFocus: textFieldFocus,
      listScrollController: listScrollController,
      isWriting: isWriting,
      showEmojiPicker: showEmojiPicker,
      isMessageSelected: isMessageSelected,
      isScrollDown: isScrollDown,
      isSearchingMessage: isSearchingMessage,
      isRecordingAudio: isRecordingAudio,
      sender: sender,
      chatMessageList: chatMessageList,
    );
  }
}

/// @nodoc
const $ChatRoomState = _$ChatRoomStateTearOff();

/// @nodoc
mixin _$ChatRoomState {
  TextEditingController get sendController =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController sendController) chatInitial,
    required TResult Function(
            TextEditingController sendController,
            TextEditingController searchController,
            FocusNode textFieldFocus,
            ScrollController listScrollController,
            bool isWriting,
            bool showEmojiPicker,
            bool isMessageSelected,
            bool isScrollDown,
            bool isSearchingMessage,
            bool isRecordingAudio,
            User sender,
            Stream<BuiltList<ChatMessage>> chatMessageList)
        chatLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController sendController)? chatInitial,
    TResult Function(
            TextEditingController sendController,
            TextEditingController searchController,
            FocusNode textFieldFocus,
            ScrollController listScrollController,
            bool isWriting,
            bool showEmojiPicker,
            bool isMessageSelected,
            bool isScrollDown,
            bool isSearchingMessage,
            bool isRecordingAudio,
            User sender,
            Stream<BuiltList<ChatMessage>> chatMessageList)?
        chatLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitial value) chatInitial,
    required TResult Function(ChatLoaded value) chatLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitial value)? chatInitial,
    TResult Function(ChatLoaded value)? chatLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatRoomStateCopyWith<ChatRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomStateCopyWith<$Res> {
  factory $ChatRoomStateCopyWith(
          ChatRoomState value, $Res Function(ChatRoomState) then) =
      _$ChatRoomStateCopyWithImpl<$Res>;
  $Res call({TextEditingController sendController});
}

/// @nodoc
class _$ChatRoomStateCopyWithImpl<$Res>
    implements $ChatRoomStateCopyWith<$Res> {
  _$ChatRoomStateCopyWithImpl(this._value, this._then);

  final ChatRoomState _value;
  // ignore: unused_field
  final $Res Function(ChatRoomState) _then;

  @override
  $Res call({
    Object? sendController = freezed,
  }) {
    return _then(_value.copyWith(
      sendController: sendController == freezed
          ? _value.sendController
          : sendController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc
abstract class $ChatInitialCopyWith<$Res>
    implements $ChatRoomStateCopyWith<$Res> {
  factory $ChatInitialCopyWith(
          ChatInitial value, $Res Function(ChatInitial) then) =
      _$ChatInitialCopyWithImpl<$Res>;
  @override
  $Res call({TextEditingController sendController});
}

/// @nodoc
class _$ChatInitialCopyWithImpl<$Res> extends _$ChatRoomStateCopyWithImpl<$Res>
    implements $ChatInitialCopyWith<$Res> {
  _$ChatInitialCopyWithImpl(
      ChatInitial _value, $Res Function(ChatInitial) _then)
      : super(_value, (v) => _then(v as ChatInitial));

  @override
  ChatInitial get _value => super._value as ChatInitial;

  @override
  $Res call({
    Object? sendController = freezed,
  }) {
    return _then(ChatInitial(
      sendController: sendController == freezed
          ? _value.sendController
          : sendController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$ChatInitial implements ChatInitial {
  const _$ChatInitial({required this.sendController});

  @override
  final TextEditingController sendController;

  @override
  String toString() {
    return 'ChatRoomState.chatInitial(sendController: $sendController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChatInitial &&
            (identical(other.sendController, sendController) ||
                const DeepCollectionEquality()
                    .equals(other.sendController, sendController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sendController);

  @JsonKey(ignore: true)
  @override
  $ChatInitialCopyWith<ChatInitial> get copyWith =>
      _$ChatInitialCopyWithImpl<ChatInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController sendController) chatInitial,
    required TResult Function(
            TextEditingController sendController,
            TextEditingController searchController,
            FocusNode textFieldFocus,
            ScrollController listScrollController,
            bool isWriting,
            bool showEmojiPicker,
            bool isMessageSelected,
            bool isScrollDown,
            bool isSearchingMessage,
            bool isRecordingAudio,
            User sender,
            Stream<BuiltList<ChatMessage>> chatMessageList)
        chatLoaded,
  }) {
    return chatInitial(sendController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController sendController)? chatInitial,
    TResult Function(
            TextEditingController sendController,
            TextEditingController searchController,
            FocusNode textFieldFocus,
            ScrollController listScrollController,
            bool isWriting,
            bool showEmojiPicker,
            bool isMessageSelected,
            bool isScrollDown,
            bool isSearchingMessage,
            bool isRecordingAudio,
            User sender,
            Stream<BuiltList<ChatMessage>> chatMessageList)?
        chatLoaded,
    required TResult orElse(),
  }) {
    if (chatInitial != null) {
      return chatInitial(sendController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitial value) chatInitial,
    required TResult Function(ChatLoaded value) chatLoaded,
  }) {
    return chatInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitial value)? chatInitial,
    TResult Function(ChatLoaded value)? chatLoaded,
    required TResult orElse(),
  }) {
    if (chatInitial != null) {
      return chatInitial(this);
    }
    return orElse();
  }
}

abstract class ChatInitial implements ChatRoomState {
  const factory ChatInitial({required TextEditingController sendController}) =
      _$ChatInitial;

  @override
  TextEditingController get sendController =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ChatInitialCopyWith<ChatInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatLoadedCopyWith<$Res>
    implements $ChatRoomStateCopyWith<$Res> {
  factory $ChatLoadedCopyWith(
          ChatLoaded value, $Res Function(ChatLoaded) then) =
      _$ChatLoadedCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController sendController,
      TextEditingController searchController,
      FocusNode textFieldFocus,
      ScrollController listScrollController,
      bool isWriting,
      bool showEmojiPicker,
      bool isMessageSelected,
      bool isScrollDown,
      bool isSearchingMessage,
      bool isRecordingAudio,
      User sender,
      Stream<BuiltList<ChatMessage>> chatMessageList});
}

/// @nodoc
class _$ChatLoadedCopyWithImpl<$Res> extends _$ChatRoomStateCopyWithImpl<$Res>
    implements $ChatLoadedCopyWith<$Res> {
  _$ChatLoadedCopyWithImpl(ChatLoaded _value, $Res Function(ChatLoaded) _then)
      : super(_value, (v) => _then(v as ChatLoaded));

  @override
  ChatLoaded get _value => super._value as ChatLoaded;

  @override
  $Res call({
    Object? sendController = freezed,
    Object? searchController = freezed,
    Object? textFieldFocus = freezed,
    Object? listScrollController = freezed,
    Object? isWriting = freezed,
    Object? showEmojiPicker = freezed,
    Object? isMessageSelected = freezed,
    Object? isScrollDown = freezed,
    Object? isSearchingMessage = freezed,
    Object? isRecordingAudio = freezed,
    Object? sender = freezed,
    Object? chatMessageList = freezed,
  }) {
    return _then(ChatLoaded(
      sendController: sendController == freezed
          ? _value.sendController
          : sendController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      searchController: searchController == freezed
          ? _value.searchController
          : searchController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      textFieldFocus: textFieldFocus == freezed
          ? _value.textFieldFocus
          : textFieldFocus // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      listScrollController: listScrollController == freezed
          ? _value.listScrollController
          : listScrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      isWriting: isWriting == freezed
          ? _value.isWriting
          : isWriting // ignore: cast_nullable_to_non_nullable
              as bool,
      showEmojiPicker: showEmojiPicker == freezed
          ? _value.showEmojiPicker
          : showEmojiPicker // ignore: cast_nullable_to_non_nullable
              as bool,
      isMessageSelected: isMessageSelected == freezed
          ? _value.isMessageSelected
          : isMessageSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isScrollDown: isScrollDown == freezed
          ? _value.isScrollDown
          : isScrollDown // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingMessage: isSearchingMessage == freezed
          ? _value.isSearchingMessage
          : isSearchingMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecordingAudio: isRecordingAudio == freezed
          ? _value.isRecordingAudio
          : isRecordingAudio // ignore: cast_nullable_to_non_nullable
              as bool,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User,
      chatMessageList: chatMessageList == freezed
          ? _value.chatMessageList
          : chatMessageList // ignore: cast_nullable_to_non_nullable
              as Stream<BuiltList<ChatMessage>>,
    ));
  }
}

/// @nodoc

class _$ChatLoaded implements ChatLoaded {
  const _$ChatLoaded(
      {required this.sendController,
      required this.searchController,
      required this.textFieldFocus,
      required this.listScrollController,
      required this.isWriting,
      required this.showEmojiPicker,
      required this.isMessageSelected,
      required this.isScrollDown,
      required this.isSearchingMessage,
      required this.isRecordingAudio,
      required this.sender,
      required this.chatMessageList});

  @override
  final TextEditingController sendController;
  @override
  final TextEditingController searchController;
  @override
  final FocusNode textFieldFocus;
  @override
  final ScrollController listScrollController;
  @override
  final bool isWriting;
  @override
  final bool showEmojiPicker;
  @override
  final bool isMessageSelected;
  @override
  final bool isScrollDown;
  @override
  final bool isSearchingMessage;
  @override
  final bool isRecordingAudio;
  @override //
  final User sender;
  @override
  final Stream<BuiltList<ChatMessage>> chatMessageList;

  @override
  String toString() {
    return 'ChatRoomState.chatLoaded(sendController: $sendController, searchController: $searchController, textFieldFocus: $textFieldFocus, listScrollController: $listScrollController, isWriting: $isWriting, showEmojiPicker: $showEmojiPicker, isMessageSelected: $isMessageSelected, isScrollDown: $isScrollDown, isSearchingMessage: $isSearchingMessage, isRecordingAudio: $isRecordingAudio, sender: $sender, chatMessageList: $chatMessageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChatLoaded &&
            (identical(other.sendController, sendController) ||
                const DeepCollectionEquality()
                    .equals(other.sendController, sendController)) &&
            (identical(other.searchController, searchController) ||
                const DeepCollectionEquality()
                    .equals(other.searchController, searchController)) &&
            (identical(other.textFieldFocus, textFieldFocus) ||
                const DeepCollectionEquality()
                    .equals(other.textFieldFocus, textFieldFocus)) &&
            (identical(other.listScrollController, listScrollController) ||
                const DeepCollectionEquality().equals(
                    other.listScrollController, listScrollController)) &&
            (identical(other.isWriting, isWriting) ||
                const DeepCollectionEquality()
                    .equals(other.isWriting, isWriting)) &&
            (identical(other.showEmojiPicker, showEmojiPicker) ||
                const DeepCollectionEquality()
                    .equals(other.showEmojiPicker, showEmojiPicker)) &&
            (identical(other.isMessageSelected, isMessageSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isMessageSelected, isMessageSelected)) &&
            (identical(other.isScrollDown, isScrollDown) ||
                const DeepCollectionEquality()
                    .equals(other.isScrollDown, isScrollDown)) &&
            (identical(other.isSearchingMessage, isSearchingMessage) ||
                const DeepCollectionEquality()
                    .equals(other.isSearchingMessage, isSearchingMessage)) &&
            (identical(other.isRecordingAudio, isRecordingAudio) ||
                const DeepCollectionEquality()
                    .equals(other.isRecordingAudio, isRecordingAudio)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.chatMessageList, chatMessageList) ||
                const DeepCollectionEquality()
                    .equals(other.chatMessageList, chatMessageList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sendController) ^
      const DeepCollectionEquality().hash(searchController) ^
      const DeepCollectionEquality().hash(textFieldFocus) ^
      const DeepCollectionEquality().hash(listScrollController) ^
      const DeepCollectionEquality().hash(isWriting) ^
      const DeepCollectionEquality().hash(showEmojiPicker) ^
      const DeepCollectionEquality().hash(isMessageSelected) ^
      const DeepCollectionEquality().hash(isScrollDown) ^
      const DeepCollectionEquality().hash(isSearchingMessage) ^
      const DeepCollectionEquality().hash(isRecordingAudio) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(chatMessageList);

  @JsonKey(ignore: true)
  @override
  $ChatLoadedCopyWith<ChatLoaded> get copyWith =>
      _$ChatLoadedCopyWithImpl<ChatLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController sendController) chatInitial,
    required TResult Function(
            TextEditingController sendController,
            TextEditingController searchController,
            FocusNode textFieldFocus,
            ScrollController listScrollController,
            bool isWriting,
            bool showEmojiPicker,
            bool isMessageSelected,
            bool isScrollDown,
            bool isSearchingMessage,
            bool isRecordingAudio,
            User sender,
            Stream<BuiltList<ChatMessage>> chatMessageList)
        chatLoaded,
  }) {
    return chatLoaded(
        sendController,
        searchController,
        textFieldFocus,
        listScrollController,
        isWriting,
        showEmojiPicker,
        isMessageSelected,
        isScrollDown,
        isSearchingMessage,
        isRecordingAudio,
        sender,
        chatMessageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController sendController)? chatInitial,
    TResult Function(
            TextEditingController sendController,
            TextEditingController searchController,
            FocusNode textFieldFocus,
            ScrollController listScrollController,
            bool isWriting,
            bool showEmojiPicker,
            bool isMessageSelected,
            bool isScrollDown,
            bool isSearchingMessage,
            bool isRecordingAudio,
            User sender,
            Stream<BuiltList<ChatMessage>> chatMessageList)?
        chatLoaded,
    required TResult orElse(),
  }) {
    if (chatLoaded != null) {
      return chatLoaded(
          sendController,
          searchController,
          textFieldFocus,
          listScrollController,
          isWriting,
          showEmojiPicker,
          isMessageSelected,
          isScrollDown,
          isSearchingMessage,
          isRecordingAudio,
          sender,
          chatMessageList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitial value) chatInitial,
    required TResult Function(ChatLoaded value) chatLoaded,
  }) {
    return chatLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitial value)? chatInitial,
    TResult Function(ChatLoaded value)? chatLoaded,
    required TResult orElse(),
  }) {
    if (chatLoaded != null) {
      return chatLoaded(this);
    }
    return orElse();
  }
}

abstract class ChatLoaded implements ChatRoomState {
  const factory ChatLoaded(
      {required TextEditingController sendController,
      required TextEditingController searchController,
      required FocusNode textFieldFocus,
      required ScrollController listScrollController,
      required bool isWriting,
      required bool showEmojiPicker,
      required bool isMessageSelected,
      required bool isScrollDown,
      required bool isSearchingMessage,
      required bool isRecordingAudio,
      required User sender,
      required Stream<BuiltList<ChatMessage>> chatMessageList}) = _$ChatLoaded;

  @override
  TextEditingController get sendController =>
      throw _privateConstructorUsedError;
  TextEditingController get searchController =>
      throw _privateConstructorUsedError;
  FocusNode get textFieldFocus => throw _privateConstructorUsedError;
  ScrollController get listScrollController =>
      throw _privateConstructorUsedError;
  bool get isWriting => throw _privateConstructorUsedError;
  bool get showEmojiPicker => throw _privateConstructorUsedError;
  bool get isMessageSelected => throw _privateConstructorUsedError;
  bool get isScrollDown => throw _privateConstructorUsedError;
  bool get isSearchingMessage => throw _privateConstructorUsedError;
  bool get isRecordingAudio => throw _privateConstructorUsedError; //
  User get sender => throw _privateConstructorUsedError;
  Stream<BuiltList<ChatMessage>> get chatMessageList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ChatLoadedCopyWith<ChatLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
