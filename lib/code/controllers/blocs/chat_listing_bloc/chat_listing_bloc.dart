import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:hive_core/code/models/chat_room.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/repositories/chat_message_repository/chat_message_repository.dart';
import 'package:hive_core/code/repositories/user_repository/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import '../../../models/_organizar/chat_contact.dart';

part 'chat_listing_event.dart';
part 'chat_listing_state.dart';

// https://github.com/Ronak99/Skype-Clone
class ChatListingBloc extends Bloc<ChatListingEvent, ChatListingState> {
  late final AuthenticationRepository _authenticationRepository;
  late final UserRepository _userRepository;
  late final ChatMessageRepository _chatMessageRepository;

  late String? currentUserId;

  final _searchList = BehaviorSubject<BuiltList<User>>();
  final _chatRoomsListController =
      BehaviorSubject<BuiltList<ChatContact>>(); //<BuiltList<ChatRoom>>();
  final _favoriteChatRoomsListController =
      BehaviorSubject<BuiltList<ChatRoom>>();

  ChatListingBloc({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
    required ChatMessageRepository chatMessageRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        _chatMessageRepository = chatMessageRepository,
        super(
          ChatListingInitial(),
        );

  @override
  Future<void> close() {
    _searchList.close();
    _chatRoomsListController.close();
    _favoriteChatRoomsListController.close();

    return super.close();
  }

  @override
  Stream<ChatListingState> mapEventToState(
    ChatListingEvent event,
  ) async* {
    if (event is GetAllChat) {
      yield* _mapGetAllChatToState(event);
    } else if (event is GetOnlyOnline) {
      yield* _mapGetOnlyOnlineToState(event);
    } else if (event is GetOnlyGroups) {
      yield* _mapGetOnlyGroupsToState(event);
    } else if (event is GetOnlyRequest) {
      yield* _mapGetOnlyRequestToState(event);
    } else if (event is StartChatSearching) {
      yield* _mapStartSearchingToState(event);
    } else if (event is CancelChatSearch) {
      yield* _mapCancelSearchToState(event);
    } else if (event is ResetChatSearch) {
      yield* _mapResetSearchToState(event);
    } else if (event is SearchingChats) {
      yield* _mapSearchingToState(event);
    }
  }

  Stream<ChatListingState> _mapGetAllChatToState(
    GetAllChat event,
  ) async* {
    try {
      yield ChatListingLoading();

      currentUserId =
          currentUserId ?? await _authenticationRepository.getCurrentUserId();

      _chatMessageRepository
          .findContactStream(
            userId: currentUserId ?? '',
          )
          .listen(
            (event) => _chatRoomsListController.sink.add(event),
          );

      yield ChatListingLoaded(
        chatRoomsList: _chatRoomsListController,
        favoriteChatRoomsList: _favoriteChatRoomsListController.stream,
        senderId: currentUserId ?? '',
      );
    } catch (_) {
      yield ChatListingError();
    }
  }

  Stream<ChatListingState> _mapGetOnlyOnlineToState(
    GetOnlyOnline event,
  ) async* {
    try {
      yield ChatListingLoading();
      // yield ChatListingLoaded(chats: _chats, favorites: _faborites);
    } catch (_) {
      yield ChatListingError();
    }
  }

  Stream<ChatListingState> _mapGetOnlyGroupsToState(
    GetOnlyGroups event,
  ) async* {
    try {
      yield ChatListingLoading();
      // yield ChatListingLoaded(chats: _chats, favorites: _faborites);
    } catch (_) {
      yield ChatListingError();
    }
  }

  Stream<ChatListingState> _mapGetOnlyRequestToState(
    GetOnlyRequest event,
  ) async* {
    try {
      yield ChatListingLoading();
      // yield ChatListingLoaded(chats: _chats, favorites: _faborites);
    } catch (_) {
      yield ChatListingError();
    }
  }

  Stream<ChatListingState> _mapStartSearchingToState(
    StartChatSearching event,
  ) async* {
    try {
      yield ChatListingLoading();
      currentUserId =
          currentUserId ?? await _authenticationRepository.getCurrentUserId();
      _searchList.sink.add(
        BuiltList<User>(),
      );
      yield ChatSearching(
        userList: _searchList.stream,
      );
    } catch (_) {
      yield ChatListingError();
    }
  }

  Stream<ChatListingState> _mapCancelSearchToState(
    CancelChatSearch event,
  ) async* {
    try {
      yield ChatListingLoading();
      _searchList.sink.add(
        BuiltList<User>(),
      );
      yield ChatListingLoaded(
        chatRoomsList: _chatRoomsListController.stream,
        favoriteChatRoomsList: _favoriteChatRoomsListController.stream,
        senderId: currentUserId ?? '',
      );
    } catch (_) {
      yield ChatListingError();
    }
  }

  Stream<ChatListingState> _mapResetSearchToState(
    ResetChatSearch event,
  ) async* {
    try {
      yield ChatListingLoading();
      currentUserId =
          currentUserId ?? await _authenticationRepository.getCurrentUserId();
      _searchList.sink.add(
        BuiltList<User>(),
      );
      yield ChatSearching(
        userList: _searchList.stream,
      );
    } catch (_) {
      yield ChatListingError();
    }
  }

  Stream<ChatListingState> _mapSearchingToState(
    SearchingChats event,
  ) async* {
    try {
      String _query;

      currentUserId =
          currentUserId ?? await _authenticationRepository.getCurrentUserId();
      _query = event.value.toLowerCase();

      _userRepository.fetchAllUsers(currentUserId: currentUserId ?? '').listen(
            (event) => _searchList.sink.add(
              BuiltList<User>().rebuild(
                (b) => b
                  ..replace(event)
                  ..where(
                    (User user) {
                      if (_query != '') {
                        String? _getId = user.id;
                        String? _getUsername = user.username.toLowerCase();
                        String? _getName = user.profile!.name.toLowerCase();
                        String? _getFirstname =
                            user.profile!.firstname.toLowerCase();
                        String? _getSecondname =
                            user.profile!.secondname != null
                                ? user.profile!.secondname!.toLowerCase()
                                : null;

                        bool _matchesId = isUserInContacts(_getId ?? '');
                        bool _matchesUsername = _getUsername.contains(_query);
                        bool _matchesName = _getName.contains(_query);
                        bool _matchesFirstname = _getFirstname.contains(_query);
                        bool _matchesSecondname = _getSecondname != null
                            ? _getSecondname.contains(_query)
                            : false;

                        print(_matchesId);

                        return (_matchesId &&
                            (_matchesUsername ||
                                _matchesName ||
                                _matchesFirstname ||
                                _matchesSecondname));
                      } else {
                        return false;
                      }
                    },
                  ),
              ),
            ),
          );

      yield ChatSearching(
        userList: _searchList,
      );
    } catch (_) {
      yield ChatListingError();
    }
  }

  bool isUserInContacts(
    String getId,
  ) {
    bool _isUserInContacts = false;
    _chatMessageRepository
        .findContactStream(userId: currentUserId ?? '')
        .listen(
          (event) => event.forEach((contact) {
            if (!_isUserInContacts) {
              _isUserInContacts = getId == contact.uid;
            }
          }),
        );
    return _isUserInContacts;
  }
}
