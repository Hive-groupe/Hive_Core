part of 'chat_room_bloc.dart';

@freezed
class ChatRoomState with _$ChatRoomState {
  // ChatInitial
  const factory ChatRoomState.chatInitial({
    required final TextEditingController sendController,
  }) = ChatInitial;

  // ChatLoaded
  const factory ChatRoomState.chatLoaded({
    required final TextEditingController sendController,
    required final TextEditingController searchController,
    required final FocusNode textFieldFocus,
    required final ScrollController listScrollController,
    required final bool isWriting,
    required final bool showEmojiPicker,
    required final bool isMessageSelected,
    required final bool isScrollDown,
    required final bool isSearchingMessage,
    required final bool isRecordingAudio,

    //
    required final User sender,
    required final Stream<BuiltList<ChatMessage>> chatMessageList,
  }) = ChatLoaded;
}
