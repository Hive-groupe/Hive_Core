import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';

import '../appbar.dart';

class AppBarFiltersWidget extends StatefulWidget
    implements PreferredSizeWidget {
  final String title;
  final TabController tabController;
  final List<Tab> tabs;
  final Function onHideFilters;

  final Function onClear;
  final String btnClearText;

  const AppBarFiltersWidget({
    Key key,
    @required this.title,
    @required this.tabController,
    @required this.tabs,
    @required this.onHideFilters,
    @required this.onClear,
    this.btnClearText,
  }) : super(key: key);

  @override
  _AppBarFiltersWidgetState createState() => _AppBarFiltersWidgetState();

  @override
  final Size preferredSize = const Size.fromHeight(100);
}

class _AppBarFiltersWidgetState extends State<AppBarFiltersWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Text(
        widget.title ?? 'Filters',
        style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyText1.color,
            fontWeight: FontWeight.w600),
      ),
      leading: IconButton(
        onPressed: widget.onHideFilters,
        icon: Icon(
          Icons.clear,
          color: Colors.grey,
          size: 20,
        ),
      ),
      actions: <Widget>[_btnClearHolder()],
      bottom: TabBar(
        controller: widget.tabController,
        tabs: widget.tabs,
        indicatorPadding: EdgeInsets.only(left: 25, right: 25),
        labelColor: Theme.of(context).textTheme.bodyText1.color,
        unselectedLabelColor: Colors.grey,
      ),
    );
  }

  Widget _btnClearHolder() {
    return FlatButton(
      onPressed: widget.onClear,
      textColor: Theme.of(context).accentColor,
      child: Text(
        widget.btnClearText ?? HiveCoreString.of(context).delete,
        style: TextStyle(),
      ),
    );
  }
}
