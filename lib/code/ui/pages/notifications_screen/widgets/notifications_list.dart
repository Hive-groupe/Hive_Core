import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/ui/widgets/list_widgets/list_builders_widgets.dart';

class NotificationsList extends StatefulWidget {
  final bool showStatus;
  final Stream<BuiltList<Widget>> notificationsList;

  NotificationsList({
    Key? key,
    bool? showStatus,
    required this.notificationsList,
  })  : this.showStatus = showStatus ?? true,
        super(key: key);

  @override
  _NotificationsListState createState() => _NotificationsListState();
}

class _NotificationsListState extends State<NotificationsList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BuiltList<Widget>>(
        stream: widget.notificationsList,
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
      imageUrl: HiveCoreString.of(context).notifications_assets_images_empty,
      title: '',
      text: HiveCoreString.of(context).notifications_list_empty,
    );
  }

  Widget _buildListError() {
    return ListBuildersWidget.errorListBuilder(
      context: context,
      title: HiveCoreString.of(context).notifications_list_error,
    );
  }

  Widget _buildListLoading() {
    return ListBuildersWidget.loadingListBuilder(
      context: context,
      onTap: () {},
      imageUrl: HiveCoreString.of(context).notifications_assets_images_loading,
      title: '',
      text: HiveCoreString.of(context).notifications_list_loading,
    );
  }

  Widget _buildListLoaded(BuiltList<Widget> list) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        children: List.generate(
          list.length,
          (index) => list[index],
        ).toList(),
      ),
    );
  }
}
