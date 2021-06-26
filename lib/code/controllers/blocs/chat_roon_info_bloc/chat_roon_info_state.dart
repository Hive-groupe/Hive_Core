part of 'chat_roon_info_bloc.dart';

@immutable
abstract class ChatRoonInfoState {}

class ChatRoonInfoInitial extends ChatRoonInfoState {}

class ChatLoaded extends ChatRoonInfoInitial {
  final Stream<User> reciver;
  final Stream<BuiltList<ChatMessage>> chatImageMessageList;

  ChatLoaded({
    required this.reciver,
    required this.chatImageMessageList,
  });

  @override
  String toString() => '''
  $runtimeType  {
    - reciver: ${reciver.toString()}
    - chatMessageList: ${chatImageMessageList.toString()}
  }''';
}
