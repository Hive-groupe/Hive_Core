import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:image/image.dart' as Image;
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

class FileTools {
  static Future<File> pickImage({@required ImageSource source}) async {
    File selectedImage = await ImagePicker.pickImage(source: source);
    return selectedImage; // return await compressImage(selectedImage);
  }
/*
  static Future<File> compressImage(File imageToCompress) async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    int rand = Random().nextInt(10000);

    Image.Image image = Image.decodeImage(imageToCompress.readAsBytesSync());
    Image.copyResize(image, width: 500, height: 500);

    return new File('$path/img_$rand.jpg')
      ..writeAsBytesSync(Image.encodeJpg(image, quality: 85));
  }
  */
}
