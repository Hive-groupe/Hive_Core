part of 'chat_search_bloc.dart';

@immutable
abstract class ChatSearchEvent {}

class StartChatSearching extends ChatSearchEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ResetChatSearch extends ChatSearchEvent {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class SearchingChats extends ChatSearchEvent {
  final String value;

  SearchingChats({this.value});

  @override
  String toString() => '''
  $runtimeType  {
    - value: $value
  }''';
}
