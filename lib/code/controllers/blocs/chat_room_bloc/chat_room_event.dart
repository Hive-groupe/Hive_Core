part of 'chat_room_bloc.dart';

@immutable
abstract class ChatRoomEvent {}

class LoadChat extends ChatRoomEvent {
  final String receiverId;
  LoadChat({required this.receiverId});
}

/*
 * =============================================================================
 * 
 *                          Send message envet
 * 
 * =============================================================================
 */
class SendTextMessage extends ChatRoomEvent {
  final String receiverId;
  final String message;

  SendTextMessage({required this.receiverId, required this.message});

  @override
  String toString() => '''
  $runtimeType {
    - receiverId: $receiverId
    - message: $message
  }''';
}

class SendAudioMessage extends ChatRoomEvent {
  final String receiverId;
  final String message;

  SendAudioMessage({
    required this.receiverId,
    required this.message,
  });

  @override
  String toString() => '''
  $runtimeType {
    - receiverId: $receiverId
    - message: $message
  }''';
}

class SendImageMessage extends ChatRoomEvent {
  final String receiverId;
  final String message;
  final File photo;

  SendImageMessage({
    required this.receiverId,
    required this.message,
    required this.photo,
  });

  @override
  String toString() => '''
  $runtimeType {
    - receiverId: $receiverId
    - message: $message
  }''';
}

class SendStickerMessage extends ChatRoomEvent {
  final String receiverId;
  final String message;
  final File sticker;

  SendStickerMessage({
    required this.receiverId,
    required this.message,
    required this.sticker,
  });

  @override
  String toString() => '''
  $runtimeType {
    - receiverId: $receiverId
    - message: $message
  }''';
}

class RecordAudio extends ChatRoomEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

/*
 * =============================================================================
 * 
 *                          Scroll Controls Event
 * 
 * =============================================================================
 */
class MoveScrollToDown extends ChatRoomEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

/*
 * =============================================================================
 * 
 *                       Keyboard Controls Event 
 * 
 * =============================================================================
 */

class OnTextEditChanged extends ChatRoomEvent {
  final bool writing;

  OnTextEditChanged({required this.writing});

  @override
  String toString() => '''
  $runtimeType  {}''';
}

/* class ShowKeyboard extends ChatRoomEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
} */

/* class HideKeyboard extends ChatRoomEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}*/

/*
 * =============================================================================
 * 
 *                       Emoji Controls Event 
 * 
 * =============================================================================
 */

// class ShowEmojiContainer extends ChatRoomEvent {}

class HideEmojiContainer extends ChatRoomEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class OnTapBtnEmojis extends ChatRoomEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class AddEmoji extends ChatRoomEvent {
  final Emoji emoji;

  AddEmoji({required this.emoji});

  @override
  String toString() => '''
  $runtimeType  {}''';
}

/*
 * =============================================================================
 * 
 *                           message event
 * 
 * =============================================================================
 */

class SelectMessage extends ChatRoomEvent {
  final ChatMessage messageId;

  SelectMessage({required this.messageId});

  @override
  String toString() => '''
  $runtimeType  {}''';
}

class UnselectMessage extends ChatRoomEvent {
  UnselectMessage();

  @override
  String toString() => '''
  $runtimeType  {}''';
}

class DeleteMessage extends ChatRoomEvent {
  final String? messageId;

  DeleteMessage({this.messageId});

  @override
  String toString() => '''
  $runtimeType  {}''';
}

class LikedMessage extends ChatRoomEvent {
  final ChatMessage chatMessage;

  LikedMessage({required this.chatMessage});

  @override
  String toString() => '''
  $runtimeType  {}''';
}

/*
 * =============================================================================
 * 
 *                           Search message event
 * 
 * =============================================================================
 */
class StartChatSearching extends ChatRoomEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class CancelChatSearch extends ChatRoomEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ResetChatSearch extends ChatRoomEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class SearchingChats extends ChatRoomEvent {
  final String value;

  SearchingChats({required this.value});

  @override
  String toString() => '''
  $runtimeType  {
    - value: $value
  }''';
}

class EmptyChatRoon extends ChatRoomEvent {
  final String receiverId;

  EmptyChatRoon({required this.receiverId});

  @override
  String toString() => '''
  $runtimeType {
  }''';
}
