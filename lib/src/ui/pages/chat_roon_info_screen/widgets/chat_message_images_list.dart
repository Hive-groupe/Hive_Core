import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/src/models/chat_message.dart';
import 'package:rxdart/rxdart.dart';

import 'chat_message_image_item.dart';

class ChatMessageImageList extends StatefulWidget {
  final BehaviorSubject<BuiltList<ChatMessage>> chatMessageList;

  ChatMessageImageList({
    @required this.chatMessageList,
  });

  @override
  _ChatMessageImageListState createState() => _ChatMessageImageListState();
}

class _ChatMessageImageListState extends State<ChatMessageImageList> {
  BehaviorSubject<BuiltList<ChatMessage>> chatMessageList;

  @override
  void initState() {
    chatMessageList = widget.chatMessageList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: chatMessageList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return _buildList(snapshot.data);
        } else if (snapshot.hasError) {
          return _buildListError();
        } else {
          return _buildListLoading();
        }
      },
    );
  }

  Widget _buildList(BuiltList<ChatMessage> list) {
    return GridView.builder(
      itemCount: list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => ChatMessageImageItem(
        list: list,
        index: index,
      ),
    );
  }

  Widget _buildListError() {
    return Container();
  }

  Widget _buildListLoading() {
    return Center(child: CircularProgressIndicator());
  }
}
