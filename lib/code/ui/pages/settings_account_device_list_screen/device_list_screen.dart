import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/settings_device_list_bloc/device_list_bloc.dart';
import 'package:hive_core/code/utils/othes/animation_controller.dart';
import 'package:hive_core/code/ui/widgets/screen_widgets/screen_builders_widgets.dart';

import 'widgets/device_appbar.dart';
import 'widgets/device_list.dart';
import 'widgets/device_tutorial.dart';

class DeviceListScreen extends StatefulWidget {
  @override
  _DeviceListScreenState createState() => _DeviceListScreenState();
}

class _DeviceListScreenState extends State<DeviceListScreen>
    with TickerProviderStateMixin {
  // Controllers
  HiveAnimationController _hiveAnimationController;

  // Blocs
  DeviceListBloc _deviceListBloc;

  @override
  void initState() {
    //Controllers
    _hiveAnimationController = HiveAnimationController(tickerProvider: this);

    // Blocs
    _deviceListBloc = DeviceListBloc(context: context)..add(FindDevices());
    super.initState();
  }

  @override
  void dispose() {
    //Controllers
    _hiveAnimationController?.dispose();

    // Blocs
    _deviceListBloc?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<DeviceListBloc>(
            create: (BuildContext context) => _deviceListBloc,
          ),
        ],
        child: BlocConsumer(
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
                return _buildLoading();
              } else if (state is DeviceListError) {
                return _buildError();
              } else if (state is DeviceListLoading) {
                return _buildLoading();
              } else if (state is DeviceListLoaded) {
                return _buildLoaded(state);
              } else {
                return _buildError();
              }
            }));
  }

  Widget _buildError() {
    return ScreenBuildersWidget.errorScreenBuilder(
      context: context,
      appBar: DeviceAppsBar(),
    );
  }

  Widget _buildLoading() {
    return ScreenBuildersWidget.loadingScreenBuilder(
      appBar: DeviceAppsBar(),
      text: S.of(context).settings_devices_list_loading,
    );
  }

  Widget _buildLoaded(DeviceListLoaded state) {
    return Scaffold(
        body: Stack(children: <Widget>[
      _body(state),
      /*DeviceFilterScreen(
        hiveAnimationController: _hiveAnimationController
      ),*/
      DeviceTutorial(hiveAnimationController: _hiveAnimationController),
    ]));
  }

  Widget _body(DeviceListLoaded state) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                DeviceAppsBar(),
              ];
            },
            body: SingleChildScrollView(
                child: Container(
                    child: Column(
              children: <Widget>[
                DeviceList(
                  deviceList: state.deviceList,
                  showStatus: true,
                ),
              ],
            )))));
  }
}
