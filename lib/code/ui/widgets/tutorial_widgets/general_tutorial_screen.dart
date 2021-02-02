import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';

class GeneralTutorialScreen extends StatefulWidget {
  const GeneralTutorialScreen();

  @override
  _GeneralTutorialScreenState createState() => _GeneralTutorialScreenState();
}

class _GeneralTutorialScreenState extends State<GeneralTutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.all(25),
        child: Column(children: [
          _monitorTutorial(),
          SizedBox(
            height: 25,
          ),
          _recordTutorial(),
          SizedBox(
            height: 25,
          ),
          _filterTutorial(),
        ]),
      )),
    );
  }

  Widget _monitorTutorial() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              S.of(context).monitor,
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
              S.of(context).general_tutorial_monitor,
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

  Widget _recordTutorial() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              S.of(context).record,
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
              S.of(context).general_tutorial_record,
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

  Widget _filterTutorial() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Filtros', // S.of(context).filter,
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
              S.of(context).general_tutorial_filter,
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
}
