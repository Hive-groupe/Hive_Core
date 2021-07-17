part of 'validators.dart';


const String _nameRule = r"";

class NameValidator {

  final StreamTransformer<String,String> validateName = StreamTransformer<String,String>.fromHandlers(handleData: (email, sink){
    final RegExp nameExp = new RegExp(_nameRule);

    if (!nameExp.hasMatch(email) || email.isEmpty){
      sink.addError('Ingrese un nombre válido');
    } else {
      sink.add(email);
    }
  });
}