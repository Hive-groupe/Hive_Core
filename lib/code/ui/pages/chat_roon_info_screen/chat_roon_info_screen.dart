import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/chat_roon_info_bloc/chat_roon_info_bloc.dart';
import 'package:hive_core/code/data/models/user.dart';
import 'package:hive_core/code/ui/constants/hive_const_colors.dart';
import 'package:hive_core/code/ui/constants/hive_const_strings.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widgets/chat_message_images_list.dart';

class ChatRoonInfoScreen extends StatefulWidget {
  final User receiver;

  ChatRoonInfoScreen({
    required this.receiver,
  });

  @override
  _ChatRoonInfoScreenState createState() => _ChatRoonInfoScreenState();
}

class _ChatRoonInfoScreenState extends State<ChatRoonInfoScreen>
    with SingleTickerProviderStateMixin {
  late ChatRoonInfoBloc _chatRoonInfoBloc;

  late ScrollController _scrollController;

  late TabController _tabController;
  late List<Tab> _tabs;

  bool lastStatus = true;

  @override
  void initState() {
    _chatRoonInfoBloc = ChatRoonInfoBloc(context: context)
      ..add(
        StartChatRoonInfo(receiverId: widget.receiver.id ?? ''),
      );

    _tabs = [
      new Tab(
        text: 'Contacto',
      ),
      new Tab(
        text: 'Multimedia',
      ),
      new Tab(
        text: 'Archivos',
      ),
      new Tab(
        text: 'Enlaces',
      ),
    ];
    _tabController = TabController(
      vsync: this,
      length: _tabs.length,
    );
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  _scrollListener() {
    if (isShrink != lastStatus) {
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  bool get isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  Widget _onShowOptions() {
    return PopupMenuButton(
      itemBuilder: (_) => <PopupMenuItem<String>>[
        new PopupMenuItem<String>(
            child: const ListTile(
              //leading: Icon(Icons.exit_to_app),
              title: Text('Ver contacto'),
            ),
            value: 'contact_view'),
        new PopupMenuItem<String>(
            child: const ListTile(
              //leading: Icon(Icons.exit_to_app),
              title: Text('Archivos y imagenes'),
            ),
            value: 'files_and_images'),
        new PopupMenuItem<String>(
            child: const ListTile(
              //leading: Icon(Icons.create),
              title: Text('Buscar'),
            ),
            value: 'search'),
        new PopupMenuItem<String>(
            child: const ListTile(
              //leading: Icon(Icons.create),
              title: Text('Vaciar chat'),
            ),
            value: 'clean_chat'),
      ],
      onSelected: (String value) => _popupMenuButtonChoice(value),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_vert,
          size: 18,
          color: isShrink ? HiveCoreConstColors.greyColor : Colors.white,
        ),
      ),
    );
  }

  _popupMenuButtonChoice(String value) {
    switch (value) {
      case 'contact_view':
        //    _goChatInfoScreen();
        break;
      case 'files_and_images':
        //    _goChatInfoScreen();
        break;
      case 'search':
        //    _setShowMessageOptions(true);
        break;
      case 'clean_chat':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatRoonInfoBloc>(
          create: (BuildContext context) => _chatRoonInfoBloc,
        ),
      ],
      child: BlocConsumer<ChatRoonInfoBloc, ChatRoonInfoState>(
        bloc: _chatRoonInfoBloc,
        listener: (context, state) => state.maybeMap(
          chatLoaded: (state) {},
          chatRoonInfoInitial: (state) {},
          orElse: () {},
        ),
        builder: (context, state) => state.maybeMap(
          chatLoaded: (state) => ScreenTypeLayout(
            desktop: _buildLoadedMovilView(state: state),
            mobile: _buildLoadedMovilView(state: state),
            tablet: _buildLoadedMovilView(state: state),
          ),
          chatRoonInfoInitial: (state) => ScreenTypeLayout(
            desktop: Container(),
            mobile: Container(),
            tablet: Container(),
          ),
          orElse: () => Container(),
        ),
      ),
    );
  }

  Widget _buildLoadedMovilView({
    required ChatLoaded state,
  }) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.width,
              floating: false,
              pinned: true,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  CupertinoIcons.back,
                  color:
                      isShrink ? HiveCoreConstColors.greyColor : Colors.white,
                  size: 18,
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                // centerTitle: true,
                title: Text(
                  widget.receiver.username,
                  style: TextStyle(
                    color: isShrink
                        ? Theme.of(context).textTheme.bodyText1!.color
                        : Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                background: Hero(
                  tag: 'avatar-${widget.receiver.id}',
                  child: CachedNetworkImage(
                    imageUrl: widget.receiver.profile!.avatar ?? '',
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => Image.network(
                      noImageAvailable,
                      height: 25,
                      width: 25,
                      fit: BoxFit.cover,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              actions: [
                _onShowOptions(),
              ],
            ),
            SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(
                TabBar(
                  controller: _tabController,
                  tabs: _tabs,
                  indicatorPadding: EdgeInsets.only(left: 25, right: 25),
                  labelColor: Theme.of(context).textTheme.bodyText1!.color,
                  unselectedLabelColor: Colors.grey,
                ),
              ),
              pinned: true,
            ),
          ];
        },
        body: TabBarView(controller: _tabController, children: <Widget>[
          _body(),
          ChatMessageImageList(
            chatMessageList: state.chatImageMessageList,
          ),
          Center(
            child: Text('Archivos'),
          ),
          Center(
            child: Text('Enlaces'),
          ),
        ]),
      ),
    );
  }

  Widget _body() {
    return Container(
      child: ListView(
        children: [
          _generalSettingsGroup(),
          _infoGroup(),
          _groupsGroup(),
          _onBloquear(),
          _onRepot()
        ],
      ),
    );
  }

  _titleGroup(String title) {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  _generalSettingsGroup() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // _titleGroup('Notificaciones para chats'),
          _isNotificationsActiveHolder(),
          _onNotifications(),
        ],
      ),
    );
  }

  _isNotificationsActiveHolder() {
    return ListTile(
      leading: Container(
        child: Icon(Icons.notifications_none),
      ),
      title: Container(
        child: Text('Silenciar notidicaciones'),
      ),
      trailing: Container(
        child: Switch(
          onChanged: (_) {}, //=> _onChangeNotifications(state),
          value: true,
        ),
      ),
    );
  }

  Widget _onNotifications() {
    return ListTile(
      title: Container(
        child: Text('Notidicaciones personalizadas'),
      ),
    );
  }

  _infoGroup() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleGroup('Inforomaciòn de contacto'),
          _onMail(),
          _onMovile(),
        ],
      ),
    );
  }

  Widget _onMail() {
    return ListTile(
      title: Container(
        child: Text(
          'xxx-xxx-xxx',
        ),
      ),
      subtitle: Container(
        child: Text(
          'Movil',
        ),
      ),
    );
  }

  Widget _onMovile() {
    return ListTile(
      title: Container(
        child: Text(
          widget.receiver.username,
        ),
      ),
      subtitle: Container(
        child: Text('Mail'),
      ),
    );
  }

  _groupsGroup() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _titleGroup('Grupos en comun'),
              Container(
                child: Text('0'),
              )
            ],
          ),
          Container(
            height: 150,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _onBloquear() {
    return ListTile(
      leading: Container(
        child: Icon(Icons.lock, color: Colors.red),
      ),
      title: Container(
        child: Text(
          'Bloquear',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  Widget _onRepot() {
    return ListTile(
      leading: Container(
        child: Icon(Icons.report, color: Colors.red),
      ),
      title: Container(
        child: Text(
          'Rportar contacto',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Theme.of(context)
          .scaffoldBackgroundColor, // ADD THE COLOR YOU WANT AS BACKGROUND.
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
