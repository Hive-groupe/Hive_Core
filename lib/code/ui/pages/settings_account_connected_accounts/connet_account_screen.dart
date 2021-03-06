import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/code/data/repositories/device_repository/device_repository.dart';
import 'package:hive_core/code/domain/controllers/blocs/settings_device_list_bloc/device_list_screen_bloc.dart';
import 'package:hive_core/code/utils/othes/animation_controller.dart';
import 'package:hive_core/code/ui/widgets/screen_widgets/screen_builders_widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
  late HiveAnimationController _hiveAnimationController;

  // Blocs
  late DeviceRepository _deviceRepository;

  // Blocs
  late DeviceListScreenBloc _deviceListScreenBloc;

  @override
  void initState() {
    //Controllers
    _hiveAnimationController = HiveAnimationController(tickerProvider: this);

    // Repositorys
    _deviceRepository = RepositoryProvider.of<DeviceRepository>(context);

    // Blocs
    _deviceListScreenBloc = DeviceListScreenBloc(
      deviceRepository: _deviceRepository,
    )..add(
        FindDevices(),
      );
    super.initState();
  }

  @override
  void dispose() {
    //Controllers
    _hiveAnimationController.dispose();

    // Blocs
    _deviceListScreenBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DeviceListScreenBloc>(
          create: (BuildContext context) => _deviceListScreenBloc,
        ),
      ],
      child: BlocConsumer<DeviceListScreenBloc, DeviceListScreenState>(
        bloc: _deviceListScreenBloc,
        listener: (context, state) => state.maybeMap(
          deviceListInitial: (state) {},
          deviceListError: (state) {},
          deviceListLoaded: (state) {},
          deviceListLoading: (state) {},
          orElse: () {},
        ),
        builder: (context, state) => state.maybeMap(
          deviceListError: (state) => ScreenTypeLayout(
            desktop: _buildErrorMovileView(state: state),
            mobile: _buildErrorMovileView(state: state),
            tablet: _buildErrorMovileView(state: state),
          ),
          deviceListInitial: (state) => ScreenTypeLayout(
            desktop: _buildLoadingMovileView(),
            mobile: _buildLoadingMovileView(),
            tablet: _buildLoadingMovileView(),
          ),
          deviceListLoaded: (state) => ScreenTypeLayout(
            desktop: _buildLoadedMovileView(state: state),
            mobile: _buildLoadedMovileView(state: state),
            tablet: _buildLoadedMovileView(state: state),
          ),
          deviceListLoading: (state) => ScreenTypeLayout(
            desktop: _buildLoadingMovileView(),
            mobile: _buildLoadingMovileView(),
            tablet: _buildLoadingMovileView(),
          ),
          orElse: () => Container(),
        ),
      ),
    );
  }

  Widget _buildErrorMovileView({
    required DeviceListError state,
  }) {
    return ScreenBuildersWidget.errorScreenBuilder(
      context: context,
      appBar: ConnetAccountAppsBar(),
    );
  }

  Widget _buildLoadingMovileView() {
    return ScreenBuildersWidget.loadingScreenBuilder(
      appBar: ConnetAccountAppsBar(),
      text: 'Cargando cuentas', // HiveCoreString.of(context).bill_list_loading,
    );
  }

  Widget _buildLoadedMovileView({
    required DeviceListLoaded state,
  }) {
    return Scaffold(
      body: Stack(children: <Widget>[
        _body(state),
        /*  ConnetAccountFilterScreen(
        hiveAnimationController: _hiveAnimationController
      ),*/
        ConnetAccountTutorial(
            hiveAnimationController: _hiveAnimationController),
      ]),
    );
  }

  Widget _body(DeviceListLoaded state) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
      headerSliverBuilder: (
        BuildContext context,
        bool innerBoxIsScrolled,
      ) {
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
        ),
      )),
    ));
  }
}
