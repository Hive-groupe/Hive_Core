part of 'validators.dart';

class EmailValidator {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  final StreamTransformer<String, String> validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (!_emailRegExp.hasMatch(email) || email.isEmpty) {
      sink.addError('Ingrese un correo electrónico válido');
    } else {
      sink.add(email);
    }
  });
}
