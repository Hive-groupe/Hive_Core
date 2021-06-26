import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/code/controllers/blocs/assistant_bloc/assistant_bloc.dart';
import 'package:hive_core/code/ui/widgets/banner_size.dart';
import 'package:hive_core/code/utils/othes/animation_controller.dart';

import 'widgets/assistant_appbar.dart';
import 'widgets/assistant_tutorial.dart';

class AssistantScreen extends StatefulWidget {
  const AssistantScreen({
    Key? key,
  }) : super(key: key);

  @override
  _AssistantScreenState createState() => _AssistantScreenState();
}

class _AssistantScreenState extends State<AssistantScreen>
    with TickerProviderStateMixin {
  // Controllers
  late TextEditingController _searchController;
  late HiveAnimationController _hiveAnimationController;

  // Blocs
  late AssistantBloc _assistantBloc;

  @override
  void initState() {
    //Controllers
    _hiveAnimationController = HiveAnimationController(tickerProvider: this);
    _searchController = TextEditingController();

    // Blocs
    _assistantBloc = AssistantBloc();

    super.initState();
  }

  @override
  void dispose() {
    //Controllers
    _searchController.dispose();
    _hiveAnimationController.dispose();

    // Blocs
    _assistantBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BannerSize(
        body: MultiBlocProvider(
      providers: [
        BlocProvider<AssistantBloc>(
          create: (BuildContext context) => _assistantBloc,
        ),
      ],
      child: BlocConsumer(
          bloc: _assistantBloc,
          listener: (BuildContext context, AssistantState state) {},
          builder: (BuildContext context, AssistantState state) {
            return _buildLoaded();
          }),
    ));
  }

/*
  Widget _buildError() {
    return CupertinoPageScaffold(
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                AssistantAppsBar(),
              ];
            },
            body: Scaffold(
              body: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 250,
                      ),
                      Text(
                        HiveCoreString.of(context).default_error,
                      ),
                      Text(
                        HiveCoreString.of(context).unknown_error,
                      ),
                    ],
                  ),
                ),
              ),
            ),));
  }

  Widget _buildLoading() {
    return CupertinoPageScaffold(
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                AssistantAppsBar(),
              ];
            },
            body: Scaffold(
              body: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 250,
                    ),
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 10,
                    ),
                    /*Text(
                      HiveCoreString.of(context).assistant_loading,
                      style: TextStyle(color: Colors.black),
                    )*/
                  ],
                ),
              ),
            ),));
  }
*/
  Widget _buildLoaded() {
    return Scaffold(
      body: Stack(children: <Widget>[
        _body(),
        AssistantTutorial(
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

  Widget _body() {
    return Scaffold(
      //  floatingActionButton: _btnAdd(),
      body: CupertinoPageScaffold(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              AssistantAppsBar(),
            ];
          },
          body: SingleChildScrollView(
            child: Container(),
          ),
        ),
      ),
    );
  }
}
