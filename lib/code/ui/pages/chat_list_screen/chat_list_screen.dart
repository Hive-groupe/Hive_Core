import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/chat_list_screen_bloc/chat_list_screen_bloc.dart';
import 'package:hive_core/code/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/data/repositories/chat_message_repository/chat_message_repository.dart';
import 'package:hive_core/code/data/repositories/user_repository/user_repository.dart';
import 'package:hive_core/code/ui/pages/chat_list_screen/widgets/chat_list_appbar.dart';
import 'package:hive_core/code/ui/routes/delivery_navigation.dart';
import 'package:hive_core/code/ui/widgets/banner_size.dart';
import 'package:hive_core/code/ui/widgets/screen_widgets/screen_builders_widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widgets/call_log_list.dart';
import 'widgets/recent_chat_list.dart';
import 'widgets/search_list.dart';

// https://www.youtube.com/watch?v=h-igXZCCrrc
// https://github.com/MarcusNg/flutter_chat_ui
// https://github.com/Ronak99/Skype-Clone
class ChatListScreen extends StatefulWidget {
  const ChatListScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen>
    with TickerProviderStateMixin {
  late AuthenticationRepository _authenticationRepository;
  late UserRepository _userRepository;
  late ChatMessageRepository _chatMessageRepository;

  late ChatListScreenBloc _chatLisScreenBloc;

  late TabController _tabController;
  late List<Tab> _tabs;
  late TextEditingController _searchController;

  @override
  void initState() {
    _authenticationRepository =
        RepositoryProvider.of<AuthenticationRepository>(context);
    _userRepository = RepositoryProvider.of<UserRepository>(context);
    _chatMessageRepository =
        RepositoryProvider.of<ChatMessageRepository>(context);

    _chatLisScreenBloc = ChatListScreenBloc(
      authenticationRepository: _authenticationRepository,
      userRepository: _userRepository,
      chatMessageRepository: _chatMessageRepository,
    )..add(
        GetAllChat(),
      );

    _searchController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _chatLisScreenBloc.close();
    _tabController.dispose();
    _searchController.dispose();
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
        context,
        HiveDeliveryRoutes.route_chat_search_screen,
      );

  @override
  Widget build(BuildContext context) {
    _initTabBar();
    return BannerSize(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<ChatListScreenBloc>(
            create: (BuildContext context) => _chatLisScreenBloc,
          ),
        ],
        child: BlocConsumer<ChatListScreenBloc, ChatListScreenState>(
          bloc: _chatLisScreenBloc,
          listener: (context, state) => state.maybeMap(
            chatListingError: (state) {},
            chatListingInitial: (state) {},
            chatListingLoaded: (state) {},
            chatListingLoading: (state) {},
            chatSearching: (state) {},
            orElse: () {},
          ),
          builder: (context, state) => state.maybeMap(
            chatListingError: (state) => ScreenTypeLayout(
              desktop: _buildErrorMovileView(),
              mobile: _buildErrorMovileView(),
              tablet: _buildErrorMovileView(),
            ),
            chatListingInitial: (state) => ScreenTypeLayout(
              desktop: _buildLoadingMovileView(),
              mobile: _buildLoadingMovileView(),
              tablet: _buildLoadingMovileView(),
            ),
            chatListingLoaded: (state) => ScreenTypeLayout(
              desktop: _buildNotSearchingMovileView(state: state),
              mobile: _buildNotSearchingMovileView(state: state),
              tablet: _buildNotSearchingMovileView(state: state),
            ),
            chatListingLoading: (state) => ScreenTypeLayout(
              desktop: _buildLoadingMovileView(),
              mobile: _buildLoadingMovileView(),
              tablet: _buildLoadingMovileView(),
            ),
            chatSearching: (state) => ScreenTypeLayout(
              desktop: _buildSearchingMovileView(state: state),
              mobile: _buildSearchingMovileView(state: state),
              tablet: _buildSearchingMovileView(state: state),
            ),
            orElse: () => ScreenTypeLayout(
              desktop: _buildErrorMovileView(),
              mobile: _buildErrorMovileView(),
              tablet: _buildErrorMovileView(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildErrorMovileView() {
    return ScreenBuildersWidget.errorScreenBuilder(
      context: context,
      appBar: ChatListAppsBar(
        searchController: _searchController,
        tabs: _tabs,
        tabController: _tabController,
      ),
    );
  }

  Widget _buildLoadingMovileView() {
    return ScreenBuildersWidget.loadingScreenBuilder(
      appBar: ChatListAppsBar(
        searchController: _searchController,
        tabs: _tabs,
        tabController: _tabController,
      ),
      text: 'Cargando chats', // HiveCoreString.of(context).bill_list_loading,
    );
  }

  Widget _buildNotSearchingMovileView({
    required ChatListingLoaded state,
  }) {
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
      ]),
    );
  }

  Widget _buildSearchingMovileView({
    required ChatSearching state,
  }) {
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
