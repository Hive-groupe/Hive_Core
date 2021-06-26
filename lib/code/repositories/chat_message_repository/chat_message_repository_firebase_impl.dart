part of 'chat_message_repository.dart';

class ChatMessageRepositoryFirebaseImpl
    implements ChatMessageRepository<ChatMessage> {
  late final FirebaseFirestore _db = FirebaseFirestore.instance;
  late final String path;
  late CollectionReference ref;

  @override
  late BehaviorSubject<BuiltList<ChatMessage>> chatRoomsListController;

  @override
  late BehaviorSubject<BuiltList<ChatContact>> contactListController;

  ChatMessageRepositoryFirebaseImpl(
    this.path,
  ) {
    ref = _db.collection(path);
    chatRoomsListController = BehaviorSubject<BuiltList<ChatMessage>>();
    contactListController = BehaviorSubject<BuiltList<ChatContact>>();
  }

  @override
  Future addChatMessage(ChatMessage data) async {
    ref.doc(data.senderId).collection(data.receiverId).add(
          data.toJson(),
        );
    addToContacts(senderId: data.senderId, receiverId: data.receiverId);
    ref.doc(data.receiverId).collection(data.senderId).add(
          data.toJson(),
        );
    // return ref.add(data);
  }

  @override
  Future addChatImageMessage(
    String url,
    String receiverId,
    String senderId,
  ) async {
    ChatMessage message;

    message = ChatMessage((b) => b
      ..message = ""
      ..receiverId = receiverId
      ..senderId = senderId
      ..photoUrl = url
      ..timestamp = DateTime.now().toUtc()
      ..type = ChatMessageType.MESSAGE_TYPE_IMAGE);

    ref.doc(message.senderId).collection(message.receiverId).add(
          message.toJson(),
        );
    ref.doc(message.receiverId).collection(message.senderId).add(
          message.toJson(),
        );
  }

  @override
  Future<bool> removeChatMessage(
    String id,
  ) async {
    await ref.doc(id).delete();
    return true;
  }

  @override
  Future<ChatMessage?> getChatMessageById(
    String id,
  ) async {
    var doc = await ref.doc(id).get();
    return ChatMessage.fromJson(
      doc.data().toString(),
    );
  }

  @override
  Future updateChatMessage(
    Map data,
    String id,
  ) async {
    return await ref.doc(id).update(json.decode(data.toString()));
  }

  @override
  Stream<BuiltList<ChatMessage>> fetchChatMessagesAsStream({
    required String senderId,
    required String receiverId,
  }) {
    ref
        .doc(senderId)
        .collection(receiverId)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .listen(
          (event) => chatRoomsListController.sink.add(BuiltList<ChatMessage>(
            event.docs
                .map(
                  (doc) => ChatMessage.fromJson(
                    doc.data().toString(),
                  )!
                      .rebuild((b) => b..messageId = doc.id),
                )
                .toList(),
          )),
        );

    return chatRoomsListController.stream;
  }

  @override
  Future<List<ChatMessage>> fetchChatMessages() async {
    return [];
  }

  @override
  Future<bool> emptyChat({
    required String senderId,
    required String receiverId,
  }) async {
    try {
      ref.doc(senderId).collection(receiverId).get().then((snapshot) {
        for (DocumentSnapshot doc in snapshot.docs) {
          doc.reference.delete();
        }
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

/*
*================================================================================
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
 * 
 * 
 * 
 * 
 * ==================================================================================
 */
  addToContacts({
    required String senderId,
    required String receiverId,
  }) async {
    Timestamp currentTime = Timestamp.now();

    await addToSenderContacts(senderId, receiverId, currentTime);
    await addToReceiverContacts(senderId, receiverId, currentTime);
  }

  @override
  Future<void> addToSenderContacts(
    String senderId,
    String receiverId,
    currentTime,
  ) async {
    DocumentSnapshot senderSnapshot =
        await getContactsDocument(of: senderId, forContact: receiverId).get();

    if (!senderSnapshot.exists) {
      //does not exists
      ChatContact receiverContact = ChatContact(
        uid: receiverId,
        addedOn: currentTime,
      );

      var receiverMap = receiverContact.toMap(receiverContact);

      await getContactsDocument(of: senderId, forContact: receiverId)
          .set(receiverMap);
    }
  }

  @override
  Future<void> addToReceiverContacts(
    String senderId,
    String receiverId,
    currentTime,
  ) async {
    DocumentSnapshot receiverSnapshot =
        await getContactsDocument(of: receiverId, forContact: senderId).get();

    if (!receiverSnapshot.exists) {
      //does not exists
      ChatContact senderContact = ChatContact(
        uid: senderId,
        addedOn: currentTime,
      );

      var senderMap = senderContact.toMap(senderContact);

      await getContactsDocument(of: receiverId, forContact: senderId)
          .set(senderMap);
    }
  }

  @override
  DocumentReference getContactsDocument({
    required String of,
    required String forContact,
  }) =>
      _db
          .collection(USERS_COLLECTION)
          .doc(of)
          .collection(CONTACTS_COLLECTION)
          .doc(forContact);

  @override
  Stream<BuiltList<ChatContact>> findContactStream({
    required String userId,
  }) {
    ref = _db
        .collection(USERS_COLLECTION)
        .doc(userId)
        .collection(CONTACTS_COLLECTION);

    ref
        . /*orderBy('request.dateOfExpense', descending: true).*/ snapshots()
        .listen(
          (event) => contactListController.sink.add(BuiltList<ChatContact>(
            event.docs
                .map((doc) => ChatContact.fromJson(
                          json.decode(doc.data().toString()),
                        )
                    //  .rebuild((b) => b..metadata.id = doc.id)
                    )
                .toList(),
          )),
        );

    return contactListController.stream;
  }

  @override
  Stream<QuerySnapshot> fetchLastMessageBetween({
    required String senderId,
    required String receiverId,
  }) =>
      ref.doc(senderId).collection(receiverId).orderBy("timestamp").snapshots();
}
