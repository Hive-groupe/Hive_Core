part of 'chat_roon_info_bloc.dart';

@freezed
class ChatRoonInfoEvent with _$ChatRoonInfoEvent {
  // StartChatRoonInfo
  const factory ChatRoonInfoEvent.startChatRoonInfo({
    required final String receiverId,
  }) = StartChatRoonInfo;
}
