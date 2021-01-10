import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/chat_listing_bloc/chat_listing_bloc.dart';
import 'package:hive_core/code/models/chat_room.dart';

import 'favorite_contacts_item.dart';
//import 'package:hive_core/code/ui/pages/chat_screen/chat_screen.dart';

//https://www.youtube.com/watch?v=h-igXZCCrrc
//https://github.com/MarcusNg/flutter_chat_ui

class FavoriteContactsList extends StatefulWidget {
  @override
  _FavoriteContactsListState createState() => _FavoriteContactsListState();
}

class _FavoriteContactsListState extends State<FavoriteContactsList> {
  ChatListingBloc _chatListingBloc;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        cubit: _chatListingBloc,
        listener: (context, state) {
          if (state is ChatListingLoaded) {
          } else {}
        },
        builder: (context, state) {
          if (state is ChatListingLoaded) {
            return _buildLoaded(state);
          } else {
            return Container();
          }
        });
  }

  Widget _buildLoaded(ChatListingLoaded state) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          _headerHolder(),
          StreamBuilder<BuiltList<ChatRoom>>(
              //       stream: state.chatRoomsList,
              builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data.length > 0) {
              return _buildList(snapshot.data);
            } else if (snapshot.hasData && snapshot.data.length <= 0) {
              return _buildListEmpty();
            } else if (snapshot.hasError) {
              return _buildListError();
            } else {
              return _buildListError();
            }
          })
        ],
      ),
    );
  }

  Widget _headerHolder() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Favoritos',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.more_horiz,
            ),
            iconSize: 30.0,
            color: Colors.grey,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildList(BuiltList<ChatRoom> list) {
    return Container(
      height: 100.0,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) => FavoriteContactItem(
                index: index,
              )),
    );
  }

  Widget _buildListError() {
    return Container();
  }

  Widget _buildListEmpty() {
    return Container();
  }
}
