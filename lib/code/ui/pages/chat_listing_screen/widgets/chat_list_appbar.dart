import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/chat_listing_bloc/chat_listing_bloc.dart';
import 'package:hive_core/code/ui/widgets/appbar.dart';
import 'package:hive_core/code/utils/constants/hive_const_colors.dart';
import 'package:hive_core/code/utils/constants/hivre_const_icons.dart';

class ChatListAppsBar extends StatefulWidget implements PreferredSizeWidget {
  final TabController tabController;
  final List<Tab> tabs;
  final TextEditingController searchController;

  ChatListAppsBar(
      {@required this.tabController,
      @required this.tabs,
      @required this.searchController});

  @override
  _ChatListAppsBarState createState() => _ChatListAppsBarState();

  @override
  final Size preferredSize = const Size.fromHeight(100);
}

class _ChatListAppsBarState extends State<ChatListAppsBar> {
  // Blocs
  ChatListingBloc _chatListingBloc;

  @override
  void initState() {
    _chatListingBloc = context.bloc<ChatListingBloc>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _startSearching() {
    widget.searchController.text = '';
    _chatListingBloc.add(StartChatSearching());
  }

  void _searching(String value) =>
      _chatListingBloc.add(SearchingChats(value: value));

  void _cancelSearch() {
    _chatListingBloc.add(CancelChatSearch());
    widget.searchController.text = '';
  }

  void _resetSearch() {
    widget.searchController.text = '';
    _chatListingBloc.add(ResetChatSearch());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      cubit: _chatListingBloc,
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ChatListingError) {
          return _cupertinaoAppBar();
        } else if (state is ChatListingLoading) {
          return _cupertinaoAppBar();
        } else if (state is ChatListingLoaded) {
          return _appBarNotSearching();
        } else if (state is ChatSearching) {
          return _appBarSearching();
        } else {
          return _cupertinaoAppBar();
        }
      },
    );
  }

  CupertinoSliverNavigationBar _cupertinaoAppBar() {
    return CupertinoSliverNavigationBar(
      padding: EdgeInsetsDirectional.only(start: 0),
      leading: Material(
        color: Colors.transparent,
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: HiveCoreConstIcons.btnBack,
        ),
      ),
      largeTitle: Text(
        'Chats', //  S.of(context).hours_list_title,
      ),
      /*    trailing: Material(
        color: Colors.transparent,
        child: Container(
          child: IconButton(
            onPressed: _onShowMenu,
            icon: ConstIcons.btnSettings,
          ),
        ),
      ),*/
    );
  }

  AppBar _appBarNotSearching() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        'Chats', // S.of(context).bill_list_title,
        style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyText1.color,
            fontWeight: FontWeight.w600),
      ),
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: HiveCoreConstIcons.btnBack,
      ),
      actions: <Widget>[
        Container(
          child: IconButton(
            onPressed: _startSearching,
            icon: Icon(
              HiveCoreConstIconData.search,
              color: Colors.grey,
              size: 18,
            ), // ConstIcons.btnSettings,
          ),
        ),
      ],
      bottom: TabBar(
        controller: widget.tabController,
        tabs: widget.tabs,
        indicatorPadding: EdgeInsets.only(left: 25, right: 25),
        labelColor: Theme.of(context).textTheme.bodyText1.color,
        unselectedLabelColor: Colors.grey,
      ),
    );
  }

  CustomAppBar _appBarSearching() {
    return CustomAppBar(
      centerTitle: false,
      // automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () => _cancelSearch(),
        icon: HiveCoreConstIcons.btnBack,
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 10),
        child: TextField(
          controller: widget.searchController,
          onChanged: (String value) => _searching(value),
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
          cursorColor: Theme.of(context).textTheme.bodyText1.color,
          autofocus: true,
          decoration: InputDecoration(
            hintText: "Buscar...",
            hintStyle: TextStyle(
              color: HiveCoreConstColors.separatorColor,
            ),
            border: InputBorder.none,
            focusColor: Colors.white,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).accentColor)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).accentColor)),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: _resetSearch,
          icon: Icon(
            Icons.clear,
            color: Colors.grey,
            size: 18,
          ),
        ),
      ],
    );
  }
}
