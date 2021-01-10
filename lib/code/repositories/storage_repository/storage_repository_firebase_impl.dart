part of 'storage_repository.dart';

class StorageRepositoryFirebaseImpl extends StorageRepository {
  final FirebaseStorage _db = FirebaseStorage.instance;
  final String userId;
  final String path;
  Reference ref;

  StorageRepositoryFirebaseImpl({@required this.userId, @required this.path}) {
    ref = _db.ref().child(path); // .child('$USERS_COLLECTION/$userId/$path');
  }

  @override
  Future<bool> removeFile(String id) {
    return ref.child(id).delete();
  }

  @override
  Future<String> updateFile(
      {@required File file,
      @required String path,
      @required String fileName}) async {
    try {
      //String fileName = basename(_file.path);
      UploadTask uploadTask = ref.child(fileName).putFile(file);

      print('Image uploaded');

      var downUrl = await (await uploadTask).ref.getDownloadURL();
      var url = downUrl.toString();

      print('Download URL: ${url}');

      return url;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
