part of 'chat_roon_info_bloc.dart';

@freezed
class ChatRoonInfoState with _$ChatRoonInfoState {
  // ChatRoonInfoInitial
  const factory ChatRoonInfoState.chatRoonInfoInitial() = ChatRoonInfoInitial;

  // ChatLoaded
  const factory ChatRoonInfoState.chatLoaded({
    required final Stream<User> reciver,
    required final Stream<BuiltList<ChatMessage>> chatImageMessageList,
  }) = ChatLoaded;
}
