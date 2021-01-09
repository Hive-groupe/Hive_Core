import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/src/controllers/blocs/notifications_bloc/notifications_bloc.dart';
import 'package:hive_core/src/utils/othes/animation_controller.dart';
import 'package:hive_core/src/ui/widgets/screen_widgets/screen_builders_widgets.dart';

import 'widgets/notifications_appbar.dart';
import 'widgets/notifications_list.dart';
import 'widgets/notifications_tutorial.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({
    Key key,
  }) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen>
    with TickerProviderStateMixin {
  // Repositorys
  // AuthenticationRepository _authenticationRepository;
  // TutorialRepository _tutorialRepository;

  // Controllers
  HiveAnimationController _hiveAnimationController;

  // Blocs
  NotificationsBloc _notificationsBloc;

  @override
  void initState() {
    // Repositorys
    // _authenticationRepository = context.repository<AuthenticationRepository>();
    // _tutorialRepository = context.repository<TutorialRepository>();

    //Controllers
    _hiveAnimationController = HiveAnimationController(tickerProvider: this);

    // Blocs
    _notificationsBloc = context.bloc<NotificationsBloc>();

    super.initState();
  }

  @override
  void dispose() {
    //Controllers
    _hiveAnimationController?.dispose();

    // Blocs
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return /*MultiBlocProvider(
        providers: [
          BlocProvider<AssistantBloc>(
            create: (BuildContext context) => _assistantBloc,
          ),
        ],
        child:*/
        BlocConsumer(
            cubit: _notificationsBloc,
            listener: (BuildContext context, NotificationsState state) {},
            builder: (BuildContext context, NotificationsState state) {
              if (state is NotificationsLoading) {
                return _buildLoading();
              } else if (state is NotificationsError) {
                return _buildError();
              } else if (state is NotificationsLoaded) {
                return _buildLoaded(state);
              } else {
                return _buildError();
              }
            })
        // )
        ;
  }

  Widget _buildError() {
    return ScreenBuildersWidget.errorScreenBuilder(
      context: context,
      appBar: NotificationsAppsBar(),
    );
  }

  Widget _buildLoading() {
    return ScreenBuildersWidget.loadingScreenBuilder(
      appBar: NotificationsAppsBar(),
      text: null, // S.of(context).bill_list_loading,
    );
  }

  Widget _buildLoaded(NotificationsLoaded state) {
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
    ]));
  }

  Widget _body(NotificationsLoaded state) {
    return Scaffold(
      body: CupertinoPageScaffold(
          child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            NotificationsAppsBar(),
          ];
        },
        body: SingleChildScrollView(
          child: SingleChildScrollView(
              child: Container(
                  child: Column(children: [
            NotificationsList(
              notificationsList: state.notificationsList,
              showStatus: true,
            )
          ]))),
        ),
      )),
    );
  }
}
