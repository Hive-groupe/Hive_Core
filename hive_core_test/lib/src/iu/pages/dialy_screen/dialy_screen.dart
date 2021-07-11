import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/repositories/tutorial_repository/tutorial_repository.dart';
import 'package:hive_core/code/ui/widgets/banner_size.dart';
import 'package:hive_core/code/ui/widgets/search_bar.dart';
import 'package:hive_core/code/utils/constants/hive_const_colors.dart';
import 'package:hive_core/code/utils/constants/hive_const_strings.dart';

import '../../../domain/controllers/blocs/daily_screen_bloc/dialy_screen_bloc.dart';

class DialyScreen extends StatefulWidget {
  final String? otherUserId;

  DialyScreen({
    Key? key,
    this.otherUserId,
  }) : super(key: key);

  @override
  _DialyScreenState createState() => _DialyScreenState();
}

class _DialyScreenState extends State<DialyScreen> {
  // Repositorys
  late TutorialRepository _tutorialRepository;

  // Blocs
  late DialyScreenBloc _dialyScreenBloc;
  late ScrollController _scrollViewController;

  @override
  void initState() {
    // Repositorys

    _tutorialRepository = RepositoryProvider.of<TutorialRepository>(context);

    _dialyScreenBloc = DialyScreenBloc(
      context: context, tutorialRepository: _tutorialRepository,
      // Repositorys
    )..add(GetDailyData(selectedDate: DateTime.now()));

    _scrollViewController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _dialyScreenBloc.close();

    _scrollViewController.dispose();
    super.dispose();
  }

  void _goNotificationsScreen() {
    Navigator.pushNamed(
        context, HiveCoreConstString.route_notifications_screen);
  }

  void _goChatListScreen() => Navigator.pushNamed(
        context,
        HiveCoreConstString.route_chat_list_screen,
      );

  @override
  Widget build(BuildContext context) {
    return BannerSize(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<DialyScreenBloc>(
            create: (BuildContext context) => _dialyScreenBloc,
          ),
        ],
        child: BlocConsumer(
          bloc: _dialyScreenBloc,
          listener: (context, state) {},
          builder: (context, state) {
            if (state is DialyScreenInitial) {
              return _buildLoading();
            } else if (state is DialyScreenError) {
              return _buildError();
            } else if (state is DialyScreenLoading) {
              return _buildLoading();
            } else if (state is DialyScreenEmpty) {
              return Container();
            } else if (state is DialyScreenLoaded &&
                MediaQuery.of(context).orientation == Orientation.portrait) {
              return _buidLoadedVertical(state);
            } else if (state is DialyScreenLoaded &&
                MediaQuery.of(context).orientation == Orientation.landscape) {
              return _buidLoadedHorizontal(state);
            } else if (state is DialyScreenTutorialState) {
              return _buidTutorial(state);
            } else {
              return _buildError();
            }
          },
        ),
      ),
    );
  }

  Widget _buildError() {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          Text(
            'Error', // S.of(context).default_error,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoading() {
    return Container();
  }

  Widget _buidLoadedHorizontal(DialyScreenLoaded state) {
    return Scaffold(
      /* bottomNavigationBar: MyBottomNavigationBar(
          context: context,
        ),*/
      body: _bodyHorizontal(),
    );
  }

  Widget _buidLoadedVertical(DialyScreenLoaded state) {
    return Scaffold(
      /* bottomNavigationBar: MyBottomNavigationBar(
          context: context,
        ),*/
      body: _bodyVertical(),
    );
  }

  Widget _buidTutorial(DialyScreenTutorialState state) {
    return Scaffold(
      /* bottomNavigationBar: MyBottomNavigationBar(
          context: context,
        ),*/
      body: Stack(
        children: [
          /* _body(
          dailySumOfBills: state.dailySumOfBills,
          dailySumOfHours: state.dailySumOfHours,
          dailySumOfKms: state.dailySumOfKms,
          dailySumOfPlus: state.dailySumOfPlus,
          monthlySumOfBills: state.monthlySumOfBills,
          monthlySumOfHours: state.monthlySumOfHours,
          monthlySumOfKms: state.monthlySumOfKms,
          monthlySumOfPlus: state.monthlySumOfPlus,
        ),*/
          _searchBar(),
          /*GestureDetector(
          onTap: () => _dialyScreenBloc.add(FinishTutorialDaily()),
          child: Container(
            color: Colors.black54,
            height: media.height,
            width: media.width,
            child: Center(
              child: Text(
                'Tutorial',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),*/
        ],
      ),
    );
  }

  CupertinoSliverNavigationBar _cupertinaoAppBar() {
    return CupertinoSliverNavigationBar(
      padding: EdgeInsetsDirectional.only(start: 0),
      leading: Material(
        color: Colors.transparent,
        child: IconButton(
          onPressed: _goNotificationsScreen,
          icon: Icon(
            CupertinoIcons.bell,
            color: HiveCoreConstColors.greyColor,
          ),
        ),
      ),
      largeTitle: Text(
        'Error', //   S.of(context).daily_title,
      ),
      trailing: Material(
        color: Colors.transparent,
        child: Container(
          child: IconButton(
            onPressed: _goChatListScreen,
            icon: Icon(
              CupertinoIcons.chat_bubble,
              color: HiveCoreConstColors.greyColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: SearchBar(),
    );
  }

  Widget _bodyVertical() {
    return NestedScrollView(
      controller: _scrollViewController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          _cupertinaoAppBar(),
          SliverToBoxAdapter(
            child: _searchBar(),
          ),
        ];
      },
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bodyHorizontal() {
    return NestedScrollView(
      controller: _scrollViewController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          _cupertinaoAppBar(),
          SliverToBoxAdapter(
            child: _searchBar(),
          ),
        ];
      },
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
