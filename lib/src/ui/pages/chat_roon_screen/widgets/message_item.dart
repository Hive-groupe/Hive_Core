import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/src/controllers/blocs/chat_room_bloc/chat_room_bloc.dart';
import 'package:hive_core/src/models/chat_message.dart';
import 'package:hive_core/src/models/enum/chat_message_type.dart';
import 'package:hive_core/src/ui/pages/chat_image_detail_screen/chat_image_detail_screen.dart';
import 'package:hive_core/src/ui/pages/chat_listing_screen/widgets/_ordenar_/cached_image.dart';
import 'package:hive_core/src/utils/constants/const_colors.dart';

class ChatMessageItem extends StatefulWidget {
  final String currentUserId;

  final BuiltList<ChatMessage> list;
  final int index;

  final ChatMessage message;

  ChatMessageItem(
      {Key key,
      @required this.currentUserId,
      @required this.list,
      @required this.index})
      : message = list[index],
        super(key: key);

  @override
  _ChatMessageItemState createState() => _ChatMessageItemState();
}

class _ChatMessageItemState extends State<ChatMessageItem> {
  ChatRoomBloc _chatBloc;

  @override
  void initState() {
    _chatBloc = context.bloc<ChatRoomBloc>();
    super.initState();
  }

  _onSelectedMessage() =>
      _chatBloc.add(SelectMessage(messageId: widget.message));

  _onLikeMessage() => _chatBloc.add(LikedMessage(chatMessage: widget.message));

  _goImageDetail() => Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ImageDetailScreen(
            list: widget.list,
            messageId: widget.list[widget.index].messageId,
          )));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPressStart: (details) => _onSelectedMessage(),
        onDoubleTap: _onLikeMessage,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 1),
          child: Container(
            alignment: widget.message.senderId == widget.currentUserId
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: widget.message.senderId == widget.currentUserId
                ? senderLayout(widget.message)
                : receiverLayout(widget.message),
          ),
        ));
  }

  getMessage(ChatMessage message) {
    return message.type != ChatMessageType.MESSAGE_TYPE_IMAGE
        ? Text(
            message.message,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          )
        : message.photoUrl != null
            ? GestureDetector(
                onTap: _goImageDetail,
                child: CachedImage(
                  message.photoUrl,
                  height: 250,
                  width: 250,
                  radius: 10,
                ),
              )
            : Text("Url was null");
  }

  getDate(ChatMessage message) {
    return Container(
        // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        child: Text(
      DateFormat('HH:mm').format(message.timestamp),
      style: TextStyle(fontSize: 10, color: HiveCoreConstColors.greyColor),
    ));
  }

  _getReaded(ChatMessage message) {
    return Container(
        // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        child: Icon(Icons.done_all, //done
            size: 15,
            color: HiveCoreConstColors.greyColor));
  }

  Widget senderLayout(ChatMessage message) {
    Radius messageRadius = Radius.circular(10);

    return Container(
      //  margin: EdgeInsets.only(top: 12),
      constraints: BoxConstraints(
          // minWidth: MediaQuery.of(context).size.width * 0.30,
          maxWidth: MediaQuery.of(context).size.width * 0.85),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.only(
          topLeft: messageRadius,
          topRight: messageRadius,
          bottomLeft: messageRadius,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            getMessage(message),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  getDate(message),
                  SizedBox(
                    width: 5,
                  ),
                  _getReaded(message)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget receiverLayout(ChatMessage message) {
    Radius messageRadius = Radius.circular(10);

    return Container(
      // margin: EdgeInsets.only(top: 12),
      constraints: BoxConstraints(
        //minWidth: MediaQuery.of(context).size.width * 0.30,
        maxWidth: MediaQuery.of(context).size.width * 0.85,
      ),
      decoration: BoxDecoration(
        color: HiveCoreConstColors.chatReceiverColor,
        borderRadius: BorderRadius.only(
          bottomRight: messageRadius,
          topRight: messageRadius,
          bottomLeft: messageRadius,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getMessage(message),
            SizedBox(
              height: 5,
            ),
            getDate(message),
          ],
        ),
      ),
    );
  }
}
