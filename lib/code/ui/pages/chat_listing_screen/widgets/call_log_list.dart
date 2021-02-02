import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/repositories/call_log_repository/repository/log_repository.dart';
import 'package:hive_core/code/ui/pages/chat_listing_screen/widgets/_ordenar_/cached_image.dart';
import 'package:hive_core/code/ui/pages/chat_listing_screen/widgets/_ordenar_/custom_tile.dart';
import 'package:hive_core/code/utils/constants/hive_const_strings.dart';

import '../../../../models/_organizar/log.dart';
import '../../_organizar/quiet_box.dart';

class CallLogList extends StatefulWidget {
  @override
  _CallLogListState createState() => _CallLogListState();
}

class _CallLogListState extends State<CallLogList> {
  getIcon(String callStatus) {
    Icon _icon;
    double _iconSize = 15;

    switch (callStatus) {
      case CALL_STATUS_DIALLED:
        _icon = Icon(
          Icons.call_made,
          size: _iconSize,
          color: Colors.green,
        );
        break;

      case CALL_STATUS_MISSED:
        _icon = Icon(
          Icons.call_missed,
          color: Colors.red,
          size: _iconSize,
        );
        break;

      default:
        _icon = Icon(
          Icons.call_received,
          size: _iconSize,
          color: Colors.grey,
        );
        break;
    }

    return Container(
      margin: EdgeInsets.only(right: 5),
      child: _icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: LogRepository.getLogs(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasData) {
          List<dynamic> logList = snapshot.data;

          if (logList.isNotEmpty) {
            return Container(
              child: ListView.builder(
                itemCount: logList.length,
                itemBuilder: (context, i) {
                  Log _log = logList[i];
                  bool hasDialled = _log.callStatus == CALL_STATUS_DIALLED;

                  return CustomTile(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    leading: CachedImage(
                      hasDialled ? _log.receiverPic : _log.callerPic,
                      isRound: true,
                      radius: 45,
                    ),
                    mini: false,
                    onLongPress: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Delete this Log?"),
                        content:
                            Text("Are you sure you wish to delete this log?"),
                        actions: [
                          FlatButton(
                            child: Text("YES"),
                            onPressed: () async {
                              Navigator.maybePop(context);
                              await LogRepository.deleteLogs(i);
                              if (mounted) {
                                setState(() {});
                              }
                            },
                          ),
                          FlatButton(
                            child: Text("NO"),
                            onPressed: () => Navigator.maybePop(context),
                          ),
                        ],
                      ),
                    ),
                    title: Text(
                      hasDialled ? _log.receiverName : _log.callerName,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    icon: getIcon(_log.callStatus),
                    subtitle: Text(
                      formatDateString(_log.timestamp),
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  );
                },
              ),
            );
          }
          return QuietBox(
            heading: "This is where all your call logs are listed",
            subtitle: "Calling people all over the world with just one click",
          );
        }

        return QuietBox(
          heading: "This is where all your call logs are listed",
          subtitle: "Calling people all over the world with just one click",
        );
      },
    );
  }

  static String formatDateString(String dateString) {
    DateTime dateTime = DateTime.parse(dateString);
    var formatter = DateFormat('dd/MM/yy');
    return formatter.format(dateTime);
  }
}
