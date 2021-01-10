import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/models/chat_room.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/repositories/user_repository/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'chat_search_event.dart';
part 'chat_search_state.dart';

class ChatSearchBloc extends Bloc<ChatSearchEvent, ChatSearchState> {
  final BuildContext context;

  // Repositorys
  AuthenticationRepository _authenticationRepository;
  UserRepository _userRepository;

  String currentUserId;

  final _searchList = BehaviorSubject<BuiltList<User>>();
  final _chatRoomsListController =
      BehaviorSubject<QuerySnapshot>(); //<BuiltList<ChatRoom>>();
  final _favoriteChatRoomsListController =
      BehaviorSubject<BuiltList<ChatRoom>>();

  ChatSearchBloc({
    @required this.context,
  })  : assert(context != null),
        super(ChatSearchInitial()) {
    initState();
  }

  initState() {
    _authenticationRepository = context.repository<AuthenticationRepository>();
    _userRepository = context.repository<UserRepository>();
  }

  @override
  Future<void> close() {
    _searchList?.close();
    _chatRoomsListController?.close();
    _favoriteChatRoomsListController?.close();

    return super.close();
  }

  @override
  Stream<ChatSearchState> mapEventToState(
    ChatSearchEvent event,
  ) async* {
    if (event is StartChatSearching) {
      yield* _mapStartSearchingToState(event);
    } else if (event is ResetChatSearch) {
      yield* _mapResetSearchToState(event);
    } else if (event is SearchingChats) {
      yield* _mapSearchingToState(event);
    }
  }

  Stream<ChatSearchState> _mapStartSearchingToState(
      StartChatSearching event) async* {
    try {
      yield ChatSearchLoading();
      currentUserId =
          currentUserId ?? await _authenticationRepository.getCurrentUserId();
      _searchList.sink.add(BuiltList<User>());
      yield ChatSearching(userList: _searchList.stream);
    } catch (_) {
      yield ChatSearchError();
    }
  }

  Stream<ChatSearchState> _mapResetSearchToState(ResetChatSearch event) async* {
    try {
      yield ChatSearchLoading();
      currentUserId =
          currentUserId ?? await _authenticationRepository.getCurrentUserId();
      _searchList.sink.add(BuiltList<User>());
      yield ChatSearching(userList: _searchList.stream);
    } catch (_) {
      yield ChatSearchError();
    }
  }

  Stream<ChatSearchState> _mapSearchingToState(SearchingChats event) async* {
    try {
      String _query;

      currentUserId =
          currentUserId ?? await _authenticationRepository.getCurrentUserId();
      _query = event.value.toLowerCase();

      _userRepository.fetchAllUsers(currentUserId: currentUserId).listen(
          (event) => _searchList.sink.add(BuiltList<User>().rebuild((b) => b
            ..replace(event)
            ..where((User user) {
              if (_query != '') {
                String _getUsername = user.username.toLowerCase();
                String _getName = user.profile.name.toLowerCase();
                String _getFirstname = user.profile.firstname.toLowerCase();
                String _getSecondname = user.profile.secondname != null
                    ? user.profile.secondname.toLowerCase()
                    : null;

                bool _matchesUsername = _getUsername.contains(_query);
                bool _matchesName = _getName.contains(_query);
                bool _matchesFirstname = _getFirstname.contains(_query);
                bool _matchesSecondname = _getSecondname != null
                    ? _getSecondname.contains(_query)
                    : false;

                return (_matchesUsername ||
                    _matchesName ||
                    _matchesFirstname ||
                    _matchesSecondname);
              } else {
                return false;
              }
            }))));

      yield ChatSearching(userList: _searchList);
    } catch (_) {
      yield ChatSearchError();
    }
  }
}
