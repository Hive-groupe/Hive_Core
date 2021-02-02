import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';

class BottomBarFilter extends StatelessWidget {
  final Function onSubmit;

  final String btnSubmitText;

  const BottomBarFilter({
    Key key,
    @required this.onSubmit,
    this.btnSubmitText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(top: 10, bottom: 20, left: 15, right: 15),
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(
          color: Colors.grey,
          width: 0.1,
        ),
      )),
      child: _btnSubmitHolder(context),
    );
  }

  Widget _btnSubmitHolder(BuildContext context) {
    return Hero(
      tag: 'FloatingButton',
      child: CupertinoButton(
        onPressed: onSubmit,
        color: Theme.of(context).accentColor,
        child: Text(btnSubmitText ?? S.of(context).filter),
      ),
    );
  }
}
