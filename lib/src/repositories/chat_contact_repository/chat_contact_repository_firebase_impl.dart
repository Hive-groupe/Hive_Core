part of 'chat_contact_repository.dart';

class ChatContactRepositoryFirebaseImpl
    implements ChatContactRepository<ChatContact> {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String userId;
  final String path;
  CollectionReference ref;

  @override
  BehaviorSubject<BuiltList<ChatContact>> _contactListController;

  ChatContactRepositoryFirebaseImpl(
      {@required this.userId, @required this.path}) {
    ref = _db.collection('users').doc(userId).collection(path);
    _contactListController = BehaviorSubject<BuiltList<ChatContact>>();
  }

  @override
  Future<String> addContact(Map data) async {
    var orderRef = ref.doc(data['id']);
    orderRef.set(data);
    return orderRef.id;
  }

  @override
  Future<bool> removeContact(String id) async {
    await ref.doc(id).delete();
    return true;
  }

  @override
  Future<ChatContact> getContactById(String id) async {
    return await ref.doc(id).get().then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document data: ${documentSnapshot.data()}');
        return ChatContact.fromJson(documentSnapshot.data());
      } else {
        print('Document does not exist on the database');
        return null;
      }
    });
  }

  @override
  Future updateContact(Map data, String id) async {
    return await ref.doc(id).update(data);
  }

  @override
  Future<List<ChatContact>> findContact() async {
    List<ChatContact> _list;

    QuerySnapshot documents = await ref
        //.orderBy('request.dateOfExpense', descending: true)
        .get();
    _list =
        documents.docs.map((doc) => ChatContact.fromJson(doc.data())).toList();

    return _list;
  }

  @override
  Stream<BuiltList<ChatContact>> findContactStream() {
    ref //.orderBy('request.dateOfExpense', descending: true)
        .snapshots()
        .listen((event) => _contactListController.sink.add(
            BuiltList<ChatContact>(event.docs
                .map((doc) => ChatContact.fromJson(doc.data()))
                .toList())));

    return _contactListController.stream;
  }
}
