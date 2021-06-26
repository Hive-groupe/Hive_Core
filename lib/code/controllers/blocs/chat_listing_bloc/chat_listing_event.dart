part of 'chat_listing_bloc.dart';

@immutable
abstract class ChatListingEvent {}

class GetAllChat extends ChatListingEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class GetOnlyOnline extends ChatListingEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class GetOnlyGroups extends ChatListingEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class GetOnlyRequest extends ChatListingEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class StartChatSearching extends ChatListingEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class CancelChatSearch extends ChatListingEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ResetChatSearch extends ChatListingEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class SearchingChats extends ChatListingEvent {
  final String value;

  SearchingChats({required this.value});

  @override
  String toString() => '''
  $runtimeType  {
    - value: $value
  }''';
}
