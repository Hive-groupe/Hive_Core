part of 'chat_roon_info_bloc.dart';

@immutable
abstract class ChatRoonInfoEvent {}

class StartChatRoonInfo extends ChatRoonInfoEvent {
  final String receiverId;

  StartChatRoonInfo({@required this.receiverId});

  @override
  String toString() => '''
  $runtimeType {
    - receiverId: $receiverId
  }''';
}
