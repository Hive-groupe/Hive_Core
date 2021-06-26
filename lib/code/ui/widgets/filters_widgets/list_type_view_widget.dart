import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/models/enum/list_view_type.dart';

import '../settings_group.dart';

class ListTypeViewWidget extends StatefulWidget {
  final SelectFieldBloc listViewType;

  final String title;

  const ListTypeViewWidget({
    Key? key,
    required this.listViewType,
    required this.title,
  }) : super(key: key);

  @override
  _ListTypeViewWidgetState createState() => _ListTypeViewWidgetState();
}

class _ListTypeViewWidgetState extends State<ListTypeViewWidget> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return SettingsGroup(
      title: widget.title ?? 'Modo',
      elements: [
        RadioButtonGroupFieldBlocBuilder<dynamic>(
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
      ],
    );
  }
}
