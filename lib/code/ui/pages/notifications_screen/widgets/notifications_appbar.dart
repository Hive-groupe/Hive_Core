import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/notifications_bloc/notifications_bloc.dart';

class NotificationsAppsBar extends StatefulWidget
    implements PreferredSizeWidget {
  @override
  _NotificationsAppsBarState createState() => _NotificationsAppsBarState();

  @override
  final Size preferredSize = const Size.fromHeight(50);
}

class _NotificationsAppsBarState extends State<NotificationsAppsBar> {
  // Blocs
  NotificationsBloc _notificationsBloc;

  @override
  void initState() {
    _notificationsBloc = context.bloc<NotificationsBloc>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        cubit: _notificationsBloc,
        listener: (BuildContext context, NotificationsState state) {},
        builder: (BuildContext context, NotificationsState state) {
          return _cupertinaoAppBar();
        });
  }

  CupertinoSliverNavigationBar _cupertinaoAppBar() {
    return CupertinoSliverNavigationBar(
      padding: EdgeInsetsDirectional.only(start: 0),
      leading: Material(
        color: Colors.transparent,
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.grey,
          ),
        ),
      ),
      largeTitle: Text(
        S.of(context).notifications_title,
      ),
      trailing: Material(
        color: Colors.transparent,
      ),
    );
  }
}
