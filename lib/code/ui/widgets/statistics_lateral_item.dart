import 'package:flutter/material.dart';

class StatisticLateralItem extends StatefulWidget {
  final String title, data, unity;
  final Color dataColor, titleColor, unityColor;

  StatisticLateralItem(
      {String title,
      String data,
      String unity,
      this.titleColor,
      this.dataColor,
      this.unityColor})
      : title = title ?? "TITLE",
        data = data ?? "0",
        unity = unity ?? "";

  @override
  _statisticLateralItemState createState() => _statisticLateralItemState();
}

class _statisticLateralItemState extends State<StatisticLateralItem> {
  @override
  Widget build(BuildContext context) {
    return _buid();
  }

  Widget _buid() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _data(),
                _unity(),
              ],
            ),
          ),
          _title(),
        ],
      ),
    );
  }

  Widget _title() {
    return widget.title != null
        ? Text(
            widget.title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 10,
                color: widget.titleColor ?? Colors.grey,
                fontWeight: FontWeight.bold),
          )
        : Container();
  }

  Widget _data() {
    return widget.data != null
        ? Text(
            widget.data,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 13,
                color: widget.dataColor,
                fontWeight: FontWeight.w600),
          )
        : Container();
  }

  Widget _unity() {
    return widget.unity != null
        ? Container(
            padding: EdgeInsets.only(left: 5),
            child: Text(widget.unity,
                style: TextStyle(
                  color: widget.unityColor ?? Colors.grey,
                )),
          )
        : Container();
  }
}
