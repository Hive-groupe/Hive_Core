part of 'chat_search_bloc.dart';

@freezed
class ChatSearchEvent with _$ChatSearchEvent {
  // StartChatSearching
  const factory ChatSearchEvent.startChatSearching() = StartChatSearching;

  // ResetChatSearch
  const factory ChatSearchEvent.resetChatSearch() = ResetChatSearch;

  // SearchingChats
  const factory ChatSearchEvent.searchingChats({
    required final String value,
  }) = SearchingChats;
}
