import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/src/controllers/blocs/chat_listing_bloc/chat_listing_bloc.dart';
import 'package:hive_core/src/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/src/repositories/chat_message_repository/chat_message_repository.dart';
import 'package:hive_core/src/repositories/user_repository/user_repository.dart';
import 'package:hive_core/src/ui/pages/chat_listing_screen/widgets/chat_list_appbar.dart';
import 'package:hive_core/src/ui/widgets/screen_widgets/screen_builders_widgets.dart';
import 'package:hive_core/src/utils/constants/const_strings.dart';

import 'widgets/call_log_list.dart';
import 'widgets/recent_chat_list.dart';
import 'widgets/search_list.dart';

// https://www.youtube.com/watch?v=h-igXZCCrrc
// https://github.com/MarcusNg/flutter_chat_ui
// https://github.com/Ronak99/Skype-Clone
class ChatListingScreen extends StatefulWidget {
  const ChatListingScreen({Key key}) : super(key: key);

  @override
  _ChatListingScreenState createState() => _ChatListingScreenState();
}

class _ChatListingScreenState extends State<ChatListingScreen>
    with TickerProviderStateMixin {
  AuthenticationRepository _authenticationRepository;
  UserRepository _userRepository;
  ChatMessageRepository _chatMessageRepository;

  ChatListingBloc _chatListingBloc;

  TabController _tabController;
  List<Tab> _tabs;
  TextEditingController _searchController;

  @override
  void initState() {
    _authenticationRepository = context.repository<AuthenticationRepository>();
    _userRepository = context.repository<UserRepository>();
    _chatMessageRepository = context.repository<ChatMessageRepository>();

    _chatListingBloc = ChatListingBloc(
        authenticationRepository: _authenticationRepository,
        userRepository: _userRepository,
        chatMessageRepository: _chatMessageRepository)
      ..add(GetAllChat());

    _searchController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _chatListingBloc?.close();
    _tabController?.dispose();
    _searchController?.dispose();
    super.dispose();
  }

  _initTabBar() {
    _tabs = [
      new Tab(
        text: 'Chats',
      ),
      new Tab(
        text: 'Llamadas',
      ),
    ];
    _tabController = TabController(
      vsync: this,
      length: _tabs.length,
    );
  }

  void _goChatSearchScreen() => Navigator.pushNamed(
      context, HiveCoreConstString.route_chat_search_screen);

  @override
  Widget build(BuildContext context) {
    _initTabBar();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatListingBloc>(
          create: (BuildContext context) => _chatListingBloc,
        ),
      ],
      child: BlocConsumer(
        cubit: _chatListingBloc,
        listener: (context, state) {},
        builder: (context, state) {
          if (state is ChatListingError) {
            return _buildError();
          } else if (state is ChatListingLoading) {
            return _buildLoading();
          } else if (state is ChatListingLoaded) {
            return _buildNotSearching(state);
          } else if (state is ChatSearching) {
            return _buildSearching(state);
          } else {
            return _buildError();
          }
        },
      ),
    );
  }

  Widget _buildError() {
    return ScreenBuildersWidget.errorScreenBuilder(
      context: context,
      appBar: ChatListAppsBar(
        searchController: _searchController,
        tabs: _tabs,
        tabController: _tabController,
      ),
    );
  }

  Widget _buildLoading() {
    return ScreenBuildersWidget.loadingScreenBuilder(
      appBar: ChatListAppsBar(
        searchController: _searchController,
        tabs: _tabs,
        tabController: _tabController,
      ),
      text: 'Cargando chats', // S.of(context).bill_list_loading,
    );
  }

  Widget _buildNotSearching(ChatListingLoaded state) {
    return Scaffold(
        // backgroundColor: Colors.grey[100],
        appBar: ChatListAppsBar(
          searchController: _searchController,
          tabs: _tabs,
          tabController: _tabController,
        ),
        floatingActionButton: _floatingButton(),
        body: TabBarView(controller: _tabController, children: <Widget>[
          RecentChats(
            chatRoomsList: state.chatRoomsList,
            senderId: state.senderId,
            showStatus: true,
          ),
          CallLogList(),
        ]));
  }

  Widget _buildSearching(ChatSearching state) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: ChatListAppsBar(
        searchController: _searchController,
        tabs: _tabs,
        tabController: _tabController,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              SearchChats(
                userList: state.userList,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _floatingButton() {
    return FloatingActionButton(
      onPressed: _goChatSearchScreen,
      child: Icon(Icons.message),
    );
  }
}
