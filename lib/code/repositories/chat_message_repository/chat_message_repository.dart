import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/models/_organizar/chat_contact.dart';
import 'package:hive_core/code/models/chat_message.dart';
import 'package:hive_core/code/models/enum/chat_message_type.dart';
import 'package:hive_core/code/utils/constants/const_strings.dart';
import 'package:rxdart/rxdart.dart';

part 'chat_message_repository_firebase_impl.dart';

abstract class ChatMessageRepository<model> {
  BehaviorSubject<BuiltList<ChatMessage>> chatRoomsListController;
  BehaviorSubject<BuiltList<ChatContact>> contactListController;

  Future addChatMessage(ChatMessage data);

  Future addChatImageMessage(String url, String receiverId, String senderId);

  Future<model> getChatMessageById(String id);

  Future updateChatMessage(Map data, String id);

  Future<bool> removeChatMessage(String id);

  Future<List<model>> fetchChatMessages();

  Stream<BuiltList<ChatMessage>> fetchChatMessagesAsStream(
      {String senderId, String receiverId});

  Future<bool> emptyChat(
      {@required String senderId, @required String receiverId});

/**================================================================================
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 *             REACCER
 * 
 * 
 * 
 * Pasar a Contact reposirtory
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * ==================================================================================
 */

  Future<void> addToSenderContacts(
    String senderId,
    String receiverId,
    currentTime,
  );

  Future<void> addToReceiverContacts(
    String senderId,
    String receiverId,
    currentTime,
  );
  DocumentReference getContactsDocument({String of, String forContact});

  Stream<BuiltList<ChatContact>> findContactStream({String userId});

  Stream<QuerySnapshot> fetchLastMessageBetween({
    @required String senderId,
    @required String receiverId,
  });
}
