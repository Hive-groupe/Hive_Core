import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_core/code/models/chat_message.dart';
import 'package:hive_core/code/models/enum/chat_message_type.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/repositories/chat_message_repository/chat_message_repository.dart';
import 'package:hive_core/code/repositories/storage_repository/storage_methods.dart';
import 'package:hive_core/code/repositories/user_repository/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'chat_room_event.dart';
part 'chat_room_state.dart';

// https://www.youtube.com/watch?v=h-igXZCCrrc
// https://github.com/MarcusNg/flutter_chat_ui
// https://github.com/Ronak99/Skype-Clone
// https://medium.com/@richard.ng/whatsapp-clone-with-flutter-in-a-week-3a65195fa080
class ChatRoomBloc extends Bloc<ChatRoomEvent, ChatRoomState> {
  // Repositorys
  AuthenticationRepository _authenticationRepository;
  UserRepository _userRepository;
  ChatMessageRepository _chatMessageRepository;

  // Providers
  //final ImageUploadProvider _imageUploadProvider;

  // Controllers
  final TextEditingController _sendController;
  final TextEditingController _searchController;
  final FocusNode _textFieldFocus;
  final ScrollController _listScrollController;

  // Values
  bool _isWriting = false;
  bool _showEmojiPicker = false;
  bool _isMessageSelected = false;
  bool _isScrollDown = true;
  bool _isSearchingMessage = false;
  bool _isRecordingAudio = false;

  late String? _senderId;
  late User? _sender;
  final _chatMessageList = BehaviorSubject<BuiltList<ChatMessage>>();

  ChatRoomBloc(
    this._sendController,
    this._searchController,
    this._textFieldFocus,
    this._listScrollController, {
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
    required ChatMessageRepository chatMessageRepository,
    // required ImageUploadProvider imageUploadProvider
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        _chatMessageRepository = chatMessageRepository,
        // _imageUploadProvider = imageUploadProvider,
        super(ChatInitial()
          ..sendController = TextEditingController()
          ..searchController = TextEditingController()
          ..textFieldFocus = FocusNode()
          ..listScrollController = ScrollController()
          ..isWriting = false
          ..showEmojiPicker = false
          ..isMessageSelected = false
          ..isScrollDown = true
          ..isSearchingMessage = false) {
    initState();
  }

  @override
  Future<void> close() {
    _chatMessageList.close();

    return super.close();
  }

  @override
  Stream<ChatRoomState> mapEventToState(
    ChatRoomEvent event,
  ) async* {
    if (event is LoadChat) {
      yield* _mapLoadChatRoomToState(event);
    } else if (event is SendTextMessage) {
      yield* _mapSendMessageToState(event);
    } else if (event is SendAudioMessage) {
      yield* _mapSendAudioMessageToState(event);
    } else if (event is SendImageMessage) {
      yield* _mapSendImageMessageToState(event);
    } else if (event is SendStickerMessage) {
      yield* _mapSendStickerMessageToState(event);
    } else if (event is RecordAudio) {
      yield* _mapRecordAudioToState(event);
    }

/**
 * =============================================================================
 * 
 *                           Scroll event
 * 
 * =============================================================================
 */
    else if (event is MoveScrollToDown) {
      yield* _mapMoveScrollToDownToState(event);
    }
/**
 * =============================================================================
 * 
 *                           Keyboard event
 * 
 * =============================================================================
 */
    else if (event is OnTextEditChanged) {
      yield* _mapOnTextEditChangedToState(event);
    } /*else if (event is ShowKeyboard) {
      yield* _mapShowKeyboardToState(event);
    } else if (event is HideKeyboard) {
      yield* _mapHideKeyboardToState(event);
    }*/

/**
 * =============================================================================
 * 
 *                          Emojis event
 * 
 * =============================================================================
 */
    /*else if (event is ShowEmojiContainer) {
      yield* _mapShowEmojiContainerToState(event);
    }*/
    else if (event is HideEmojiContainer) {
      yield* _mapHideEmojiContainerToState(event);
    } else if (event is OnTapBtnEmojis) {
      yield* _mapOnTapBtnEmojisToState(event);
    } else if (event is AddEmoji) {
      yield* _mapAddEmojiToState(event);
    }

    /**
 * =============================================================================
 * 
 *                           message event
 * 
 * =============================================================================
 */
    else if (event is SelectMessage) {
      yield* _mapSelectMessageToState(event);
    } else if (event is UnselectMessage) {
      yield* _mapUnselectMessageToState(event);
    } else if (event is DeleteMessage) {
      yield* _mapDeleteMessageToState(event);
    } else if (event is LikedMessage) {
      yield* _mapLikeMessageToState(event);
    }

/**
 * =============================================================================
 * 
 *                           Search message event
 * 
 * =============================================================================
 */
    else if (event is StartChatSearching) {
      yield* _mapStartSearchingToState(event);
    } else if (event is CancelChatSearch) {
      yield* _mapCancelSearchToState(event);
    } else if (event is ResetChatSearch) {
      yield* _mapResetSearchToState(event);
    } else if (event is SearchingChats) {
      yield* _mapSearchingToState(event);
    }
//=================================

    else if (event is EmptyChatRoon) {
      yield* _mapEmptyChatRoonToState(event);
    }
  }

  Stream<ChatRoomState> _mapLoadChatRoomToState(LoadChat event) async* {
    try {
      String _reciverId;

      _senderId =
          _senderId ?? await _authenticationRepository.getCurrentUserId();
      _sender = _sender ?? await _userRepository.getUserById(_senderId ?? '');
      _reciverId = event.receiverId;

      _chatMessageRepository
          .fetchChatMessagesAsStream(
              senderId: _senderId ?? '', receiverId: _reciverId)
          .listen(
            (event) => _chatMessageList.sink.add(event),
          );

      yield* _reloadStatus();
    } catch (e) {
      print(e);
    }
  }

  Stream<ChatRoomState> _mapSendMessageToState(SendTextMessage event) async* {
    try {
      String _message = event.message;
      if (_message != null && _message != '') {
        String _reciverId;
        ChatMessageType _type;
        ChatMessage _chatMessage;

        _reciverId = event.receiverId;
        _type = ChatMessageType.MESSAGE_TYPE_TEXT;
        _senderId =
            _senderId ?? await _authenticationRepository.getCurrentUserId();
        _chatMessage = ChatMessage((b) => b
          ..senderId = _senderId
          ..receiverId = _reciverId
          ..timestamp = DateTime.now().toUtc()
          ..type = _type // ChatMessageType.MESSAGE_TYPE_TEXT,
          ..message = _message);

        _chatMessageRepository.addChatMessage(_chatMessage);

        _resetControls();
        yield* _reloadStatus();
      }
    } catch (e) {
      print(e);
    }
  }

  Stream<ChatRoomState> _mapSendAudioMessageToState(
      SendAudioMessage event) async* {
    /*try {
      File _photo = event.photo;
      if (_photo != null) {
        String _reciverId;

        _reciverId = event.receiverId;

        _senderId =
            _senderId ?? await _authenticationRepository.geCurrentUserId();

        uploadImage(
            image: _photo,
            receiverId: _reciverId,
            senderId: _senderId,
            imageUploadProvider: event.imageUploadProvider);

        _resetControls();
        yield* _reloadStatus();
      }
    } catch (e) {
      print(e);
    }*/
  }

  Stream<ChatRoomState> _mapSendImageMessageToState(
      SendImageMessage event) async* {
    try {
      File _photo = event.photo;
      if (_photo != null) {
        String _reciverId;

        _reciverId = event.receiverId;

        _senderId =
            _senderId ?? await _authenticationRepository.getCurrentUserId();

        uploadImage(
          image: _photo,
          receiverId: _reciverId,
          senderId: _senderId ?? '',
        );

        _resetControls();
        yield* _reloadStatus();
      }
    } catch (e) {
      print(e);
    }
  }

  Stream<ChatRoomState> _mapSendStickerMessageToState(
      SendStickerMessage event) async* {
    /*try {
      File _photo = event.photo;
      if (_photo != null) {
        String _reciverId;

        _reciverId = event.receiverId;

        _senderId =
            _senderId ?? await _authenticationRepository.geCurrentUserId();

        uploadImage(
            image: _photo,
            receiverId: _reciverId,
            senderId: _senderId,
            imageUploadProvider: event.imageUploadProvider);

        _resetControls();
        yield* _reloadStatus();
      }
    } catch (e) {
      print(e);
    }*/
  }

  Stream<ChatRoomState> _mapRecordAudioToState(RecordAudio event) async* {
    try {
      _isRecordingAudio = true;
      yield* _reloadStatus();
    } catch (_) {}
  }

  /*
 * =============================================================================
 * 
 *                           Scroll event
 * 
 * =============================================================================
 */
  Stream<ChatRoomState> _mapMoveScrollToDownToState(
      MoveScrollToDown event) async* {
    try {
      _moveScrollToDown();
      yield* _reloadStatus();
    } catch (_) {}
  }

/*
 * =============================================================================
 * 
 *                           Keyboard event
 * 
 * =============================================================================
 */

  Stream<ChatRoomState> _mapOnTextEditChangedToState(
      OnTextEditChanged event) async* {
    try {
      _isWriting = event.writing;

      yield* _reloadStatus();
    } catch (_) {}
  }

  /*Stream<ChatRoomState> _mapShowKeyboardToState(ShowKeyboard event) async* {
    try {
      _textFieldFocus.requestFocus();
      _showEmojiPicker = false;

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapHideKeyboardToState(HideKeyboard event) async* {
    try {
      _textFieldFocus.unfocus();

      yield* _reloadStatus();
    } catch (_) {}
  }*/

  /*
 * =============================================================================
 * 
 *                          Emojis event
 * 
 * =============================================================================
 */
  /*Stream<ChatRoomState> _mapShowEmojiContainerToState(
      ShowEmojiContainer event) async* {
    try {
      _showEmojiPicker = true;
      _textFieldFocus.unfocus();

      yield* _reloadStatus();
    } catch (_) {}
  }*/

  Stream<ChatRoomState> _mapHideEmojiContainerToState(
      HideEmojiContainer event) async* {
    try {
      _showEmojiPicker = false;

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapOnTapBtnEmojisToState(OnTapBtnEmojis event) async* {
    try {
      if (!_showEmojiPicker) {
        // keyboard is visible
        _textFieldFocus.unfocus();
        _showEmojiPicker = true;
      } else {
        //keyboard is hidden
        _textFieldFocus.requestFocus();
        _showEmojiPicker = false;
      }

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapAddEmojiToState(AddEmoji event) async* {
    try {
      _isWriting = true;
      _sendController.text = _sendController.text + event.emoji.emoji;

      yield* _reloadStatus();
    } catch (_) {}
  }

  /*
 * =============================================================================
 * 
 *                           message event
 * 
 * =============================================================================
 */
  Stream<ChatRoomState> _mapSelectMessageToState(SelectMessage event) async* {
    try {
      _isMessageSelected = true;
      _isSearchingMessage = false;

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapUnselectMessageToState(
      UnselectMessage event) async* {
    try {
      _isMessageSelected = false;

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapDeleteMessageToState(DeleteMessage event) async* {
    try {
      _chatMessageRepository.removeChatMessage(event.messageId ?? '');
      _isMessageSelected = false;
      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapLikeMessageToState(LikedMessage event) async* {
    try {
      print('Message liked');
      // ChatMessage _message = event.chatMessage;
      //_message.isLiked = true;
      // _chatMessageRepository.updateMessage(_message.toJson(), event.chatMessage.id);
    } catch (_) {}
  }

/*
 * =============================================================================
 * 
 *                           Search message event
 * 
 * =============================================================================
 */
  Stream<ChatRoomState> _mapStartSearchingToState(
      StartChatSearching event) async* {
    try {
      _isSearchingMessage = true;
      _showEmojiPicker = false;
      _searchController.text = '';

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapCancelSearchToState(CancelChatSearch event) async* {
    try {
      _isSearchingMessage = false;
      _searchController.text = '';

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapResetSearchToState(ResetChatSearch event) async* {
    try {
      _isSearchingMessage = true;
      _showEmojiPicker = false;
      _searchController.text = '';

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapSearchingToState(SearchingChats event) async* {
    try {
      _isSearchingMessage = true;
      _showEmojiPicker = false;

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapEmptyChatRoonToState(EmptyChatRoon event) async* {
    try {
      String _reciverId;

      _reciverId = event.receiverId;
      _senderId ?? await _authenticationRepository.getCurrentUserId();

      _chatMessageRepository.emptyChat(
        senderId: _senderId ?? '',
        receiverId: _reciverId,
      );
    } catch (_) {}
  }

/*
 * =============================================================================
 * 
 *                          Tools
 * 
 * =============================================================================
 */
  void initState() {
    _isWriting = false;
    _showEmojiPicker = false;
    _isMessageSelected = false;
    _isScrollDown = true;
    _isRecordingAudio = false;
    _textFieldFocus.unfocus();
  }

  _resetControls() {
    _isWriting = false;
    _showEmojiPicker = false;
    _isMessageSelected = false;
    _isRecordingAudio = false;
    _sendController.text = "";
    _moveScrollToDown();
  }

  _moveScrollToDown() {
    _listScrollController.animateTo(
      _listScrollController.initialScrollOffset,
      curve: Curves.linear,
      duration: Duration(milliseconds: 300),
    );
    _isScrollDown = true;
  }

  Stream<ChatRoomState> _reloadStatus() async* {
    yield ChatLoaded(
      sender: _sender!,
      chatMessageList: _chatMessageList.stream,
    )
      ..sendController = _sendController
      ..searchController = _searchController
      ..textFieldFocus = _textFieldFocus
      ..listScrollController = _listScrollController
      ..isWriting = _isWriting
      ..showEmojiPicker = _showEmojiPicker
      ..isMessageSelected = _isMessageSelected
      ..isScrollDown = _isScrollDown
      ..isSearchingMessage = _isSearchingMessage
      ..isRecordingAudio = _isRecordingAudio;
  }

  void uploadImage({
    required File image,
    required String receiverId,
    required String senderId,
  }) async {
// -----------------------------
    final StorageMethods _storageMethods = StorageMethods();
// -----------------------------

    // Set some loading value to db and show it to user
    // _imageUploadProvider.setToLoading();

    // Get url from the image bucket
    String url = await _storageMethods.uploadImageToStorage(image) ?? '';

    // Hide loading
    //  _imageUploadProvider.setToIdle();

    _chatMessageRepository.addChatImageMessage(url, receiverId, senderId);
  }
}
