import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/contact_form_bloc/contact_form_bloc.dart';
import 'package:hive_core/code/models/enum/gender.dart';
import 'package:hive_core/code/models/enum/userStateus.dart';
import 'package:hive_core/code/models/profile.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/repositories/user_repository/user_repository.dart';

class RegistrationFormBloc extends FormBloc<String, String> {
  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;

  final email = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.email,
  ]);

  final password = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.passwordMin6Chars,
  ]);

  final confirmPassword = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.passwordMin6Chars,
  ]);

  final avatar = TextFieldBloc(
    validators: [],
  );

  final gender = SelectFieldBloc(
    validators: [FieldBlocValidators.required],
    items: [Gender.MALE, Gender.FEMALE, Gender.OTHER],
  );

  final nickname = TextFieldBloc(
    validators: [],
  );

  final name = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final firstname = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final secondname = TextFieldBloc(
    validators: [],
  );

  ContactFormBloc contactFormBloc;

  Validator<String> _confirmPassword(
    TextFieldBloc passwordTextFieldBloc,
  ) {
    return (String confirmPassword) {
      if (confirmPassword == passwordTextFieldBloc.value) {
        return null;
      }
      return 'Must be equal to password';
    };
  }

  RegistrationFormBloc(
      {@required AuthenticationRepository authenticationRepository,
      @required UserRepository userRepository})
      : assert(authenticationRepository != null),
        assert(userRepository != null),
        _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        // Blocs
        contactFormBloc = ContactFormBloc(
          authenticationRepository: authenticationRepository,
        ) {
    _initState();
  }

  _initState() {
    addFieldBlocs(step: 0, fieldBlocs: [
      email,
      password,
      confirmPassword,
    ]);
    addFieldBlocs(
      step: 1,
      fieldBlocs: [
        nickname,
        name,
        firstname,
        secondname,
        gender,
      ],
    );
    addFieldBlocs(
      step: 2,
      fieldBlocs: [firstname],
    );

    confirmPassword
      ..addValidators([_confirmPassword(password)])
      ..subscribeToFieldBlocs([password]);
  }

  void addErrors() {
    email.addError('Awesome Error!');
    password.addError('Awesome Error!');
    confirmPassword.addError('Awesome Error!');
  }

  @override
  void onSubmitting() async {
    if (state.currentStep == 0) {
      emitSuccess();
    } else if (state.currentStep == 1) {
      emitSuccess();
    } else if (state.currentStep == 2) {
      _saveData();
      emitSuccess();
    }
  }

  _saveData() async {
    try {
      emitLoaded();

      // Define values
      // String _username;
      String _userId;
      String _mail;
      String _password;

      String _avatar;
      Gender _gender;
      String _name;
      String _firstname;
      String _secondname;
      String _nickname;

      User _user;
      Profile _profile;

      // Init values
      _mail = email.value;
      _password = password.value;

      _avatar = avatar.value;
      _gender = gender.value;
      _name = name.value;
      _firstname = firstname.value;
      _secondname = secondname.value;
      _nickname = nickname.value;

      _profile = Profile((b) => b
        ..contactInformation.replace(contactFormBloc.getContactInformation())
        ..avatar = _avatar
        ..gender = _gender
        ..name = _name
        ..firstname = _firstname
        ..secondname = _secondname
        ..nickname = _nickname);

      // Registration user
      await _authenticationRepository.signUp(email: _mail, password: _password);

      // login user
      await _authenticationRepository.signInWithCredentials(
          email: _mail, password: _password);

      _userId = await _authenticationRepository.getCurrentUserId();

      _user = User((b) => b
        ..id = _userId
        ..username = _mail
        ..password = _password
        ..profile.replace(_profile)
        ..userStatus = UserStatus.online);

      // Save user data
      await _userRepository.addUser(_user.toJson());

      emitSuccess(canSubmitAgain: true);
    } catch (_) {
      emitFailure();
    }
  }
}
