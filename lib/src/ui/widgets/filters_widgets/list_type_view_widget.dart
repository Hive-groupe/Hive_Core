import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/src/models/enum/list_view_type.dart';
import 'package:hive_core/src/ui/widgets/settings_group.dart';

class ListTypeViewWidget extends StatefulWidget {
  final SelectFieldBloc listViewType;

  final String title;

  const ListTypeViewWidget({
    Key key,
    @required this.listViewType,
    this.title,
  }) : super(key: key);

  @override
  _ListTypeViewWidgetState createState() => _ListTypeViewWidgetState();
}

class _ListTypeViewWidgetState extends State<ListTypeViewWidget> {
  @override
  Widget build(BuildContext context) {
    return SettingsGroup(title: widget.title ?? 'Modo', elements: [
      RadioButtonGroupFieldBlocBuilder<ListViewType>(
        selectFieldBloc: widget.listViewType,
        itemBuilder: (context, value) {
          switch (value) {
            case ListViewType.LIST:
              return 'Lista';
            case ListViewType.TABLE:
              return 'Tabla';
            default:
              return '';
          }
        },
      ),
    ]);
  }
}
