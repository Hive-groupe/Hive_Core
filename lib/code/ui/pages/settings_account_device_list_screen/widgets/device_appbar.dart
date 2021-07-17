import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/ui/constants/hivre_const_icons.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/domain/controllers/blocs/settings_device_list_bloc/device_list_screen_bloc.dart';

class DeviceAppsBar extends StatefulWidget implements PreferredSizeWidget {
  DeviceAppsBar();

  @override
  _DeviceAppsBarState createState() => _DeviceAppsBarState();

  @override
  final Size preferredSize = const Size.fromHeight(50);
}

class _DeviceAppsBarState extends State<DeviceAppsBar> {
  // Blocs
  late DeviceListScreenBloc _deviceListScreenBloc;

  @override
  void initState() {
    _deviceListScreenBloc = BlocProvider.of<DeviceListScreenBloc>(context);
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
    // _deviceListBloc.add(ResetTutorialDevice(),);
  }
*/

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        bloc: _deviceListScreenBloc,
        listener: (BuildContext context, DeviceListScreenState state) {
          if (state is DeviceListInitial) {
          } else if (state is DeviceListError) {
          } else if (state is DeviceListLoading) {
          } else if (state is DeviceListLoaded) {
          } else {}
        },
        builder: (BuildContext context, DeviceListScreenState state) {
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
        HiveCoreString.of(context).settings_devices,
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
