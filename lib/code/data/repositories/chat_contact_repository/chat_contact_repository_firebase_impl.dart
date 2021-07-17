part of 'chat_contact_repository.dart';

class ChatContactRepositoryFirebaseImpl
    implements ChatContactRepository<ChatContact> {
  late final FirebaseFirestore _db = FirebaseFirestore.instance;
  late final String userId;
  late final String path;
  late CollectionReference ref;

  @override
  late BehaviorSubject<BuiltList<ChatContact>> _contactListController;

  ChatContactRepositoryFirebaseImpl({
    required this.userId,
    required this.path,
  }) {
    ref = _db.collection('users').doc(userId).collection(path);
    _contactListController = BehaviorSubject<BuiltList<ChatContact>>();
  }

  @override
  Future<String> addContact(
    Map<String, dynamic> data,
  ) async {
    var orderRef = ref.doc(data['id']);
    orderRef.set(data);
    return orderRef.id;
  }

  @override
  Future<bool?> removeContact(
    String id,
  ) async {
    await ref.doc(id).delete();
    return true;
  }

  @override
  Future<ChatContact?> getContactById(
    String id,
  ) async {
    return await ref.doc(id).get().then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document data: ${documentSnapshot.data()}');
        return ChatContact.fromJson(
          json.decode(documentSnapshot.data().toString()),
        );
      } else {
        print('Document does not exist on the database');
        return null;
      }
    });
  }

  @override
  Future updateContact(
    Map<String, dynamic> data,
    String id,
  ) async {
    return await ref.doc(id).update(data);
  }

  @override
  Future<List<ChatContact>> findContact() async {
    List<ChatContact> _list;

    QuerySnapshot documents = await ref
        //.orderBy('request.dateOfExpense', descending: true)
        .get();
    _list = documents.docs
        .map((doc) => ChatContact.fromJson(
              json.decode(doc.data().toString()),
            ))
        .toList();

    return _list;
  }

  @override
  Stream<BuiltList<ChatContact>> findContactStream() {
    ref //.orderBy('request.dateOfExpense', descending: true)
        .snapshots()
        .listen(
          (event) => _contactListController.sink.add(BuiltList<ChatContact>(
            event.docs
                .map((doc) => ChatContact.fromJson(
                      json.decode(doc.data().toString()),
                    ))
                .toList(),
          )),
        );

    return _contactListController.stream;
  }
}
