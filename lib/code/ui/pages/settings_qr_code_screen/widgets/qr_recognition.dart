import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/utils/othes/scanner_tools.dart';
import 'package:hive_core/code/utils/tools/file_tools.dart';
import 'package:image_picker/image_picker.dart';

// Ejemplo de reconocimiento de texto con ML Firebase:
//   https://github.com/manudevcode/flutter-text-recognition
//   https://www.youtube.com/watch?v=DjvGID2jNSY
class QrRecognition extends StatefulWidget {
  QrRecognition({Key key}) : super(key: key);

  @override
  _QrRecognitionState createState() => _QrRecognitionState();
}

class _QrRecognitionState extends State<QrRecognition> {
  CameraLensDirection _direction = CameraLensDirection.back;

  CameraController _camera;
  File imageFile;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  @override
  void dispose() {
    _camera?.dispose();
    super.dispose();
  }

  void _initializeCamera() async {
    final CameraDescription description =
        await ScannerTools.getCamera(_direction);
    print(description.name);
    setState(() {
      _camera = CameraController(
        description,
        ResolutionPreset.high,
      );
    });

    await _camera.initialize();
    print('inited CAMERA');
  }

  void pickImage({@required ImageSource source}) async {
    File selectedImage = await FileTools.pickImage(source: source);

    setState(() {
      return imageFile = selectedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          imageFile != null ? _imagefileScreen() : _cameraScreen(),
          _qrHolder(),
          _btnGallery(),
        ],
      ),
    );
  }

  Widget _cameraScreen() {
    return _camera == null
        ? Container(
            color: Theme.of(context).primaryColor,
          )
        : Container(
            height: MediaQuery.of(context).size.height,
            child: CameraPreview(_camera));
  }

  Widget _imagefileScreen() {
    return Container(
      child: Image(
        height: 150.0,
        width: 150.0,
        image: AssetImage(imageFile.path),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _qrHolder() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(100),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]),
              borderRadius: BorderRadius.circular(15.0),
              // gradient: new LinearGradient(colors: Colors),
            ),
          )
        ],
      ),
    );
  }

  Widget _btnGallery() {
    return Positioned(
        bottom: 50,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // _text ==  '' ?
              GestureDetector(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () => pickImage(source: ImageSource.gallery),
                    icon: Icon(
                      CupertinoIcons.photo,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
