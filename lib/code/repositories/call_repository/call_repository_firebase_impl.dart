part of 'call_repository.dart';

class CallRepositoryFirebaseImpl implements CallRepository<Call> {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String path;
  CollectionReference ref;

  @override
  BehaviorSubject<BuiltList<Call>> callListController;

  CallRepositoryFirebaseImpl(this.path) {
    ref = _db.collection(path);
    callListController = BehaviorSubject<BuiltList<Call>>();
  }

  @override
  Stream<DocumentSnapshot> callStream({String uid}) => ref.doc(uid).snapshots();
  /*Stream<Call> callStream({String uid}) {
    BehaviorSubject<Call> _callController = BehaviorSubject<Call>();

    ref
        .document(uid)
        .snapshots()
        .listen((event) => _callController.sink.add(Call.fromJson(event.data)));

    return _callController.stream;
  }*/

  @override
  Future<bool> makeCall({Call call}) async {
    try {
      call = call.rebuild((b) => b..hasDialled = true);

      Map<String, dynamic> hasDialledMap = call.toJson();

      call = call.rebuild((b) => b..hasDialled = false);
      Map<String, dynamic> hasNotDialledMap = call.toJson();

      await ref.doc(call.callerId).set(hasDialledMap);
      await ref.doc(call.receiverId).set(hasNotDialledMap);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> endCall({Call call}) async {
    try {
      await ref.doc(call.callerId).delete();
      await ref.doc(call.receiverId).delete();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
