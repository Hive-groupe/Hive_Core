import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive_core/code/models/call.dart';
import 'package:rxdart/rxdart.dart';

part 'call_repository_firebase_impl.dart';

abstract class CallRepository<model> {
  BehaviorSubject<BuiltList<model>> callListController;

  Stream<DocumentSnapshot> callStream({String uid});

  Future<bool> makeCall({model call});

  Future<bool> endCall({model call});
}
