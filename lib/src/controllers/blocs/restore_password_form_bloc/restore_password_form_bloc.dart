import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/src/repositories/authentication_repository/authentication_repository.dart';

class RestorePasswordFormBloc extends FormBloc<String, String> {
  final AuthenticationRepository _authenticationRepository;

  final email = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.email,
  ]);

  RestorePasswordFormBloc(
      {@required AuthenticationRepository authenticationRepository})
      : assert(authenticationRepository != null),
        _authenticationRepository = authenticationRepository {
    addFieldBlocs(fieldBlocs: [
      email,
    ]);
  }

  void addErrors() {
    email.addError('Awesome Error!');
  }

  @override
  void onSubmitting() async {
    try {
      emitLoaded();
      await _authenticationRepository.recoverPassword(
              language: 'en', email: email.value)
          ? emitSuccess(canSubmitAgain: true)
          : emitFailure();
    } catch (e) {
      emitFailure();
    }
  }
}
