part of 'chat_list_screen_bloc.dart';

@freezed
class ChatListScreenEvent with _$ChatListScreenEvent {
  // GetAllChat
  const factory ChatListScreenEvent.getAllChat() = GetAllChat;

  // GetOnlyOnline
  const factory ChatListScreenEvent.getOnlyOnline() = GetOnlyOnline;

  // GetOnlyGroups
  const factory ChatListScreenEvent.getOnlyGroups() = GetOnlyGroups;

  // GetOnlyRequest
  const factory ChatListScreenEvent.getOnlyRequest() = GetOnlyRequest;

  // StartChatSearching
  const factory ChatListScreenEvent.startChatSearching() = StartChatSearching;

  // CancelChatSearch
  const factory ChatListScreenEvent.cancelChatSearch() = CancelChatSearch;

  // ResetChatSearch
  const factory ChatListScreenEvent.resetChatSearch() = ResetChatSearch;

  // SearchingChats
  const factory ChatListScreenEvent.searchingChats({
    required final String value,
  }) = SearchingChats;
}
