import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/src/models/chat_message.dart';
import 'package:rxdart/rxdart.dart';

import 'message_item.dart';

class MessageList extends StatefulWidget {
  final String currentUserId;
  final BehaviorSubject<BuiltList<ChatMessage>> chatMessageList;
  final ScrollController scrollController;

  MessageList(
      {@required this.currentUserId,
      @required this.chatMessageList,
      @required this.scrollController});

  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  String currentUserId;
  BehaviorSubject<BuiltList<ChatMessage>> chatMessageList;
  ScrollController _listScrollController;

  @override
  void initState() {
    currentUserId = widget.currentUserId;
    chatMessageList = widget.chatMessageList;
    _listScrollController = widget.scrollController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: chatMessageList,
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          return _buildList(snapshot.data, currentUserId);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _buildList(BuiltList<ChatMessage> list, String currentUserId) {
    // SchedulerBinding.instance.addPostFrameCallback((_) {
    //   _listScrollController.animateTo(
    //     _listScrollController.position.minScrollExtent,
    //     duration: Duration(milliseconds: 250),
    //     curve: Curves.easeInOut,
    //   );
    // });
    return ListView.builder(
      padding: EdgeInsets.all(10),
      controller: _listScrollController,
      reverse: true,
      itemCount: list.length,
      itemBuilder: (context, index) =>
          // mention the arrow syntax if you get the time
          _getItem(index, list),
    );
  }

  Widget _getItem(
    int index,
    BuiltList<ChatMessage> list,
  ) {
    String item = index.toString();
    return Dismissible(
        // Cada Dismissible debe contener una llave. Las llaves permiten a Flutter
        // identificar de manera única los Widgets.
        key: Key(item),
        // También debemos proporcionar una función que diga a nuestra aplicación
        // qué hacer después de que un elemento ha sido eliminado.
        onDismissed: (direction) {
          // Remueve el elemento de nuestro data source.
          setState(() {
            list.rebuild((b) => b..removeAt(index));
          });

          // Muestra un snackbar! Este snackbar tambien podría contener acciones "Undo".
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text("$item dismissed")));
        },
        child: ChatMessageItem(
          currentUserId: currentUserId,
          list: list,
          index: index,
        ));
  }
}
