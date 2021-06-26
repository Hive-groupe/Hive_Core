part of 'user_repository.dart';

class UserRepositoryFirebaseImpl implements UserRepository<User> {
  late final FirebaseFirestore _db = FirebaseFirestore.instance;
  late final String path;
  late CollectionReference ref;

  @override
  late BehaviorSubject<User> _userController;

  @override
  late BehaviorSubject<BuiltList<User>> _userListController;

  UserRepositoryFirebaseImpl(
    this.path,
  ) {
    ref = _db.collection(path);

    _userController = BehaviorSubject<User>();
    _userListController = BehaviorSubject<BuiltList<User>>();
  }

  @override
  Future<String> addUser(
    Map data,
  ) async {
    var orderRef = ref.doc(data['id']);
    orderRef.set(data);
    return orderRef.id;
  }

  @override
  Future<bool> removeUser(
    String id,
  ) async {
    await ref.doc(id).delete();
    return true;
  }

  @override
  Future<User?> getUserById(
    String id,
  ) async {
    return await ref.doc(id).get().then(
      (DocumentSnapshot documentSnapshot) {
        if (documentSnapshot.exists) {
          print('Document data: ${documentSnapshot.data()}');
          return User.fromJson(
            documentSnapshot.data().toString(),
          );
        } else {
          print('Document does not exist on the database');
          return null;
        }
      },
    );
  }

  @override
  Stream<User?> getStreamUserById(
    String id,
  ) {
    BehaviorSubject<User> _userController = BehaviorSubject<User>();

    ref.doc(id).snapshots().listen(
          (event) => _userController.sink.add(
            User.fromJson(
              event.data().toString(),
            )!,
          ),
        );

    return _userController.stream;
  }

  @override
  Future updateUser(
    Map data,
    String id,
  ) async {
    return await ref.doc(id).update(json.decode(data.toString()));
  }

  @override
  Stream<BuiltList<User>> fetchAllUsers({
    required String currentUserId,
  }) {
    ref /*.orderBy('lastRead', descending: true)*/ .snapshots().listen(
          (event) => _userListController.sink.add(
            BuiltList<User>(
              event.docs
                  .map(
                    (doc) => User.fromJson(
                      doc.data().toString(),
                    )!
                        .rebuild((b) => b..id = doc.id),
                  )
                  .where((doc) => doc.id != currentUserId)
                  .toList(),
            ),
          ),
        );

    return _userListController.stream;
  }
}
