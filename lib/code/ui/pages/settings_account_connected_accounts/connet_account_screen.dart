import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/code/controllers/blocs/settings_device_list_bloc/device_list_bloc.dart';
import 'package:hive_core/code/utils/othes/animation_controller.dart';
import 'package:hive_core/code/ui/widgets/screen_widgets/screen_builders_widgets.dart';

import 'widgets/connet_account_appbar.dart';
import 'widgets/connet_account_list.dart';
import 'widgets/connet_account_tutorial.dart';

class ConnetAccountScreen extends StatefulWidget {
  @override
  _ConnetAccountScreenState createState() => _ConnetAccountScreenState();
}

class _ConnetAccountScreenState extends State<ConnetAccountScreen>
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
      appBar: ConnetAccountAppsBar(),
    );
  }

  Widget _buildLoading() {
    return ScreenBuildersWidget.loadingScreenBuilder(
      appBar: ConnetAccountAppsBar(),
      text: 'Cargando cuentas', // S.of(context).bill_list_loading,
    );
  }

  Widget _buildLoaded(DeviceListLoaded state) {
    return Scaffold(
        body: Stack(children: <Widget>[
      _body(state),
      /*  ConnetAccountFilterScreen(
        hiveAnimationController: _hiveAnimationController
      ),*/
      ConnetAccountTutorial(hiveAnimationController: _hiveAnimationController),
    ]));
  }

  Widget _body(DeviceListLoaded state) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                ConnetAccountAppsBar(),
              ];
            },
            body: SingleChildScrollView(
                child: Container(
                    child: Column(
              children: <Widget>[
                ConnetAccountList(
                  connetAccountList: state.deviceList,
                  showStatus: true,
                ),
              ],
            )))));
  }
}
