import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/ui/widgets/list_widgets/list_builders_widgets.dart';

import '../../../../models/_organizar/chat_contact.dart';
import 'contact_view.dart';

//https://www.youtube.com/watch?v=h-igXZCCrrc
//https://github.com/MarcusNg/flutter_chat_ui

class RecentChats extends StatefulWidget {
  final Stream<BuiltList<ChatContact>> chatRoomsList;
  final String senderId;
  final bool showStatus;

  const RecentChats({
    Key? key,
    required this.chatRoomsList,
    required this.senderId,
    bool? showStatus,
  })  : showStatus = true,
        super(key: key);

  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BuiltList<ChatContact>>(
        stream: widget.chatRoomsList,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!.length > 0) {
            return _buildListLoaded(snapshot.data!);
          } else if (snapshot.hasData && snapshot.data!.length <= 0) {
            return widget.showStatus ? _buildListEmpty() : Container();
          } else if (snapshot.hasError) {
            return widget.showStatus ? _buildListError() : Container();
          } else {
            return widget.showStatus ? _buildListLoading() : Container();
          }
        });
  }

  Widget _buildListEmpty() {
    return ListBuildersWidget.emptyListBuilder(
      context: context,
      onTap: () {},
      imageUrl: null,
      title: null,
      text:
          "${"This is where all the contacts are listed"}\n${"Search for your friends and family to start calling or chatting with them"}", //HiveCoreString.of(context).payroll_list_empty,
    );
  }

  Widget _buildListError() {
    return ListBuildersWidget.errorListBuilder(
      context: context,
    );
  }

  Widget _buildListLoading() {
    return ListBuildersWidget.loadingListBuilder(
      context: context,
      onTap: null,
      imageUrl: null,
      title: null,
      text: null,
    );
  }

  Widget _buildListLoaded(BuiltList<ChatContact> list) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 50,
        left: 10,
        right: 10,
      ),
      child: Column(
        children: List.generate(
          list.length,
          (index) => ContactView(
            contact: list[index],
            senderId: widget.senderId,
          ),
        ).toList(),
      ),
    );
  }
}
