part of 'chat_search_bloc.dart';

@freezed
class ChatSearchState with _$ChatSearchState {
  // ChatSearchInitial
  const factory ChatSearchState.chatSearchInitial() = ChatSearchInitial;

  // ChatSearchError
  const factory ChatSearchState.chatSearchError() = ChatSearchError;

  // ChatSearchLoading
  const factory ChatSearchState.chatSearchLoading() = ChatSearchLoading;

  // ChatSearching
  const factory ChatSearchState.chatSearching({
    required final Stream<BuiltList<User>> userList,
  }) = ChatSearching;
}
