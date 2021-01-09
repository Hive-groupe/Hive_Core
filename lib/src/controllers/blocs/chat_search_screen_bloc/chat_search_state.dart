part of 'chat_search_bloc.dart';

@immutable
abstract class ChatSearchState {}

class ChatSearchInitial extends ChatSearchState {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ChatSearchError extends ChatSearchState {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ChatSearchLoading extends ChatSearchState {
  @override
  String toString() => '''
  $runtimeType  {}''';
}

class ChatSearching extends ChatSearchState {
  final BehaviorSubject<BuiltList<User>> userList;

  ChatSearching({this.userList});

  @override
  String toString() => '''
  $runtimeType  {
    - userList: ${userList.toString()}
  }''';
}
