part of 'chat_room_bloc.dart';

@freezed
class ChatRoomEvent with _$ChatRoomEvent {
  // LoadChat
  const factory ChatRoomEvent.loadChat({
    required final String receiverId,
  }) = LoadChat;

/*
 * =============================================================================
 * 
 *                          Send message envet
 * 
 * =============================================================================
 */

  // SendTextMessage
  const factory ChatRoomEvent.sendTextMessage({
    required final String receiverId,
    required final String message,
  }) = SendTextMessage;

  // SendAudioMessage
  const factory ChatRoomEvent.sendAudioMessage({
    required final String receiverId,
    required final String message,
  }) = SendAudioMessage;

  // SendImageMessage
  const factory ChatRoomEvent.sendImageMessage({
    required final String receiverId,
    required final String message,
    required final File photo,
  }) = SendImageMessage;

  // SendStickerMessage
  const factory ChatRoomEvent.sendStickerMessage({
    required final String receiverId,
    required final String message,
    required final File sticker,
  }) = SendStickerMessage;

  // RecordAudio
  const factory ChatRoomEvent.recordAudio() = RecordAudio;

/*
 * =============================================================================
 * 
 *                          Scroll Controls Event
 * 
 * =============================================================================
 */

// MoveScrollToDown
  const factory ChatRoomEvent.moveScrollToDown() = MoveScrollToDown;

/*
 * =============================================================================
 * 
 *                       Keyboard Controls Event 
 * 
 * =============================================================================
 */

// OnTextEditChanged
  const factory ChatRoomEvent.onTextEditChanged({
    required final bool writing,
  }) = OnTextEditChanged;

// ShowKeyboard
  const factory ChatRoomEvent.showKeyboard() = ShowKeyboard;

// HideKeyboard
  const factory ChatRoomEvent.hideKeyboard() = HideKeyboard;

/*
 * =============================================================================
 * 
 *                       Emoji Controls Event 
 * 
 * =============================================================================
 */

// HideEmojiContainer
  const factory ChatRoomEvent.hideEmojiContainer() = HideEmojiContainer;

  // OnTapBtnEmojis
  const factory ChatRoomEvent.onTapBtnEmojis() = OnTapBtnEmojis;

  // AddEmoji
  const factory ChatRoomEvent.addEmoji({
    required final Emoji emoji,
  }) = AddEmoji;

/*
 * =============================================================================
 * 
 *                           message event
 * 
 * =============================================================================
 */

  // SelectMessage
  const factory ChatRoomEvent.selectMessage({
    required final ChatMessage messageId,
  }) = SelectMessage;

  // UnselectMessage
  const factory ChatRoomEvent.unselectMessage() = UnselectMessage;

  // DeleteMessage
  const factory ChatRoomEvent.deleteMessage({
    required final String? messageId,
  }) = DeleteMessage;

  // LikedMessage
  const factory ChatRoomEvent.likedMessage({
    required final ChatMessage chatMessage,
  }) = LikedMessage;

/*
 * =============================================================================
 * 
 *                           Search message event
 * 
 * =============================================================================
 */

  // StartChatSearching
  const factory ChatRoomEvent.startChatSearching() = StartChatSearching;

  // CancelChatSearch
  const factory ChatRoomEvent.cancelChatSearch() = CancelChatSearch;

  // ResetChatSearch
  const factory ChatRoomEvent.resetChatSearch() = ResetChatSearch;

  // SearchingChats
  const factory ChatRoomEvent.searchingChats({
    required final String value,
  }) = SearchingChats;

  // EmptyChatRoon
  const factory ChatRoomEvent.emptyChatRoon({
    required final String receiverId,
  }) = EmptyChatRoon;
}
