part of 'chat_room_bloc.dart';

abstract class ChatRoomState {
  TextEditingController sendController;
  TextEditingController searchController;
  FocusNode textFieldFocus;
  ScrollController listScrollController;

  bool isWriting = false;
  bool showEmojiPicker = false;
  bool isMessageSelected = false;
  bool isScrollDown = true;
  bool isSearchingMessage = false;
  bool isRecordingAudio = false;
}

class ChatInitial extends ChatRoomState {}

class ChatLoaded extends ChatRoomState {
  final User sender;
  final BehaviorSubject<BuiltList<ChatMessage>> chatMessageList;

  ChatLoaded({@required this.sender, @required this.chatMessageList});

  @override
  String toString() => '''
  $runtimeType  {
    - currentUserId: ${sender.toString()}
    - chatMessageList: ${chatMessageList.toString()}
  }''';
}
