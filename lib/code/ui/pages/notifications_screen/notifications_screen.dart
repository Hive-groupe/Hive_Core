import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/notifications_bloc/notifications_bloc.dart';
import 'package:hive_core/code/ui/widgets/banner_size.dart';
import 'package:hive_core/code/utils/othes/animation_controller.dart';
import 'package:hive_core/code/ui/widgets/screen_widgets/screen_builders_widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widgets/notifications_appbar.dart';
import 'widgets/notifications_list.dart';
import 'widgets/notifications_tutorial.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({
    Key? key,
  }) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen>
    with TickerProviderStateMixin {
  // Controllers
  late HiveAnimationController _hiveAnimationController;

  // Blocs
  late NotificationsBloc _notificationsBloc;

  @override
  void initState() {
    //Controllers
    _hiveAnimationController = HiveAnimationController(tickerProvider: this);

    // Blocs
    _notificationsBloc = BlocProvider.of<NotificationsBloc>(context);

    super.initState();
  }

  @override
  void dispose() {
    //Controllers
    _hiveAnimationController.dispose();

    // Blocs
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BannerSize(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<NotificationsBloc>(
            create: (BuildContext context) => _notificationsBloc,
          ),
        ],
        child: BlocConsumer<NotificationsBloc, NotificationsState>(
          bloc: _notificationsBloc,
          listener: (context, state) => state.maybeMap(
            notificationsError: (state) {},
            notificationsInitial: (state) {},
            notificationsLoaded: (state) {},
            notificationsLoading: (state) {},
            orElse: () {},
          ),
          builder: (context, state) => state.maybeMap(
            notificationsError: (state) => ScreenTypeLayout(
              desktop: _buildErrorMovilView(),
              mobile: _buildErrorMovilView(),
              tablet: _buildErrorMovilView(),
            ),
            notificationsInitial: (state) => ScreenTypeLayout(
              desktop: _buildLoadingMovilView(),
              mobile: _buildLoadingMovilView(),
              tablet: _buildLoadingMovilView(),
            ),
            notificationsLoaded: (state) => ScreenTypeLayout(
              desktop: _buildLoadedMovilView(state: state),
              mobile: _buildLoadedMovilView(state: state),
              tablet: _buildLoadedMovilView(state: state),
            ),
            notificationsLoading: (state) => ScreenTypeLayout(
              desktop: _buildLoadingMovilView(),
              mobile: _buildLoadingMovilView(),
              tablet: _buildLoadingMovilView(),
            ),
            orElse: () => _buildErrorMovilView(),
          ),
        ),
      ),
    );
  }

  Widget _buildErrorMovilView() {
    return ScreenBuildersWidget.errorScreenBuilder(
      context: context,
      appBar: NotificationsAppsBar(),
    );
  }

  Widget _buildLoadingMovilView() {
    return ScreenBuildersWidget.loadingScreenBuilder(
      appBar: NotificationsAppsBar(),
      text: null, // HiveCoreString.of(context).bill_list_loading,
    );
  }

  Widget _buildLoadedMovilView({
    required NotificationsLoaded state,
  }) {
    return Scaffold(
      body: Stack(children: <Widget>[
        _body(state),
        NotificationsTutorial(
          animationControllerTutorial:
              _hiveAnimationController.animationControllerPrimaryTutorial,
          animationPrimaryTutorial:
              _hiveAnimationController.animationPrimaryTutorial,
          animationSecondaryTutorial:
              _hiveAnimationController.animationSecondaryTutorial,
        ),
      ]),
    );
  }

  Widget _body(NotificationsLoaded state) {
    return Scaffold(
      body: CupertinoPageScaffold(
        child: NestedScrollView(
          headerSliverBuilder: (
            BuildContext context,
            bool innerBoxIsScrolled,
          ) {
            return <Widget>[
              NotificationsAppsBar(),
            ];
          },
          body: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    NotificationsList(
                      notificationsList: state.notificationsList,
                      showStatus: true,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
