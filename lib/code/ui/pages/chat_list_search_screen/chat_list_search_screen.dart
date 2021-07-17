import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/chat_list_search_screen_bloc/chat_search_bloc.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/ui/widgets/appbar.dart';
import 'package:hive_core/code/ui/constants/hive_const_colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widgets/search_list.dart';

class ChatListSearchScreen extends StatefulWidget {
  const ChatListSearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ChatListSearchScreenState createState() => _ChatListSearchScreenState();
}

class _ChatListSearchScreenState extends State<ChatListSearchScreen>
    with SingleTickerProviderStateMixin {
  late ChatSearchBloc _chatSearchBloc;

  late TextEditingController _searchController;

  @override
  void initState() {
    _chatSearchBloc = ChatSearchBloc(context: context);

    _searchController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _chatSearchBloc.close();
    _searchController.dispose();
    super.dispose();
  }

  void _cancelSearch() {
    Navigator.pop(context);
  }

  void _resetSearch() {
    _searchController.text = '';
    _chatSearchBloc.add(
      ResetChatSearch(),
    );
  }

  void _searching(String value) => _chatSearchBloc.add(
        SearchingChats(value: value),
      );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatSearchBloc>(
          create: (BuildContext context) => _chatSearchBloc,
        ),
      ],
      child: BlocConsumer<ChatSearchBloc, ChatSearchState>(
        bloc: _chatSearchBloc,
        listener: (context, state) => state.maybeMap(
          chatSearchError: (state) {},
          chatSearchInitial: (state) {},
          chatSearchLoading: (state) {},
          chatSearching: (state) {},
          orElse: () {},
        ),
        builder: (context, state) => state.maybeMap(
          chatSearchError: (state) => ScreenTypeLayout(
            desktop: _buildError(),
            mobile: _buildError(),
            tablet: _buildError(),
          ),
          chatSearchInitial: (state) => ScreenTypeLayout(
            desktop: _buildInitial(),
            mobile: _buildInitial(),
            tablet: _buildInitial(),
          ),
          chatSearchLoading: (state) => ScreenTypeLayout(
            desktop: _buildLoading(),
            mobile: _buildLoading(),
            tablet: _buildLoading(),
          ),
          chatSearching: (state) => ScreenTypeLayout(
            desktop: _buildSearching(state: state),
            mobile: _buildSearching(state: state),
            tablet: _buildSearching(state: state),
          ),
          orElse: () => ScreenTypeLayout(
            desktop: _buildError(),
            mobile: _buildError(),
            tablet: _buildError(),
          ),
        ),
      ),
    );
  }

  Widget _buildInitial() {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: _appBarSearching(
        _cancelSearch,
        _resetSearch,
        _searching,
        _searchController,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              // Añadrir lista de recomendados
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildError() {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              Text(
                HiveCoreString.of(context).default_error,
              ),
              Text(
                HiveCoreString.of(context).unknown_error,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: _appBarSearching(
        _cancelSearch,
        _resetSearch,
        _searching,
        _searchController,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Cargando chats',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearching({
    required ChatSearching state,
  }) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: _appBarSearching(
        _cancelSearch,
        _resetSearch,
        _searching,
        _searchController,
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

  CustomAppBar _appBarSearching(
    Function cancelSearch,
    Function resetSearch,
    Function searching,
    TextEditingController searchController,
  ) {
    return CustomAppBar(
      centerTitle: false,
      // automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () => cancelSearch(),
        icon: Icon(
          CupertinoIcons.back,
          color: Colors.grey,
          size: 18,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
          right: 10,
        ),
        child: TextField(
          controller: searchController,
          onChanged: (String value) => searching(value),
          style: new TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color),
          cursorColor: Theme.of(context).textTheme.bodyText1!.color,
          autofocus: true,
          decoration: InputDecoration(
            hintText: "Buscar...",
            hintStyle: TextStyle(
              color: HiveCoreConstColors.separatorColor,
            ),
            border: InputBorder.none,
            focusColor: Colors.white,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).accentColor),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).accentColor),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => resetSearch(),
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
