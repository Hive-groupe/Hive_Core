import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:hive_core/code/controllers/blocs/authentication_bloc/userDataInfo.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/utils/constants/hive_const_strings.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  AuthenticationBloc _authenticationBloc;

  @override
  void initState() {
    _authenticationBloc = context.bloc<AuthenticationBloc>();
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  void _goSettings() {
    Navigator.pushNamed(
        context, HiveCoreConstString.route_user_settings_screen);
  }

  void _goAssistantScreen() =>
      Navigator.pushNamed(context, HiveCoreConstString.route_assistant_screen);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        cubit: _authenticationBloc,
        listener: (context, state) {},
        builder: (context, state) {
          if (state is Authenticated) {
            return _buildData(state);
          } else {
            return Container();
          }
        });
  }

  Widget _buildData(Authenticated state) {
    return GestureDetector(
      onTap: _goAssistantScreen,
      child: Container(
        margin: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0, // has the effect of softening the shadow
              spreadRadius: 1.0, // has the effect of extending the shadow
              offset: Offset(
                3.0, // horizontal, move right 10
                3.0, // vertical, move down 10
              ),
            )
          ],
          borderRadius: BorderRadius.circular(15.0),
          // gradient: new LinearGradient(colors: Colors),
        ),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _text(),
              Container(
                child: Row(children: [
                  _microphone(),
                  _buildAvatarHolder(state),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _text() {
    return Container(
        child: Row(
      children: [
        Container(
          child: Icon(Icons.search),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          child: Text(
            'Buscar aqui',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    ));
  }

  Widget _microphone() {
    return Container(
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.mic),
      ),
    );
  }

  _buildAvatarHolder(Authenticated state) {
    return Hero(
        tag: 'avatar',
        child: GestureDetector(
            onTap: _goSettings,
            child: StreamBuilder<User>(
                stream: userDataInfo.output,
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? snapshot.data.profile.avatar == null ||
                              snapshot.data.profile.avatar == ''
                          ? _buildAvatarNoFile()
                          : _buildAvatarNetwork(snapshot.data.profile.avatar)
                      : _buildAvatarNoFile();
                })));
  }

  Widget _buildAvatarNoFile() {
    return Container(
      child: Icon(
        Icons.account_circle,
        size: 35,
      ),
    );
  }

  Widget _buildAvatarNetwork(String avatar) {
    return Container(
        child: CircleAvatar(
      radius: 20,
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
