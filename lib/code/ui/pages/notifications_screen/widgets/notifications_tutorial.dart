import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/notifications_bloc/notifications_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NotificationsTutorial extends StatefulWidget {
  final AnimationController animationControllerTutorial;
  final Animation<double> animationPrimaryTutorial;
  final Animation<double> animationSecondaryTutorial;

  const NotificationsTutorial(
      {Key key,
      @required this.animationControllerTutorial,
      @required this.animationPrimaryTutorial,
      @required this.animationSecondaryTutorial})
      : super(key: key);

  @override
  _NotificationsTutorialState createState() => _NotificationsTutorialState();
}

class _NotificationsTutorialState extends State<NotificationsTutorial> {
  // Blocs
  NotificationsBloc _notificationsBloc;

  // Controllers
  PageController _pageController;
  int _currentPage = 0;

  Size media;

  @override
  void initState() {
    // Blocs
    _notificationsBloc = context.bloc<NotificationsBloc>();

    // Controllers
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 1,
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<Widget> getPageList() {
    List<Widget> list = new List<Widget>();
    list.add(_notificationsPage());
    return list;
  }

  onPageChanged(newPage) {
    _currentPage = newPage;
    setState(() {});
  }

  _finishTutorial() =>
      _notificationsBloc.add(null // FinishTutorialNotifications()
          );

  @override
  Widget build(BuildContext context) {
    media = MediaQuery.of(context).size;

    return CupertinoFullscreenDialogTransition(
        primaryRouteAnimation: widget.animationPrimaryTutorial,
        secondaryRouteAnimation: widget.animationSecondaryTutorial,
        linearTransition: false,
        child: _build());
  }

  Widget _build() {
    List<Widget> pageList = getPageList();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Opacity(
        opacity: 0.85,
        child: Container(
          color: Colors.black,
          height: media.height,
          width: media.width,
          child: Container(
            margin: EdgeInsets.only(top: 50, bottom: 15),
            child: Column(
              children: [
                _pageView(pageList),
                SizedBox(
                  height: 15,
                ),
                _pageIndicator(pageList.length),
                SizedBox(
                  height: 5,
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: _btnSkipTutorial()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _pageView(List<Widget> pageList) {
    return Container(
      child: SizedBox.fromSize(
        size: Size.fromHeight(media.height * 0.75),
        child: PageView(
          onPageChanged: (newPage) => onPageChanged(newPage),
          controller: _pageController,
          children: pageList,
        ),
      ),
    );
  }

  Widget _notificationsPage() {
    return Container(
        child: Container(
      margin: EdgeInsets.all(25),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _payrollTutorial(),
        ]),
      ),
    ));
  }

  Widget _payrollTutorial() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              '', //  HiveCoreString.of(context).notifications_list_title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              '', //   HiveCoreString.of(context).notifications_tutorial_description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _pageIndicator(int length) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: SmoothPageIndicator(
        controller: _pageController,
        count: length,
        effect: WormEffect(
            dotWidth: 5.0,
            dotHeight: 5.0,
            activeDotColor: Theme.of(context).accentColor),
      ),
    );
  }

  Widget _btnSkipTutorial() {
    return Container(
      child: OutlineButton(
          onPressed: _finishTutorial,
          child: Text(
            HiveCoreString.of(context).skip_tutorial,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0))),
    );
  }
}
