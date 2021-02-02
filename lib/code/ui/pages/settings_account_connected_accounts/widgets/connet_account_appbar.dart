import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/utils/constants/hivre_const_icons.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/settings_device_list_bloc/device_list_bloc.dart';

class ConnetAccountAppsBar extends StatefulWidget
    implements PreferredSizeWidget {
  ConnetAccountAppsBar();

  @override
  _ConnetAccountAppsBarState createState() => _ConnetAccountAppsBarState();

  @override
  final Size preferredSize = const Size.fromHeight(50);
}

class _ConnetAccountAppsBarState extends State<ConnetAccountAppsBar> {
  // Blocs
  DeviceListBloc _deviceListBloc;

  @override
  void initState() {
    _deviceListBloc = context.bloc<DeviceListBloc>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

/*
  _onShowMenu() {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            //title: Text('Actions'),
            //message: Text('mensage'),
            /*cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(StringConstant.cancel),
              isDestructiveAction: true,
            ),*/
            actions: <Widget>[
              CupertinoActionSheetAction(
                onPressed: _onShowTutorial,
                child: Text(HiveCoreString.of(context).tutorial),
              ),
            ],
          );
        });
  }


  void _onShowTutorial() {
    Navigator.pop(context);
    // _deviceListBloc.add(ResetTutorialDevice());
  }
*/

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        cubit: _deviceListBloc,
        listener: (BuildContext context, DeviceListState state) {
          if (state is DeviceListInitial) {
          } else if (state is DeviceListError) {
          } else if (state is DeviceListLoading) {
          } else if (state is DeviceListLoaded) {
          } else {}
        },
        builder: (BuildContext context, DeviceListState state) {
          if (state is DeviceListInitial) {
            return _cupertinaoAppBar();
          } else if (state is DeviceListError) {
            return _cupertinaoAppBar();
          } else if (state is DeviceListLoading) {
            return _cupertinaoAppBar();
          } else if (state is DeviceListLoaded) {
            return _cupertinaoAppBar();
          } else {
            return _cupertinaoAppBar();
          }
        });
  }

  CupertinoSliverNavigationBar _cupertinaoAppBar() {
    return CupertinoSliverNavigationBar(
      padding: EdgeInsetsDirectional.only(start: 0),
      leading: Material(
        color: Colors.transparent,
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: HiveCoreConstIcons.btnBack,
        ),
      ),
      largeTitle: Text(
        HiveCoreString.of(context).settings_connected_accounts,
      ),
      /*  trailing: Material(
        color: Colors.transparent,
        child: Container(
          child: IconButton(
            onPressed: _onShowMenu,
            icon: ConstIcons.btnSettings,
          ),
        ),
      ),*/
    );
  }
}
