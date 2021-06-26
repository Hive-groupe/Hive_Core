import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/chat_search_screen_bloc/chat_search_bloc.dart';
import 'package:hive_core/code/ui/widgets/appbar.dart';
import 'package:hive_core/code/utils/constants/hive_const_colors.dart';

import 'widgets/search_list.dart';

class ChatSearchScreen extends StatefulWidget {
  const ChatSearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ChatSearchScreenState createState() => _ChatSearchScreenState();
}

class _ChatSearchScreenState extends State<ChatSearchScreen>
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
      child: BlocConsumer(
        bloc: _chatSearchBloc,
        listener: (context, state) {},
        builder: (context, state) {
          if (state is ChatSearchInitial) {
            return _buildInitial();
          } else if (state is ChatSearchError) {
            return _buildError();
          } else if (state is ChatSearchLoading) {
            return _buildLoading();
          } else if (state is ChatSearching) {
            return _buildSearching(state);
          } else {
            return _buildError();
          }
        },
      ),
    );
  }

  Widget _buildInitial() {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: _appBarSearching(
          _cancelSearch, _resetSearch, _searching, _searchController),
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
          _cancelSearch, _resetSearch, _searching, _searchController),
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

  Widget _buildSearching(ChatSearching state) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: _appBarSearching(
          _cancelSearch, _resetSearch, _searching, _searchController),
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

  CustomAppBar _appBarSearching(Function cancelSearch, Function resetSearch,
      Function searching, TextEditingController searchController) {
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
