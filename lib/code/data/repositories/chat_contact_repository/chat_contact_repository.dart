import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive_core/code/data/models/_organizar/chat_contact.dart';
import 'package:rxdart/rxdart.dart';

part 'chat_contact_repository_firebase_impl.dart';

abstract class ChatContactRepository<model> {
  late BehaviorSubject<BuiltList<ChatContact>> _contactListController;

  Future<String> addContact(Map<String, dynamic> data);
  Future<model?> getContactById(String id);
  Future updateContact(Map<String, dynamic> data, String id);
  Future<bool?> removeContact(String id);
  Future<List<model>> findContact();
  Stream<BuiltList<model>> findContactStream();
}
