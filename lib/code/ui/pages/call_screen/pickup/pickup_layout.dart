import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/call_screen_bloc/call_sreen_bloc.dart';
import 'package:hive_core/code/data/models/call.dart';
import 'package:hive_core/code/data/repositories/call_repository/call_repository.dart';
import 'package:hive_core/code/ui/pages/login_form_screen/login_form_screen.dart';
import 'package:hive_core/code/ui/constants/hive_const_strings.dart';

import 'pickup_screen.dart';

class PickupLayout extends StatelessWidget {
  late CallSreenBloc _callBloc;

  final Widget scaffold;
  final CallRepository _callRepository =
      CallRepositoryFirebaseImpl(CALL_COLLECTION);

  PickupLayout({
    required this.scaffold,
  });

  @override
  Widget build(BuildContext context) {
    _callBloc = BlocProvider.of<CallSreenBloc>(context);

    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is Authenticated) {
          return _authenticatedBuild();
        } else if (state is Uninitialized) {
          return _uninitializedBuild();
        } else {
          return _uninitializedBuild();
        }
      },
    );
  }

  Widget _authenticatedBuild() {
    return StreamBuilder<DocumentSnapshot>(
      stream: _callRepository.callStream(
        uid: _callBloc.state.currentUserId,
      ),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data!.data() != null) {
          Call? call = Call.fromJson(
            json.decode(snapshot.data!.data().toString()),
          );

          if (!call!.hasDialled!) {
            return PickupScreen(call: call);
          }
        }
        return scaffold;
      },
    );
  }

  Widget _uninitializedBuild() {
    return LoginFormSrceen();
  }
}
