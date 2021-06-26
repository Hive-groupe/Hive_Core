import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/utils/othes/animation_controller.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ConnetAccountTutorial extends StatefulWidget {
  final HiveAnimationController hiveAnimationController;

  const ConnetAccountTutorial({
    Key? key,
    required this.hiveAnimationController,
  }) : super(key: key);

  @override
  _ConnetAccountTutorialState createState() => _ConnetAccountTutorialState();
}

class _ConnetAccountTutorialState extends State<ConnetAccountTutorial> {
  // Blocs
  // DeviceListBloc _connetAccountListBloc;

  // Controllers
  late PageController _pageController;
  int _currentPage = 0;

  late Size media;

  @override
  void initState() {
    // Blocs
    //  _connetAccountListBloc = BlocProvider.of<DeviceListBloc>(context);

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
    List<Widget> list = [];
    list.add(
      _connet_accountPage(),
    );
    return list;
  }

  onPageChanged(newPage) {
    _currentPage = newPage;
    setState(() {});
  }

  _finishTutorial() =>
      null; //_connetAccountListBloc.add(FinishTutorialDevice(),);

  @override
  Widget build(BuildContext context) {
    media = MediaQuery.of(context).size;

    return CupertinoFullscreenDialogTransition(
      primaryRouteAnimation:
          widget.hiveAnimationController.animationPrimaryTutorial,
      secondaryRouteAnimation:
          widget.hiveAnimationController.animationSecondaryTutorial,
      linearTransition: false,
      child: _build(),
    );
  }

  Widget _build() {
    List<Widget> pageList = getPageList();
    return Opacity(
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
                child: _btnSkipTutorial(),
              ),
            ],
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

  Widget _connet_accountPage() {
    return Container(
      child: Container(
        margin: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _connet_accountTutorial(),
          ]),
        ),
      ),
    );
  }

  Widget _connet_accountTutorial() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              '', //HiveCoreString.of(context).connet_account_list_title,
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
              '', //HiveCoreString.of(context).connet_account_tutorial_description,
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
            borderRadius: new BorderRadius.circular(30.0),
          )),
    );
  }
}
