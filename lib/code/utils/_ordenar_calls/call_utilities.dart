import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive_core/code/models/_organizar/log.dart';
import 'package:hive_core/code/models/call.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/repositories/call_log_repository/repository/log_repository.dart';
import 'package:hive_core/code/repositories/call_repository/call_repository.dart';
import 'package:hive_core/code/ui/pages/call_screen/call_screen.dart';
import 'package:hive_core/code/utils/constants/hive_const_strings.dart';

class CallUtils {
  static final CallRepository _callRepository =
      CallRepositoryFirebaseImpl(CALL_COLLECTION);

  static dial({
    required User from,
    required User to,
    context,
  }) async {
    Call call = Call(
      (b) => b
        ..callerId = from.id
        ..callerName = from.profile!.name
        ..callerPic = from.profile!.avatar
        ..receiverId = to.id
        ..receiverName = to.profile!.name
        ..receiverPic = to.profile!.avatar
        ..channelId = Random().nextInt(1000).toString(),
    );

    Log log = Log(
      callerName: from.profile!.name,
      callerPic: from.profile!.avatar ?? '',
      callStatus: CALL_STATUS_DIALLED,
      receiverName: to.profile!.name,
      receiverPic: to.profile!.avatar ?? '',
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
