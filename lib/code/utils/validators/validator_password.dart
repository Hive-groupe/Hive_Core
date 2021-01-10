part of 'validators.dart';

//const String _kMin8CharsOneLetterOneNumber = r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$";
//const String _kMin8CharsOneLetterOneNumberOnSpecialCharacter = r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$";
const String _kMin8CharsOneUpperLetterOneLowerLetterOnNumber = r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$";
//const String _kMin8CharsOneUpperOneLowerOneNumberOneSpecial = r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$";
//const String _kMin8Max10OneUpperOneLowerOneNumberOneSpecial = r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$";
//const String _kMin8CharsOneUpperOneLowerOneNumberOneSpecial = r"^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$";



class PasswordValidator {
  final StreamTransformer<String,String> validatePassword = StreamTransformer<String,String>.fromHandlers(handleData: (password, sink){
    final RegExp passwordExp =
    new RegExp(_kMin8CharsOneUpperLetterOneLowerLetterOnNumber);

    if (!passwordExp.hasMatch(password)){
      sink.addError('Ingrese una contraseña válida');
    } else {
      sink.add(password);
    }
  });
}