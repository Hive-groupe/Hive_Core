import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/chat_room_bloc/chat_room_bloc.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/repositories/chat_message_repository/chat_message_repository.dart';
import 'package:hive_core/code/repositories/user_repository/user_repository.dart';
import 'package:hive_core/code/ui/widgets/banner_size.dart';

import 'widgets/apps_bar.dart';
import 'widgets/control_bar.dart';
import 'widgets/emijiPiker.dart';
import 'widgets/messages_list.dart';

class ChatRoonScreen extends StatefulWidget {
  final User receiver;

  ChatRoonScreen({@required this.receiver});

  @override
  _ChatRoonScreenState createState() => _ChatRoonScreenState();
}

class _ChatRoonScreenState extends State<ChatRoonScreen> {
  AuthenticationRepository _authenticationRepository;
  UserRepository _userRepository;
  ChatMessageRepository _chatMessageRepository;

  // Providers
  // ImageUploadProvider _imageUploadProvider;

  ChatRoomBloc _chatBloc;

  TextEditingController _sendController;
  TextEditingController _searchController;
  FocusNode _textFieldFocus;
  ScrollController _listScrollController;

  bool isShowMessageOptions = false;
  bool _isScrollDown = true;

  @override
  void initState() {
    _authenticationRepository = context.repository<AuthenticationRepository>();
    _userRepository = context.repository<UserRepository>();
    _chatMessageRepository = context.repository<ChatMessageRepository>();

    // Providers
    // _imageUploadProvider = Provider.of<ImageUploadProvider>(context);

    _sendController = TextEditingController();
    _searchController = TextEditingController();
    _textFieldFocus = FocusNode();
    _listScrollController = ScrollController();
    _listScrollController.addListener(_scrollListener);

    _chatBloc = ChatRoomBloc(
      _sendController, _searchController,
      _textFieldFocus, _listScrollController,
      authenticationRepository: _authenticationRepository,
      userRepository: _userRepository,
      chatMessageRepository: _chatMessageRepository,
      // imageUploadProvider: _imageUploadProvider
    )..add(LoadChat(receiverId: widget.receiver.id));

    super.initState();
  }

  @override
  void dispose() {
    _chatBloc?.close();
    _sendController?.dispose();
    _searchController?.dispose();
    _textFieldFocus?.dispose();
    _listScrollController?.dispose();
    super.dispose();
  }

  _scrollListener() {
    setState(() {
      if (_listScrollController.position.pixels ==
          _listScrollController.position.minScrollExtent) {
        // you are at bottom position
        _isScrollDown = true;
      } else {
        // you are at top position
        _isScrollDown = false;
      }
    });
  }

  _moveScrollToDown() => _chatBloc.add(MoveScrollToDown());

  @override
  Widget build(BuildContext context) {
    return BannerSize(
        body: MultiBlocProvider(
            providers: [
          BlocProvider<ChatRoomBloc>(
            create: (BuildContext context) => _chatBloc,
          ),
        ],
            child: BlocConsumer(
              cubit: _chatBloc,
              listener: (context, state) {},
              builder: (context, state) {
                if (state is ChatInitial) {
                  return Container();
                } else if (state is ChatLoaded) {
                  return _build(state);
                } else {
                  return Container();
                }
              },
            )));
  }

  Widget _build(ChatLoaded state) {
    return Scaffold(
      //backgroundColor: Colors.grey[100], //Colors.deepOrange.shade300, //Theme.of(context).primaryColor,

      appBar: ChatAppsBar(
        chatRoomBloc: _chatBloc,
        context: context,
        receiver: widget.receiver,
      ),

      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Flexible(
              child: Stack(
                children: [
                  MessageList(
                    currentUserId: state.sender.id,
                    chatMessageList: state.chatMessageList,
                    scrollController: _listScrollController,
                  ),
                  !_isScrollDown ? _btnDown() : Container(),
                ],
              ),
            ),
            ChatControlsBar(
              receiver: widget.receiver,
            ),
            _chatBloc.state.showEmojiPicker
                ? Container(child: EmojiPiker())
                : Container(),
          ],
        ),
      ),
    );
  }

  Widget _btnDown() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 30,
        margin: EdgeInsets.only(bottom: 12, right: 12),
        child: FloatingActionButton(
            onPressed: _moveScrollToDown,
            backgroundColor: Colors.grey,
            child: Icon(Icons.keyboard_arrow_down,
                color: Theme.of(context).hintColor)),
      ),
    );
  }
}
