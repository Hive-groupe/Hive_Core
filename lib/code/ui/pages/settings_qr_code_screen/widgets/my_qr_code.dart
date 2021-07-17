import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/domain/controllers/blocs/authentication_bloc/userDataInfo.dart';
import 'package:hive_core/code/data/models/profile.dart';
import 'package:hive_core/code/data/models/user.dart';

class MyQrCode extends StatefulWidget {
  @override
  _MyQrCodeState createState() => _MyQrCodeState();
}

class _MyQrCodeState extends State<MyQrCode> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: userDataInfo.output,
        builder: (context, snapshot) {
          return snapshot.hasData ? _build(snapshot.data!) : _buildNotData();
        });
  }

  Widget _build(User user) {
    return Stack(
      children: [
        Center(
          child: Container(
            width: 300,
            height: 300,
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              //border: Border.all(color: Colors.grey[400]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[350]!,
                  blurRadius: 0.5, // has the effect of softening the shadow
                  spreadRadius: 0.5, // has the effect of extending the shadow
                  offset: Offset(
                    0.0, // horizontal, move right 10
                    0.0, // vertical, move down 10
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(15.0),
              // gradient: new LinearGradient(colors: Colors),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _name(user.profile),
                SizedBox(
                  height: 5,
                ),
                _contactInfo(),
                SizedBox(
                  height: 20,
                ),
                _qrCode(),
              ],
            ),
          ),
        ),
        _buildAvatarHolder(user.profile!.avatar),
      ],
    );
  }

  Widget _buildNotData() {
    return Stack(
      children: [
        Center(
          child: Container(
            width: 300,
            height: 300,
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              //border: Border.all(color: Colors.grey[400]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[350]!,
                  blurRadius: 0.5, // has the effect of softening the shadow
                  spreadRadius: 0.5, // has the effect of extending the shadow
                  offset: Offset(
                    0.0, // horizontal, move right 10
                    0.0, // vertical, move down 10
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(15.0),
              // gradient: new LinearGradient(colors: Colors),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _name(null),
                SizedBox(
                  height: 5,
                ),
                _contactInfo(),
                SizedBox(
                  height: 20,
                ),
                _qrCode(),
              ],
            ),
          ),
        ),
        _buildAvatarHolder(null),
      ],
    );
  }

  _buildAvatarHolder(String? avatar) {
    return Hero(
      tag: 'avatar',
      child: Center(
        child: avatar == null || avatar == ''
            ? _buildAvatarNoFile()
            : _buildAvatarNetwork(avatar),
      ),
    );
  }

  Widget _buildAvatarNoFile() {
    return Container(
      child: Icon(
        Icons.account_circle,
        size: 50,
      ),
    );
  }

  Widget _buildAvatarNetwork(String avatar) {
    return Container(
      child: CircleAvatar(
        radius: 25,
        child: ClipOval(
          child: CachedNetworkImage(
            height: 50.0,
            width: 50.0,
            fit: BoxFit.cover,
            imageUrl: avatar,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }

  Widget _name(Profile? profile) {
    return Container(
      child: Text(
        profile == null
            ? 'Name'
            : '${profile.name} ${profile.firstname} ${profile.secondname ?? ''}',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _contactInfo() {
    return Container(
      child: Text(
        'Contacto de Hive',
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
  }

  Widget _qrCode() {
    return Container(
      height: 175,
      width: 175,
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(25.0),
      ),
    );
  }
}
