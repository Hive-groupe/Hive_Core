import 'dart:async';

import 'package:hive_core/code/data/models/user.dart';
import 'package:rxdart/rxdart.dart';

class UserDataInfo {
  final _userDataInfoController = BehaviorSubject<User?>();

  Stream<User?> get output => _userDataInfoController.stream;
  Sink<User?> get input => _userDataInfoController.sink;

  void close() {
    _userDataInfoController.close();
  }
}

UserDataInfo userDataInfo = UserDataInfo();
