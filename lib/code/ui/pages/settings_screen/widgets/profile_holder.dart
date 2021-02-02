import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_core/code/controllers/blocs/authentication_bloc/userDataInfo.dart';
import 'package:hive_core/code/models/profile.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/utils/constants/hive_const_strings.dart';

class PofileHolder extends StatefulWidget {
  const PofileHolder({Key key}) : super(key: key);

  @override
  _PofileHolderState createState() => _PofileHolderState();
}

class _PofileHolderState extends State<PofileHolder> {
  @override
  void initState() {
    super.initState();
  }

  void _goEditProfile() => Navigator.pushNamed(
      context, HiveCoreConstString.user_profile_form_srceen);

  void _goQrScreen() => Navigator.pushNamed(
      context, HiveCoreConstString.route_user_qr_code_settings_screen);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
        stream: userDataInfo.output,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? _pofileHolder(snapshot.data)
              : _pofileNoDataHolder();
        });
  }

  Widget _pofileNoDataHolder() {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: ListTile(
        onTap: _goEditProfile,
        leading: _buildAvatarHolder(null),
        title: Container(
          child: Text('Nombre'),
        ),
        subtitle: Container(
          child: Text('Sobre mi'),
        ),
        trailing: Container(
          child: IconButton(
            onPressed: _goQrScreen,
            icon: Icon(CupertinoIcons.qrcode_viewfinder // CupertinoIcons.qrcode
                ),
          ),
        ),
      ),
    );
  }

  Widget _pofileHolder(User user) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: ListTile(
        onTap: _goEditProfile,
        leading: _buildAvatarHolder(user.profile.avatar),
        title: _nameHolder(user.profile),
        subtitle: Container(
          child: Text('Sobre mi'),
        ),
        trailing: Container(
          child: IconButton(
            onPressed: _goQrScreen,
            icon: Icon(CupertinoIcons.qrcode_viewfinder // CupertinoIcons.qrcode
                ),
          ),
        ),
      ),
    );
  }

  Widget _nameHolder(Profile profile) {
    return Container(
      child: Text(
          '${profile.name} ${profile.firstname ?? ''} ${profile.secondname ?? ''}'),
    );
  }

  _buildAvatarHolder(String avatar) {
    return Hero(
        tag: 'avatar',
        child: avatar == null || avatar == ''
            ? _buildAvatarNoFile()
            : _buildAvatarNetwork(avatar));
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
    ));
  }
}
