import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_core/code/models/chat_message.dart';
import 'package:hive_core/code/models/enum/chat_message_type.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/repositories/chat_message_repository/chat_message_repository.dart';
import 'package:hive_core/code/repositories/user_repository/user_repository.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'chat_roon_info_event.dart';
part 'chat_roon_info_state.dart';

class ChatRoonInfoBloc extends Bloc<ChatRoonInfoEvent, ChatRoonInfoState> {
  final BuildContext context;
  AuthenticationRepository _authenticationRepository; // eliminar
  UserRepository _userRepository;
  ChatMessageRepository _chatMessageRepository;

  String currentUserId;

  final reciver = BehaviorSubject<User>();
  final _chatImageMessageList = BehaviorSubject<BuiltList<ChatMessage>>();

  ChatRoonInfoBloc({
    @required this.context,
  }) : super(ChatRoonInfoInitial()) {
    InitState();
  }

  InitState() {
    _authenticationRepository = context.repository<AuthenticationRepository>();
    _userRepository = context.repository<UserRepository>();
    _chatMessageRepository = context.repository<ChatMessageRepository>();
  }

  @override
  Future<void> close() {
    reciver?.close();
    _chatImageMessageList?.close();

    return super.close();
  }

  @override
  Stream<ChatRoonInfoState> mapEventToState(
    ChatRoonInfoEvent event,
  ) async* {
    if (event is StartChatRoonInfo) {
      yield* _mapStartChatRoonInfoToState(event);
    }
  }

  Stream<ChatRoonInfoState> _mapStartChatRoonInfoToState(
      StartChatRoonInfo event) async* {
    try {
      String _reciverId;

      _reciverId = event.receiverId;
      currentUserId =
          currentUserId ?? await _authenticationRepository.getCurrentUserId();
      _userRepository
          .getStreamUserById(_reciverId)
          .listen((event) => reciver.sink.add(event));

      _chatMessageRepository
          .fetchChatMessagesAsStream(
              senderId: currentUserId, receiverId: _reciverId)
          .listen((event) => _chatImageMessageList.sink.add(
              BuiltList<ChatMessage>().rebuild((b) => b
                ..replace(event)
                ..where((ChatMessage doc) =>
                    doc.type == ChatMessageType.MESSAGE_TYPE_IMAGE))));

      yield ChatLoaded(
          reciver: reciver.stream,
          chatImageMessageList: _chatImageMessageList.stream);
    } catch (e) {
      print(e);
    }
  }
}
