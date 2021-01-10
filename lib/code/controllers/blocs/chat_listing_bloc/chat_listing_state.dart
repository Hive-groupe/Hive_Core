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
  final BehaviorSubject<BuiltList<ChatContact>> chatRoomsList;
  final BehaviorSubject<BuiltList<ChatRoom>> favoriteChatRoomsList;

  final String senderId;

  ChatListingLoaded({
    this.chatRoomsList,
    this.favoriteChatRoomsList,
    this.senderId,
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
  final BehaviorSubject<BuiltList<User>> userList;

  ChatSearching({this.userList});

  @override
  String toString() => '''
  $runtimeType  {
    - userList: ${userList.toString()}
  }''';
}
