import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/data/models/device.dart';
import 'package:hive_core/code/ui/widgets/list_widgets/list_builders_widgets.dart';

import 'connet_account_item.dart';

class ConnetAccountList extends StatefulWidget {
  late final bool showStatus;
  late final Stream<BuiltList<Device>> connetAccountList;

  ConnetAccountList({
    Key? key,
    required bool showStatus,
    required this.connetAccountList,
  })  : this.showStatus = showStatus,
        super(key: key);

  @override
  _ConnetAccountListState createState() => _ConnetAccountListState();
}

class _ConnetAccountListState extends State<ConnetAccountList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BuiltList<Device>>(
        stream: widget.connetAccountList,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!.length > 0) {
            return _buildListLoaded(snapshot.data!);
          } else if (snapshot.hasData && snapshot.data!.length <= 0) {
            return widget.showStatus ? _buildListEmpty() : Container();
          } else if (snapshot.hasError) {
            return widget.showStatus ? _buildListError() : Container();
          } else {
            return widget.showStatus ? _buildListError() : Container();
          }
        });
  }

  Widget _buildListError() {
    return ListBuildersWidget.errorListBuilder(
      context: context,
    );
  }

  Widget _buildListEmpty() {
    return ListBuildersWidget.emptyListBuilder(
      context: context,
      onTap: () {},
      imageUrl: HiveCoreString.of(context).km_assets_images_list_empty,
      title: '',
      text:
          'No se encontraron cuentas conectadas', // HiveCoreString.of(context).bill_list_empty,
    );
  }

  Widget _buildListLoaded(BuiltList<Device> list) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        children: List.generate(
          list.length,
          (index) => ConnetAccountItem(
            model: list[index],
          ),
        ).toList(),
      ),
    );
  }
}
