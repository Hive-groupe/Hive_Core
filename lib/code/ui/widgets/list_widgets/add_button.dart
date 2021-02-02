import 'package:flutter/material.dart';

class Addbutton extends StatelessWidget {
  final Function onPressed;

  const Addbutton({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Container(
        // margin: EdgeInsets.only(bottom: 15),
        child: FloatingActionButton(
          heroTag: null,
          onPressed: onPressed,
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
