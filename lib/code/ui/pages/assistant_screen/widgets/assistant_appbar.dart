import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/assistant_bloc/assistant_bloc.dart';

class AssistantAppsBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _AssistantAppsBarState createState() => _AssistantAppsBarState();

  @override
  final Size preferredSize = const Size.fromHeight(50);
}

class _AssistantAppsBarState extends State<AssistantAppsBar> {
  // Blocs
  AssistantBloc _assistantBloc;

  @override
  void initState() {
    _assistantBloc = context.bloc<AssistantBloc>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        cubit: _assistantBloc,
        listener: (BuildContext context, AssistantState state) {},
        builder: (BuildContext context, AssistantState state) {
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
        'Assistant', //  S.of(context).project_list_title,
      ),
      trailing: Material(
        color: Colors.transparent,
        /*   child: Container(
          child: IconButton(
            onPressed: _onShowMenu,
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          ),
        ),*/
      ),
    );
  }
}
