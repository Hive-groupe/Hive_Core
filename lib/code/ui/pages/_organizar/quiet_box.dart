import 'package:flutter/material.dart';
import 'package:hive_core/code/utils/constants/hive_const_colors.dart';

class QuietBox extends StatelessWidget {
  final String heading;
  final String subtitle;

  const QuietBox({Key key, this.heading, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          color: HiveCoreConstColors.separatorColor,
          padding: EdgeInsets.symmetric(vertical: 35, horizontal: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                heading,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 25),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 25),
              FlatButton(
                onPressed: () {},
                color: Colors.amber,
                child: Text("START SEARCHING"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
