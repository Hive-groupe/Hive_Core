import 'package:flutter/material.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/repositories/chat_message_repository/chat_message_repository.dart';
import 'package:hive_core/code/repositories/user_repository/user_repository.dart';
import 'package:hive_core/code/ui/pages/chat_roon_screen/chat_roon_screen.dart';
import 'package:hive_core/code/utils/constants/hive_const_strings.dart';

import '../../../../models/_organizar/chat_contact.dart';
import '_ordenar_/cached_image.dart';
import '_ordenar_/custom_tile.dart';
import 'last_message_container.dart';
import 'online_dot_indicator.dart';

class ContactView extends StatelessWidget {
  final String senderId;
  final ChatContact contact;

  final UserRepository _userRepository = UserRepositoryFirebaseImpl('users');

  ContactView({
    required this.contact,
    required this.senderId,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: _userRepository.getUserById(contact.uid),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          User user = snapshot.data!;

          return ViewLayout(
            contact: user,
            senderId: senderId,
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class ViewLayout extends StatelessWidget {
  final String senderId;
  final User contact;
  final ChatMessageRepository _chatMethods =
      ChatMessageRepositoryFirebaseImpl(MESSAGES_COLLECTION);

  ViewLayout({
    required this.contact,
    required this.senderId,
  });

  _goChatSrceen(BuildContext context, User user) => () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ChatRoonScreen(
            receiver: user,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    //   final UserProvider userProvider = Provider.of<UserProvider>(context);

    return CustomTile(
      mini: false,
      onTap: _goChatSrceen(context, contact),
      title: Text(
        (contact != null ? contact.profile!.name : null) != null
            ? contact.profile!.name
            : "..",
        style: TextStyle(fontFamily: "Arial", fontSize: 19),
      ),
      subtitle: LastMessageContainer(
        stream: _chatMethods.fetchLastMessageBetween(
          senderId: senderId,
          receiverId: contact.id ?? '',
        ),
      ),
      leading: Container(
        constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
        child: Stack(
          children: <Widget>[
            CachedImage(
              contact.profile!.avatar ?? '',
              radius: 80,
              isRound: true,
            ),
            OnlineDotIndicator(
              uid: contact.id ?? '',
            ),
          ],
        ),
      ),
    );
  }
}
