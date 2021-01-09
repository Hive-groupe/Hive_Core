import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/src/models/enum/userStateus.dart';
import 'package:hive_core/src/models/user.dart';
import 'package:hive_core/src/repositories/user_repository/user_repository.dart';

class OnlineDotIndicator extends StatelessWidget {
  final String uid;
  UserRepository _authMethods;

  OnlineDotIndicator({
    @required this.uid,
  });

  initState(BuildContext context) {
    _authMethods = context.repository<UserRepository>();
  }

  getColor(UserStatus state) {
    switch (state) {
      case UserStatus.offline:
        return Colors.red;
      case UserStatus.online:
        return Colors.green;
      default:
        return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    initState(context);
    return _build();
  }

  Widget _build() {
    return Align(
      alignment: Alignment.bottomRight,
      child: StreamBuilder<User>(
        stream: _authMethods.getStreamUserById(
          uid,
        ),
        builder: (context, snapshot) {
          User user;
          if (snapshot.hasData && snapshot.data != null) {
            user = snapshot.data;
          }
          return Container(
            height: 10,
            width: 10,
            margin: EdgeInsets.only(right: 5, top: 5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: getColor(user?.userStatus),
            ),
          );
        },
      ),
    );
  }
}
