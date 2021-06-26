part of 'storage_repository.dart';

class StorageRepositoryFirebaseImpl extends StorageRepository {
  late final FirebaseStorage _db = FirebaseStorage.instance;
  late final String userId;
  late final String path;
  late Reference ref;

  StorageRepositoryFirebaseImpl({
    required this.userId,
    required this.path,
  }) {
    ref = _db.ref().child(path); // .child('$USERS_COLLECTION/$userId/$path');
  }

  /**
   * ***************************************************************************
   *                                                                           *
   *                                  FILE                                     *
   *                                                                           *
   * ***************************************************************************
   */

  @override
  Future<bool> removeFile(String id) async {
    try {
      ref.child(id).delete().then(
            (_) => print('Successfully deleted $path storage item'),
          );
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<String?> updateFile(
      {required File file,
      required String path,
      required String fileName}) async {
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

  /**
   * ***************************************************************************
   *                                                                           *
   *                                  FOLDER                                   *
   *                                                                           *
   * ***************************************************************************
   */

  @override
  void removeFolder({
    required String path,
  }) {}
}
