import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/chat_room_bloc/chat_room_bloc.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/ui/pages/chat_listing_screen/widgets/_ordenar_/cached_image.dart';
import 'package:hive_core/code/ui/pages/chat_roon_info_screen/chat_roon_info_screen.dart';
import 'package:hive_core/code/ui/widgets/appbar.dart';
import 'package:hive_core/code/utils/_ordenar_calls/call_utilities.dart';
import 'package:hive_core/code/utils/constants/hive_const_colors.dart';
import 'package:hive_core/code/utils/othes/permissions_tools.dart';

class ChatAppsBar extends StatelessWidget implements PreferredSizeWidget {
  final ChatRoomBloc chatRoomBloc;
  final BuildContext context;
  final User receiver;

  ChatAppsBar({
    @required this.chatRoomBloc,
    this.context,
    @required this.receiver,
  });

  _goChatInfoScreen() => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ChatRoonInfoScreen(
            receiver: receiver,
          ),
        ),
      );

  _onCall(ChatLoaded state) async =>
      await PermissionsTools.cameraAndMicrophonePermissionsGranted()
          ? CallUtils.dial(
              from: state.sender,
              to: receiver,
              context: context,
            )
          : {};

  Future<void> _confirmDialogBox() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Vaciar chat'), // S.of(context).user_signout),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  Text(
                      '¿Estas seguro de que deseas vaciar el chat?, Se eliminara permanentemente el historial de la combersacion'), // S.of(context).user_settings_close_confirmation_seasion),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text(S.of(context).cancel),
              ),
              FlatButton(
                onPressed: _onEmptyChatRoon,
                child: Text(S.of(context).yes),
              ),
            ],
          );
        });
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
          icon: Icon(
            Icons.more_vert,
            size: 18,
            color: HiveCoreConstColors.greyColor,
          ),
        ));
  }

  _popupMenuButtonChoice(String value) {
    switch (value) {
      case 'contact_view':
        _goChatInfoScreen();
        break;
      case 'files_and_images':
        _goChatInfoScreen();
        break;
      case 'search':
        _startSearching();
        break;
      case 'clean_chat':
        _confirmDialogBox();
        break;
    }
  }

  _onEmptyChatRoon() {
    chatRoomBloc.add(EmptyChatRoon(receiverId: receiver.id));
    Navigator.of(context).pop();
  }

  /**
 * =============================================================================
 * 
 *                   Searching appbar functions
 * 
 * =============================================================================
 */

  void _startSearching() => chatRoomBloc.add(StartChatSearching());

  void _cancelSearch() => chatRoomBloc.add(CancelChatSearch());

  void _resetSearch() => chatRoomBloc.add(ResetChatSearch());

  void _searching(String value) =>
      chatRoomBloc.add(SearchingChats(value: value));

/**
 * =============================================================================
 * 
 *                    Message Selected appbar functions
 * 
 * =============================================================================
 */

  _onUnSelectedMessage() => chatRoomBloc.add(UnselectMessage());

  _onDeleteMessage() => chatRoomBloc.add(DeleteMessage());

  @override
  Widget build(BuildContext context) {
    if (!chatRoomBloc.state.isSearchingMessage &&
        !chatRoomBloc.state.isMessageSelected) {
      return _customAppBar(chatRoomBloc.state);
    } else if (chatRoomBloc.state.isSearchingMessage &&
        !chatRoomBloc.state.isMessageSelected) {
      return _appBarSearching(_cancelSearch, _resetSearch, _searching,
          chatRoomBloc.state.searchController);
    } else if (!chatRoomBloc.state.isSearchingMessage &&
        chatRoomBloc.state.isMessageSelected) {
      return _appBarMessageOptions();
    } else {
      return _customAppBar(chatRoomBloc.state);
    }
  }

  CustomAppBar _customAppBar(ChatLoaded state) {
    return CustomAppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          CupertinoIcons.back,
          color: Colors.grey,
          size: 18,
        ),
      ),
      centerTitle: false,
      title: _avatar(),
      actions: <Widget>[
        IconButton(
          onPressed: () async => _onCall(state),
          icon: Icon(
            CupertinoIcons.video_camera_solid,
            color: HiveCoreConstColors.greyColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.phone_solid,
            color: HiveCoreConstColors.greyColor,
          ),
        ),
        _onShowOptions(),
      ],
    );
  }

  Widget _avatar() {
    return GestureDetector(
      onTap: _goChatInfoScreen,
      child: Container(
        child: Row(
          children: <Widget>[
            Hero(
                tag: 'avatar-${receiver.id}',
                child: Container(
                  // margin: EdgeInsets.all(5),
                  child: CachedImage(
                    receiver.profile.avatar,
                    radius: 40,
                    isRound: true,
                  ),
                )),
            SizedBox(
              width: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              child: Text(
                receiver.username,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  CustomAppBar _appBarSearching(Function cancelSearch, Function resetSearch,
      Function searching, TextEditingController searchController) {
    return CustomAppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () => _cancelSearch(),
        icon: Icon(
          Icons.close,
          color: Colors.grey,
          size: 18,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 10),
        child: TextField(
          controller: searchController,
          onChanged: (String value) => searching(value),
          style:
              new TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
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
          onPressed: () {}, // resetSearch,
          icon: Icon(
            Icons.keyboard_arrow_up,
            color: Colors.grey,
            size: 18,
          ),
        ),
        IconButton(
          onPressed: () {}, // resetSearch,
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey,
            size: 18,
          ),
        ),
      ],
    );
  }

  CustomAppBar _appBarMessageOptions() {
    return CustomAppBar(
      leading: IconButton(
        onPressed: () => _onUnSelectedMessage(),
        icon: Icon(
          Icons.close,
          color: Colors.grey,
          size: 18,
        ),
      ),
      centerTitle: false,
      title: Container(
        child: Text(
          '1',
          style: TextStyle(
            color: HiveCoreConstColors.greyColor,
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.reply,
            color: HiveCoreConstColors.greyColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star_border,
            color: HiveCoreConstColors.greyColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.info,
            color: HiveCoreConstColors.greyColor,
          ),
        ),
        IconButton(
          onPressed: _onDeleteMessage,
          icon: Icon(
            CupertinoIcons.delete_simple,
            color: HiveCoreConstColors.greyColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.content_copy,
            color: HiveCoreConstColors.greyColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.reply,
            color: HiveCoreConstColors.greyColor,
          ),
        ),
      ],
    );
  }

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight + 0);
}
