import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_core/code/data/models/chat_message.dart';
import 'package:hive_core/code/data/models/enum/chat_message_type.dart';
import 'package:hive_core/code/data/models/user.dart';
import 'package:hive_core/code/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/data/repositories/chat_message_repository/chat_message_repository.dart';
import 'package:hive_core/code/data/repositories/storage_repository/storage_methods.dart';
import 'package:hive_core/code/data/repositories/user_repository/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'chat_room_bloc.freezed.dart';
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
    required final AuthenticationRepository authenticationRepository,
    required final UserRepository userRepository,
    required final ChatMessageRepository chatMessageRepository,
    // required final ImageUploadProvider imageUploadProvider
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        _chatMessageRepository = chatMessageRepository,
        // _imageUploadProvider = imageUploadProvider,
        super(ChatInitial(
          sendController: _searchController,
        )) {
    initState();
  }

  void initState() {
    _isWriting = false;
    _showEmojiPicker = false;
    _isMessageSelected = false;
    _isScrollDown = true;
    _isRecordingAudio = false;
    _textFieldFocus.unfocus();
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
    yield* event.map(
      loadChat: _mapLoadChatRoomToState,
      // Send message envet
      sendTextMessage: _mapSendMessageToState,
      sendAudioMessage: _mapSendAudioMessageToState,
      sendImageMessage: _mapSendImageMessageToState,
      sendStickerMessage: _mapSendStickerMessageToState,
      recordAudio: _mapRecordAudioToState,
      // Scroll event
      moveScrollToDown: _mapMoveScrollToDownToState,
      // Keyboard event
      onTextEditChanged: _mapOnTextEditChangedToState,
      showKeyboard: _mapShowKeyboardToState,
      hideKeyboard: _mapHideKeyboardToState,
      // Emojis event
      hideEmojiContainer: _mapHideEmojiContainerToState,
      onTapBtnEmojis: _mapOnTapBtnEmojisToState,
      addEmoji: _mapAddEmojiToState,
      // message event
      selectMessage: _mapSelectMessageToState,
      unselectMessage: _mapUnselectMessageToState,
      deleteMessage: _mapDeleteMessageToState,
      likedMessage: _mapLikeMessageToState,
      // Search message event
      startChatSearching: _mapStartSearchingToState,
      cancelChatSearch: _mapCancelSearchToState,
      resetChatSearch: _mapResetSearchToState,
      searchingChats: _mapSearchingToState,
      //
      emptyChatRoon: _mapEmptyChatRoonToState,
    );
  }

  Stream<ChatRoomState> _mapLoadChatRoomToState(
    LoadChat event,
  ) async* {
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

  Stream<ChatRoomState> _mapSendMessageToState(
    SendTextMessage event,
  ) async* {
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
    SendAudioMessage event,
  ) async* {
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
    SendImageMessage event,
  ) async* {
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
    SendStickerMessage event,
  ) async* {
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

  Stream<ChatRoomState> _mapRecordAudioToState(
    RecordAudio event,
  ) async* {
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
    MoveScrollToDown event,
  ) async* {
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
    OnTextEditChanged event,
  ) async* {
    try {
      _isWriting = event.writing;

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapShowKeyboardToState(
    ShowKeyboard event,
  ) async* {
    try {
      //  _textFieldFocus.requestFocus();
      //  _showEmojiPicker = false;

      //  yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapHideKeyboardToState(
    HideKeyboard event,
  ) async* {
    try {
      // _textFieldFocus.unfocus();

      // yield* _reloadStatus();
    } catch (_) {}
  }

  /*
 * =============================================================================
 * 
 *                          Emojis event
 * 
 * =============================================================================
 */
  /*Stream<ChatRoomState> _mapShowEmojiContainerToState(
      ShowEmojiContainer event,) async* {
    try {
      _showEmojiPicker = true;
      _textFieldFocus.unfocus();

      yield* _reloadStatus();
    } catch (_) {}
  }*/

  Stream<ChatRoomState> _mapHideEmojiContainerToState(
    HideEmojiContainer event,
  ) async* {
    try {
      _showEmojiPicker = false;

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapOnTapBtnEmojisToState(
    OnTapBtnEmojis event,
  ) async* {
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

  Stream<ChatRoomState> _mapAddEmojiToState(
    AddEmoji event,
  ) async* {
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
  Stream<ChatRoomState> _mapSelectMessageToState(
    SelectMessage event,
  ) async* {
    try {
      _isMessageSelected = true;
      _isSearchingMessage = false;

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapUnselectMessageToState(
    UnselectMessage event,
  ) async* {
    try {
      _isMessageSelected = false;

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapDeleteMessageToState(
    DeleteMessage event,
  ) async* {
    try {
      _chatMessageRepository.removeChatMessage(event.messageId ?? '');
      _isMessageSelected = false;
      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapLikeMessageToState(
    LikedMessage event,
  ) async* {
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
    StartChatSearching event,
  ) async* {
    try {
      _isSearchingMessage = true;
      _showEmojiPicker = false;
      _searchController.text = '';

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapCancelSearchToState(
    CancelChatSearch event,
  ) async* {
    try {
      _isSearchingMessage = false;
      _searchController.text = '';

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapResetSearchToState(
    ResetChatSearch event,
  ) async* {
    try {
      _isSearchingMessage = true;
      _showEmojiPicker = false;
      _searchController.text = '';

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapSearchingToState(
    SearchingChats event,
  ) async* {
    try {
      _isSearchingMessage = true;
      _showEmojiPicker = false;

      yield* _reloadStatus();
    } catch (_) {}
  }

  Stream<ChatRoomState> _mapEmptyChatRoonToState(
    EmptyChatRoon event,
  ) async* {
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
      sendController: _sendController,
      searchController: _searchController,
      textFieldFocus: _textFieldFocus,
      listScrollController: _listScrollController,
      isWriting: _isWriting,
      showEmojiPicker: _showEmojiPicker,
      isMessageSelected: _isMessageSelected,
      isScrollDown: _isScrollDown,
      isSearchingMessage: _isSearchingMessage,
      isRecordingAudio: _isRecordingAudio,

      //
      sender: _sender!,
      chatMessageList: _chatMessageList.stream,
    );
  }

  void uploadImage({
    required final File image,
    required final String receiverId,
    required final String senderId,
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
