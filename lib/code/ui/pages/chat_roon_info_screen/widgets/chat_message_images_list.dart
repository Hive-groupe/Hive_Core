import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/models/chat_message.dart';

import 'chat_message_image_item.dart';

class ChatMessageImageList extends StatefulWidget {
  final Stream<BuiltList<ChatMessage>> chatMessageList;

  ChatMessageImageList({
    required this.chatMessageList,
  });

  @override
  _ChatMessageImageListState createState() => _ChatMessageImageListState();
}

class _ChatMessageImageListState extends State<ChatMessageImageList> {
  late Stream<BuiltList<ChatMessage>> chatMessageList;

  @override
  void initState() {
    chatMessageList = widget.chatMessageList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BuiltList<ChatMessage>>(
      stream: chatMessageList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return _buildList(snapshot.data!);
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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
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
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
