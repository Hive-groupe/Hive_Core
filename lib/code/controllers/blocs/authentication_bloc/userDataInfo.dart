import 'dart:async';

import 'package:hive_core/code/models/user.dart';
import 'package:rxdart/rxdart.dart';

class UserDataInfo {
  final _userDataInfoController = BehaviorSubject<User?>();

  Stream<User?> get output => _userDataInfoController.stream;
  Sink<User?> get input => _userDataInfoController.sink;
}

UserDataInfo userDataInfo = UserDataInfo();
