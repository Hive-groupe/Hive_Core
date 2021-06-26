import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/models/device.dart';
import 'package:hive_core/code/ui/widgets/list_widgets/list_builders_widgets.dart';

import 'device_item.dart';

class DeviceList extends StatefulWidget {
  final bool showStatus;
  final Stream<BuiltList<Device>> deviceList;

  DeviceList({
    Key? key,
    required bool showStatus,
    required this.deviceList,
  })  : this.showStatus = showStatus,
        super(key: key);

  @override
  _DeviceListState createState() => _DeviceListState();
}

class _DeviceListState extends State<DeviceList> {
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
        stream: widget.deviceList,
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
      imageUrl: HiveCoreString.of(context).settings_devices_assets_images_empty,
      title: '',
      text: HiveCoreString.of(context).settings_devices_list_empty,
    );
  }

  Widget _buildListLoaded(BuiltList<Device> list) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        children: List.generate(
          list.length,
          (index) => DeviceItem(
            model: list[index],
          ),
        ).toList(),
      ),
    );
  }
}
