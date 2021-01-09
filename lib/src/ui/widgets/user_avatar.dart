import 'package:flutter/material.dart';
import 'package:hive_core/src/utils/constants/const_strings.dart';

class UserAvatar extends StatefulWidget {
  @override
  _UserAvatarState createState() => _UserAvatarState();
}

class _UserAvatarState extends State<UserAvatar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _goEditProfile() => Navigator.pushNamed(
      context, HiveCoreConstString.user_profile_form_srceen);

  @override
  Widget build(BuildContext context) {
    return _smallUserAvatar();
  }

  Widget _smallUserAvatar() {
    return GestureDetector(
      onTap: _goEditProfile,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(
                Icons.account_circle,
                size: 50,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text('Nombre'),
                  ),
                  Container(
                    child: Text(
                      'Correo',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
