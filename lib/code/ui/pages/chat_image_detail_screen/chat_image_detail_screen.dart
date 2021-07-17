import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/data/models/chat_message.dart';
import 'package:hive_core/code/data/models/enum/chat_message_type.dart';
import 'package:hive_core/code/ui/widgets/banner_size.dart';
import 'package:hive_core/code/ui/constants/hive_const_colors.dart';

class ImageDetailScreen extends StatefulWidget {
  final BuiltList<ChatMessage> list;
  final String messageId;

  ImageDetailScreen({
    Key? key,
    required this.list,
    required this.messageId,
  }) : super(key: key);

  @override
  _ImageDetailScreenState createState() => _ImageDetailScreenState();
}

class _ImageDetailScreenState extends State<ImageDetailScreen> {
  late BuiltList<ChatMessage> _list;
  late PageController _pageController;

  @override
  void initState() {
    _list = widget.list.rebuild(
      (b) => b
        ..where((doc) => doc.type == ChatMessageType.MESSAGE_TYPE_IMAGE)
        ..reverse(),
    );

    _pageController = PageController(
      initialPage: _list.indexWhere(
        (doc) => doc.messageId == widget.messageId,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
        onPressed: () {}, // Si se pone el onPressed no despliega el menu
        icon: Icon(
          Icons.more_vert,
          size: 18,
          color: HiveCoreConstColors.greyColor,
        ),
      ),
    );
  }

  _popupMenuButtonChoice(String value) {
    switch (value) {
      case 'contact_view':
        break;
      case 'files_and_images':
        break;
      case 'search':
        break;
      case 'clean_chat':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BannerSize(
        body: Scaffold(
      appBar: _appBar(),
      backgroundColor: Colors.black,
      body: _imageListBuild(),
    ));
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.black54,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.star_border),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.reply,
            color: HiveCoreConstColors.greyColor,
          ),
        ),
        _onShowOptions(),
      ],
    );
  }

  Widget _imageListBuild() {
    return Container(
        child: PageView.builder(
      controller: _pageController,
      itemCount: _list.length,
      itemBuilder: (context, index) => _itemImage(index),
    ));
  }

  Widget _itemImage(int index) {
    return Center(
      child: InteractiveViewer(
        child: CachedNetworkImage(
          imageUrl: _list[index].photoUrl ?? '',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
