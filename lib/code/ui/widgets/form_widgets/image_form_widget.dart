import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/domain/tools/file_tools.dart';
import 'package:image_picker/image_picker.dart';

class ImageFormWidget extends StatefulWidget {
  final String heroId;
  File billPhotoFile;
  final Stream<TextFieldBloc> photoUrl;
  final IconData iconData;
  final Function onPressed;

  ImageFormWidget({
    Key? key,
    required this.heroId,
    required this.billPhotoFile,
    required this.photoUrl,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  @override
  _ImageFormWidgetState createState() => _ImageFormWidgetState();
}

class _ImageFormWidgetState extends State<ImageFormWidget> {
  Future<void> _optionsDialogBox() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                GestureDetector(
                  onTap: () => pickImage(source: ImageSource.camera),
                  child: ListTile(
                    leading: Icon(Icons.photo_camera),
                    title: Text('Toma una foto'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                GestureDetector(
                  onTap: () => pickImage(source: ImageSource.gallery),
                  child: ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Seleccionar de la galería'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void pickImage({
    required ImageSource source,
  }) async {
    Navigator.pop(context);
    File selectedImage = await FileTools.pickImage(source: source);

    widget.onPressed(selectedImage);

    setState(() {
      widget.billPhotoFile = selectedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _billHolderImage();
  }

  Widget _billHolderImage() {
    return StreamBuilder<TextFieldBloc>(
      stream: widget.photoUrl,
      builder: (context, snapshot) {
        return GestureDetector(
          onTap: _optionsDialogBox,
          child: Hero(
            tag: widget.heroId,
            child: widget.billPhotoFile != null
                // Si estamos cargando la imagen desde el dispositivo
                ? _buildImageLocalFile()
                : snapshot.data!.value == null || snapshot.data!.value == ''
                    ? //Si no hay imagen
                    _buildImageNoFile()
                    : //Si cargamos la imagen desde internet
                    _buildImageNetwork(snapshot.data!.value ?? ''),
          ),
        );
      },
    );
  }

  Widget _buildImageLocalFile() {
    return CircleAvatar(
      radius: 75,
      child: ClipOval(
        child: Image(
          height: 150.0,
          width: 150.0,
          image: AssetImage(widget.billPhotoFile.path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildImageNetwork(String url) {
    return CircleAvatar(
      radius: 75,
      child: ClipOval(
        child: CachedNetworkImage(
          height: 150.0,
          width: 150.0,
          fit: BoxFit.cover,
          imageUrl: url,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }

  Widget _buildImageNoFile() {
    return Icon(
      widget.iconData,
      size: 125,
    );
  }
}
