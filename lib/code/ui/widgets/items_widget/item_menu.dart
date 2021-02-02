import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/utils/constants/hivre_const_icons.dart';
import 'package:hive_core/generated/l10n.dart';

class ItemMenu extends StatefulWidget {
  final Function onDouble;
  final Function onDelete;
  final Function onEdit;
  final Function onFavorite;
  final Function onShare;
  final Function onShowDetail;

  final String editText;
  final String doubleText;
  final String deleteText;
  final String deleteConfirmText;
  final String favoriteText;
  final String shareText;

  final Widget child;

  const ItemMenu(
      {Key key,
      @required this.onDouble,
      @required this.onDelete,
      @required this.onEdit,
      @required this.onFavorite,
      @required this.onShare,
      this.onShowDetail,
      @required this.editText,
      @required this.doubleText,
      @required this.deleteText,
      @required this.deleteConfirmText,
      @required this.favoriteText,
      @required this.shareText,
      @required this.child})
      : super(key: key);

  @override
  _ItemMenuState createState() => _ItemMenuState();
}

class _ItemMenuState extends State<ItemMenu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _confirmDialogBox() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              widget.deleteText,
            ),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  Text(
                    widget.deleteConfirmText,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text(HiveCoreString.of(context).cancel),
              ),
              FlatButton(
                onPressed: widget.onDelete,
                child: Text(HiveCoreString.of(context).yes),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoContextMenu(
      child: Material(
          color: Colors.transparent,
          child: SingleChildScrollView(
              child: GestureDetector(
            onTap: widget.onShowDetail,
            child: widget.child,
          ))),
      actions: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CupertinoContextMenuAction(
                  onPressed: widget.onFavorite,
                  trailingIcon: Icons.favorite_border_outlined,
                  child: Text(
                    widget.favoriteText ?? 'Favorite',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                CupertinoContextMenuAction(
                  onPressed: widget.onShare,
                  trailingIcon: HiveCoreConstIconData.share,
                  child: Text(
                    widget.shareText ?? 'share',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                CupertinoContextMenuAction(
                  onPressed: widget.onEdit,
                  trailingIcon: Icons.edit_outlined,
                  child: Text(
                    widget.editText,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                CupertinoContextMenuAction(
                  onPressed: widget.onDouble,
                  trailingIcon: Icons.copy_outlined,
                  child: Text(
                    widget.doubleText,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                CupertinoContextMenuAction(
                  onPressed: _confirmDialogBox,
                  trailingIcon: CupertinoIcons.delete,
                  child: Text(
                    widget.deleteText,
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
