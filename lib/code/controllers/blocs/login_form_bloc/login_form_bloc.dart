import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';

class LoginFormBloc extends FormBloc<String, String> {
  // Repositorys
  final AuthenticationRepository _authenticationRepository;

  // Blocs
  // final AuthenticationBloc _authenticationBloc;

  final email = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.email,
  ]);

  final password = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.passwordMin6Chars,
  ]);

  LoginFormBloc(
      {@required AuthenticationRepository authenticationRepository,
      @required AuthenticationBloc authenticationBloc})
      : assert(authenticationRepository != null),
        assert(authenticationBloc != null),
        _authenticationRepository = authenticationRepository
  //, _authenticationBloc = authenticationBloc
  {
    addFieldBlocs(fieldBlocs: [
      email,
      password,
    ]);
  }

  void addErrors() {
    email.addError('Awesome Error!');
    password.addError('Awesome Error!');
  }

  @override
  void onSubmitting() async {
    try {
      emitLoaded();
      await _authenticationRepository.signInWithCredentials(
        email: email.value,
        password: password.value,
      );

      _isSignedIn();
    } catch (e) {
      emitFailure();
    }
  }

  void loginWithGoogle() async {
    try {
      emitLoaded();
      // await _authenticationRepository.signInWithGoogle();
      // _isSignedIn();
    } catch (_) {
      emitFailure();
    }
  }

  void loginWithFacebook() async {
    /* try {
      emitLoaded();
      await _authenticationRepository.signInWithFacebook();

      _isSignedIn();
    } catch (_) {
      emitFailure();
    }*/
  }

  _isSignedIn() async {
    if (await _authenticationRepository.isSignedIn()) {
      //   _authenticationBloc.add(LoggedIn());
      emitSuccess(canSubmitAgain: true);
    } else {
      emitFailure();
    }
  }
}
