part of 'chat_list_screen_bloc.dart';

@freezed
class ChatListScreenState with _$ChatListScreenState {
  // ChatListingInitial
  const factory ChatListScreenState.chatListingInitial() = ChatListingInitial;

  // ChatListingError
  const factory ChatListScreenState.chatListingError() = ChatListingError;

  // ChatListingLoading
  const factory ChatListScreenState.chatListingLoading() = ChatListingLoading;

  // ChatListingLoaded
  const factory ChatListScreenState.chatListingLoaded({
    required final Stream<BuiltList<ChatContact>> chatRoomsList,
    required final Stream<BuiltList<ChatRoom>> favoriteChatRoomsList,
    required final String senderId,
  }) = ChatListingLoaded;

  // ChatSearching
  const factory ChatListScreenState.chatSearching({
    required final Stream<BuiltList<User>> userList,
  }) = ChatSearching;
}
