import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/ui/pages/chat_listing_screen/widgets/_ordenar_/cached_image.dart';
import 'package:hive_core/code/ui/pages/chat_listing_screen/widgets/_ordenar_/custom_tile.dart';
import 'package:hive_core/code/ui/pages/chat_roon_screen/chat_roon_screen.dart';
import 'package:hive_core/code/utils/constants/hive_const_colors.dart';

//https://www.youtube.com/watch?v=h-igXZCCrrc
//https://github.com/MarcusNg/flutter_chat_ui

class SearchChats extends StatefulWidget {
  final Stream<BuiltList<User>> userList;

  SearchChats({required this.userList}) : super();

  @override
  _SearchChatsState createState() => _SearchChatsState();
}

class _SearchChatsState extends State<SearchChats> {
  @override
  void initState() {
    super.initState();
  }

  _goChatSrceen(User user) => () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ChatRoonScreen(
            receiver: user,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: StreamBuilder<BuiltList<User>>(
          stream: widget.userList,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data!.length > 0) {
              return _buildList(snapshot.data!);
            } else if (snapshot.hasData && snapshot.data!.length <= 0) {
              return _buildListEmpty();
            } else if (snapshot.hasError) {
              return _buildListError();
            } else {
              return _buildListError();
            }
          }),
    );
  }

  Widget _buildList(BuiltList<User> list) {
    return Container(
      child: Column(
        children: List.generate(
          list.length,
          (index) => _userItem(list[index]),
        ).toList(),
      ),
    );
  }

  Widget _userItem(User user) {
    return CustomTile(
      mini: false,
      onTap: _goChatSrceen(user),
      leading: Hero(
        tag: 'avatar-${user.id}',
        child: Container(
          child: CachedImage(
            user.profile!.avatar ?? '',
            radius: 50,
            isRound: true,
          ),
        ),
        // leading: CircleAvatar(
        //   backgroundImage: NetworkImage(searchedUser.profilePhoto),
        //   backgroundColor: Colors.grey,
        // ),
      ),
      title: Text(
        user.username,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyText1!.color,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'Nombre y apellidos', //user.profile.name,
        style: TextStyle(color: HiveCoreConstColors.greyColor),
      ),
    );
  }

  Widget _buildListEmpty() {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Icon(
              Icons.description,
              size: 50,
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'No hay resultados', //HiveCoreString.of(context).DataList_list_empty,
              textAlign: TextAlign.center,
              /* style: TextStyle(
                fontSize: 25,
                color: Colors.grey.shade400,
              ),*/
            ),
            SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListError() {
    return Container(
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
    );
  }
}
