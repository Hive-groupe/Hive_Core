part of 'validators.dart';

const String _phoneRule = r"";

class PhoneValidator {
  final StreamTransformer<String,String> validatePhone = StreamTransformer<String,String>.fromHandlers(handleData: (phone, sink){
    final RegExp phoneExp = new RegExp(_phoneRule);

    if (!phoneExp.hasMatch(phone) || phone.isEmpty){
      sink.addError('Ingrese un teléfono válido');
    } else {
      sink.add(phone);
    }
  });
}