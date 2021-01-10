import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/chat_listing_bloc/chat_listing_bloc.dart';
import 'package:hive_core/code/ui/pages/chat_roon_screen/chat_roon_screen.dart';
//import 'package:hive_core/code/ui/pages/chat_screen/chat_screen.dart';

//https://www.youtube.com/watch?v=h-igXZCCrrc
//https://github.com/MarcusNg/flutter_chat_ui
class FavoriteContactItem extends StatelessWidget {
  final int index;
  ChatListingBloc _chatListingBloc;

  FavoriteContactItem({
    Key key,
    this.index,
  }) : super(key: key);

  _goChatSrceen(BuildContext context) => () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ChatRoonScreen(
            receiver: null,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        cubit: _chatListingBloc,
        listener: (context, state) {},
        builder: (context, state) {
          return _build(context);
        });
  }

  Widget _build(BuildContext context) {
    return GestureDetector(
      onTap: _goChatSrceen(context),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/dc/9e/dc/dc9edc5b2aa27a10e2957896f0fb4a16.jpg'), //AssetImage(favorites[index].photoUrl),
            ),
            SizedBox(height: 6.0),
            Text(
              'rrrrererererer', // favorites[index].username,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
