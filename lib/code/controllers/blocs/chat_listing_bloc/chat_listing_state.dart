part of 'chat_listing_bloc.dart';

@immutable
abstract class ChatListingState {}

class ChatListingInitial extends ChatListingState {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ChatListingError extends ChatListingState {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ChatListingLoading extends ChatListingState {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ChatListingLoaded extends ChatListingState {
  final Stream<BuiltList<ChatContact>> chatRoomsList;
  final Stream<BuiltList<ChatRoom>> favoriteChatRoomsList;

  final String senderId;

  ChatListingLoaded({
    required this.chatRoomsList,
    required this.favoriteChatRoomsList,
    required this.senderId,
  });

  @override
  String toString() => '''
  $runtimeType  {
    - chatRoomsList: ${chatRoomsList.toString()}
    - favoriteChatRoomsList: ${favoriteChatRoomsList.toString()}
    - senderId: $senderId
  }''';
}

class ChatSearching extends ChatListingState {
  final Stream<BuiltList<User>> userList;

  ChatSearching({required this.userList});

  @override
  String toString() => '''
  $runtimeType  {
    - userList: ${userList.toString()}
  }''';
}
