part of 'chat_room_bloc.dart';

abstract class ChatRoomState {
  late TextEditingController sendController;
  late TextEditingController searchController;
  late FocusNode textFieldFocus;
  late ScrollController listScrollController;

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
  final Stream<BuiltList<ChatMessage>> chatMessageList;

  ChatLoaded({required this.sender, required this.chatMessageList});

  @override
  String toString() => '''
  $runtimeType  {
    - currentUserId: ${sender.toString()}
    - chatMessageList: ${chatMessageList.toString()}
  }''';
}
