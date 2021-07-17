import 'dart:io';

import 'package:image_picker/image_picker.dart';

class FileTools {
  static Future<File> pickImage({
    required ImageSource source,
  }) async {
    late File _image;
    final picker = ImagePicker();

    final pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
    } else {
      print('No image selected.');
    }

    return _image; // return await compressImage(selectedImage);
  }

/*
  static Future<File> compressImage(File imageToCompress) async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    int rand = Random().nextInt(10000);

    Image.Image image = Image.decodeImage(imageToCompress.readAsBytesSync(),);
    Image.copyResize(image, width: 500, height: 500);

    return new File('$path/img_$rand.jpg')
      ..writeAsBytesSync(Image.encodeJpg(image, quality: 85),);
  }
  */
}
