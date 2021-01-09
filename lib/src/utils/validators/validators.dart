import 'dart:async';

part 'validator_email.dart';
part 'validator_gender.dart';
part 'validator_name.dart';
part 'validator_password.dart';
part 'validator_phone.dart';
part 'validator_surname.dart';


class Validators {
  // Crear regExp
  //  - Email:
  static final RegExp _emailRegExp = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$');

  //  - Password:
  static final RegExp _passwordRegExp =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$');

  // Funciones:
  // isValidEmail
  static isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  // isValidPassword
  static isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }
}
