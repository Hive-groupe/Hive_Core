import 'package:flutter/material.dart';

class HiveAnimationController {
  // Providers
  final TickerProvider tickerProvider;

  //Controllers
  AnimationController animationControllerPrimaryTutorial,
      animationControllerSecondaryTutorial,
      animationControllerPrimaryFilter,
      animationControllerSecondaryFilter;
  Animation<double> animationPrimaryTutorial,
      animationSecondaryTutorial,
      animationPrimaryFilter,
      animationSecondaryFilter;

  HiveAnimationController({@required this.tickerProvider})
      : assert(tickerProvider != null) {
    initState();
  }

  initState() {
    //Controllers
    animationControllerPrimaryTutorial = AnimationController(
        vsync: tickerProvider, duration: Duration(milliseconds: 500));
    animationControllerSecondaryTutorial = AnimationController(
        vsync: tickerProvider, duration: Duration(milliseconds: 500));
    animationControllerPrimaryFilter = AnimationController(
        vsync: tickerProvider, duration: Duration(milliseconds: 500));
    animationControllerSecondaryFilter = AnimationController(
        vsync: tickerProvider, duration: Duration(milliseconds: 500));

    animationPrimaryTutorial = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: animationControllerPrimaryTutorial, curve: Curves.easeOut));
    animationSecondaryTutorial = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: animationControllerSecondaryTutorial,
            curve: Curves.easeOut));
    animationPrimaryFilter = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: animationControllerPrimaryFilter, curve: Curves.easeOut));
    animationSecondaryFilter = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: animationControllerSecondaryFilter, curve: Curves.easeOut));
  }

  void dispose() {
    //Controllers
    animationControllerPrimaryTutorial?.dispose();
    animationControllerSecondaryTutorial?.dispose();
    animationControllerPrimaryFilter?.dispose();
    animationControllerSecondaryFilter?.dispose();
  }
}
