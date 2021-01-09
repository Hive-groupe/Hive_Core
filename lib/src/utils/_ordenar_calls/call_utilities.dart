import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive_core/src/models/_organizar/log.dart';
import 'package:hive_core/src/models/call.dart';
import 'package:hive_core/src/models/user.dart';
import 'package:hive_core/src/repositories/call_log_repository/repository/log_repository.dart';
import 'package:hive_core/src/repositories/call_repository/call_repository.dart';
import 'package:hive_core/src/ui/pages/call_screen/call_screen.dart';
import 'package:hive_core/src/utils/constants/const_strings.dart';

class CallUtils {
  static final CallRepository _callRepository =
      CallRepositoryFirebaseImpl(CALL_COLLECTION);

  static dial({User from, User to, context}) async {
    Call call = Call((b) => b
      ..callerId = from.id
      ..callerName = from.profile.name
      ..callerPic = from.profile.avatar
      ..receiverId = to.id
      ..receiverName = to.profile.name
      ..receiverPic = to.profile.avatar
      ..channelId = Random().nextInt(1000).toString());

    Log log = Log(
      callerName: from.profile.name,
      callerPic: from.profile.avatar,
      callStatus: CALL_STATUS_DIALLED,
      receiverName: to.profile.name,
      receiverPic: to.profile.avatar,
      timestamp: DateTime.now().toString(),
    );

    bool callMade = await _callRepository.makeCall(call: call);

    call = call.rebuild((b) => b..hasDialled = true);

    if (callMade) {
      // enter log
      LogRepository.addLogs(log);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CallScreen(call: call),
        ),
      );
    }
  }
}
