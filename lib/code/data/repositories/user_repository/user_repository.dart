import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:hive_core/code/data/models/user.dart';
import 'package:rxdart/rxdart.dart';

part 'user_repository_firebase_impl.dart';
part 'user_repository_json_impl.dart';

abstract class UserRepository<model> {
  late BehaviorSubject<BuiltList<User>> _userListController;
  late BehaviorSubject<User> _userController;

  Future<String> addUser(Map data);
  Future<model?> getUserById(String id);
  Stream<model?> getStreamUserById(String id);
  Future updateUser(Map data, String id);
  Future<bool> removeUser(String id);
  Stream<BuiltList<model>> fetchAllUsers({required String currentUserId});
}
