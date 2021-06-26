import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/settings_device_list_bloc/device_list_bloc.dart';
import 'package:hive_core/code/models/device.dart';
import 'package:hive_core/code/utils/tools/time_tools/time_tools.dart';

class ConnetAccountItem extends StatefulWidget {
  final Device model;

  ConnetAccountItem({
    required this.model,
  });

  @override
  _ConnetAccountItemState createState() => _ConnetAccountItemState();
}

class _ConnetAccountItemState extends State<ConnetAccountItem> {
  late DeviceListBloc _deviceListBloc;

  @override
  void initState() {
    _deviceListBloc = BlocProvider.of<DeviceListBloc>(context);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onDeleteData() {
    Navigator.pop(context);
    _deviceListBloc
      ..add(
        DeleteDeviceItem(deviceId: widget.model.metadata.id ?? ''),
      );
  }

  Future<void> _confirmDialogBox() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
                'Eliminar Dispositivo'), // HiveCoreString.of(context).user_signout),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  Text(
                      '¿Estas seguro de que deseas eliminar el dispositivo?'), // HiveCoreString.of(context).user_settings_close_confirmation_seasion),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(HiveCoreString.of(context).cancel),
              ),
              TextButton(
                onPressed: _onDeleteData,
                child: Text(HiveCoreString.of(context).yes),
              ),
            ],
          );
        });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      child: ListTile(
        leading: Container(
          child: Icon(
            Icons.devices,
          ),
        ),
        title: Text(
            '${widget.model.metadata.title.toString()} (${widget.model.platform})'),
        subtitle: Text(
          // true?
          'ultimo uso:   ${stringToDateTime(widget.model.metadata.lastRead.date) != null ? DateFormat("dd - MMMM - yyyy").format(
              stringToDateTime(widget.model.metadata.lastRead.date) ??
                  DateTime.now(),
            ) : ''}'
          // : 'Este dispositivo'
          ,
          style: TextStyle(color: Colors.grey),
        ),
        trailing: IconButton(
          onPressed: _confirmDialogBox,
          icon: Icon(CupertinoIcons.clear),
        ),
      ),
    );
  }
}
