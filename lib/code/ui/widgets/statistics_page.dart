import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';

import 'statistics_central_item.dart';
import 'statistics_lateral_item.dart';

class StatisticPage extends StatefulWidget {
  final int length;
  final double minimum, average, maximum;
  final String unity;

  StatisticPage(
      {this.length, this.minimum, this.average, this.maximum, this.unity});

  @override
  _ItemAttribute createState() => _ItemAttribute();
}

class _ItemAttribute extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    return _buid();
  }

  Widget _buid() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 20, right: 20, left: 20),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    widget.length > 1 ? _minValue() : Container(),
                    widget.length > 1 ? _divider() : Container(),
                    _averageValue(),
                    widget.length > 1 ? _divider() : Container(),
                    widget.length > 1 ? _maxValue() : Container(),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 30,
      child: VerticalDivider(
        color: Colors.grey,
      ),
    );
  }

  Widget _minValue() {
    return Container(
        padding: EdgeInsets.only(right: 5, left: 5),
        child: StatisticLateralItem(
          data: widget.minimum.toStringAsFixed(2).toString(),
          title: S.of(context).minimum,
          unity: widget.unity,
        ));
  }

  Widget _averageValue() {
    return Container(
        padding: EdgeInsets.only(right: 5, left: 5),
        child: StatisticCentralItem(
          data: widget.average.toStringAsFixed(2).toString(),
          title: S.of(context).average,
          unity: widget.unity,
        ));
  }

  Widget _maxValue() {
    return Container(
        padding: EdgeInsets.only(right: 5, left: 5),
        child: StatisticLateralItem(
          data: widget.maximum.toStringAsFixed(2).toString(),
          title: S.of(context).maximum,
          unity: widget.unity,
        ));
  }
}
