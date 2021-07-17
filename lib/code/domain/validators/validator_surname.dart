part of 'validators.dart';

const String _surmaneRule = r"";

class SurnameValidator {
  final StreamTransformer<String,String> validateSurname = StreamTransformer<String,String>.fromHandlers(handleData: (email, sink){
    final RegExp surnameExp = new RegExp(_surmaneRule);

    if (!surnameExp.hasMatch(email) || email.isEmpty){
      sink.addError('Ingrese un apellido válido');
    } else {
      sink.add(email);
    }
  });
}