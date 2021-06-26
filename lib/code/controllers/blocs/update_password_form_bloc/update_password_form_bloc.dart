import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';

class UpdatePasswordFormBloc extends FormBloc<String, String> {
  final AuthenticationRepository _authenticationRepository;

  final currentPassword = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.passwordMin6Chars,
  ]);

  final newPassword = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.passwordMin6Chars,
  ]);

  final confirmNewPassword = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.passwordMin6Chars,
  ]);

  Validator<String> _confirmPassword(
    TextFieldBloc passwordTextFieldBloc,
  ) {
    return (
      String? confirmPassword,
    ) {
      if (confirmPassword == passwordTextFieldBloc.value) {
        return null;
      }
      return 'Must be equal to password';
    };
  }

  UpdatePasswordFormBloc({
    required AuthenticationRepository authenticationRepository,
  }) : _authenticationRepository = authenticationRepository {
    addFieldBlocs(fieldBlocs: [
      currentPassword,
      newPassword,
      confirmNewPassword,
    ]);

    confirmNewPassword
      ..addValidators([_confirmPassword(newPassword)])
      ..subscribeToFieldBlocs([newPassword]);
  }

  void addErrors() {
    currentPassword.addError('Awesome Error!');
    newPassword.addError('Awesome Error!');
    confirmNewPassword.addError('Awesome Error!');
  }

  @override
  void onSubmitting() async {
    try {
      emitLoaded();
      if (newPassword.value == confirmNewPassword.value) {
        await _authenticationRepository.updatePassword(
          password: newPassword.value ?? '',
        )
            ? emitSuccess(canSubmitAgain: true)
            : emitFailure();
      }
    } catch (e) {
      emitFailure();
    }
  }
}
