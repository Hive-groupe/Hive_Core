part of 'device_repository.dart';

class DeviceRepositoryFirebaseImpl implements DeviceRepository<Device> {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String userId;
  final String path;
  CollectionReference ref;

  BehaviorSubject<BuiltList<Device>> _deviceListController;
  BehaviorSubject<Device> _thisDeviceController;

  DeviceRepositoryFirebaseImpl({@required this.userId, @required this.path}) {
    ref = _db.collection(USERS_COLLECTION).doc(userId).collection(path);
    _deviceListController = BehaviorSubject<BuiltList<Device>>();
    _thisDeviceController = BehaviorSubject<Device>();
  }

  @override
  Future<String> addDevice(Map data) async {
    var orderRef = ref.doc(data['id']);
    orderRef.set(data);
    return orderRef.id;
  }

  @override
  Future<bool> removeDevice(String id) async {
    await ref.doc(id).delete();
    return true;
  }

  @override
  Future<Device> getDeviceById(String id) async {
    return await ref.doc(id).get().then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document data: ${documentSnapshot.data()}');
        return Device.fromJson(documentSnapshot.data());
      } else {
        print('Document does not exist on the database');
        return null;
      }
    });
  }

  @override
  Future updateDevice(Map device, String id) async {
    return await ref.doc(id).update(device);
  }

  @override
  Future<List<Device>> findDevice() async {
    List<Device> _list;

    QuerySnapshot docs =
        await ref /*.orderBy('lastRead', descending: true)*/ .get();

    _list = docs.docs
        .map((doc) =>
            Device.fromJson(doc.data()).rebuild((b) => b..metadata.id = doc.id))
        .toList();
    return _list;
  }

  @override
  Future<Device> getThisDevice(String notificationsToken) async {
    // Declaration of values
    List<Device> _devicesList;

    // values initialization
    _devicesList = await findDevice();
    _devicesList = _devicesList
        .where((element) => element.notificationsToken == notificationsToken)
        .toList();

    // Check is a known device
    return _devicesList.length > 0 ? _devicesList[0] : null;
  }

  @override
  Future<bool> isThisDeviceKnown(String notificationsToken) async =>
      await getThisDevice(notificationsToken) != null;

  @override
  Stream<BuiltList<Device>> findDeviceStream() {
    ref /*.orderBy('lastRead', descending: true)*/ .snapshots().listen(
        (event) => _deviceListController.sink.add(BuiltList<Device>(event.docs
            .map((doc) => Device.fromJson(doc.data())
                .rebuild((b) => b..metadata.id = doc.id))
            .toList())));

    return _deviceListController.stream;
  }
}
