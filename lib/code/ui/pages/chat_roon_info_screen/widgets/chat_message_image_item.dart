import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/data/models/chat_message.dart';
import 'package:hive_core/code/ui/pages/chat_image_detail_screen/chat_image_detail_screen.dart';
import 'package:hive_core/code/ui/pages/chat_list_screen/widgets/_ordenar_/cached_image.dart';

class ChatMessageImageItem extends StatefulWidget {
  final BuiltList<ChatMessage> list;
  final int index;

  final ChatMessage message;

  ChatMessageImageItem({
    Key? key,
    required this.list,
    required this.index,
  })  : message = list[index],
        super(key: key);

  @override
  _ChatMessageImageItemState createState() => _ChatMessageImageItemState();
}

class _ChatMessageImageItemState extends State<ChatMessageImageItem> {
  _goImageDetail() => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ImageDetailScreen(
          list: widget.list,
          messageId: widget.list[widget.index].messageId ?? '',
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _goImageDetail,
      child: Container(
        margin: EdgeInsets.all(0.5),
        child: Container(
          child: CachedImage(
            widget.message.photoUrl ?? '',
          ),
        ),
      ),
    );
  }
}
