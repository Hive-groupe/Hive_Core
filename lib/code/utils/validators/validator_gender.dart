part of 'validators.dart';

const String _genderRule = r"[H,M,?]";

class GenderValidator {
  final StreamTransformer<String,String> validateGender = StreamTransformer<String,String>.fromHandlers(handleData: (email, sink){
    final RegExp emailExp = new RegExp(_genderRule);

    if (!emailExp.hasMatch(email) || email.isEmpty){
      sink.addError('Ingrese un genero válido');
    } else {
      sink.add(email);
    }
  });
}