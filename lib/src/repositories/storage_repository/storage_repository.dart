import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

part 'storage_repository_firebase_impl.dart';

abstract class StorageRepository {
  Future<String> updateFile(
      {@required File file, @required String path, @required String fileName});
  Future<bool> removeFile(String id);
}
