import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

part 'storage_repository_firebase_impl.dart';

abstract class StorageRepository {
  /**
   * ***************************************************************************
   *                                                                           *
   *                                  FILE                                     *
   *                                                                           *
   * ***************************************************************************
   */

  Future<String?> updateFile({
    required File file,
    required String path,
    required String fileName,
  });

  Future<bool> removeFile(
    String id,
  );

  /*
   * ***************************************************************************
   *                                                                           *
   *                                  FOLDER                                   *
   *                                                                           *
   * ***************************************************************************
   */

  void removeFolder({
    required String path,
  });
}
