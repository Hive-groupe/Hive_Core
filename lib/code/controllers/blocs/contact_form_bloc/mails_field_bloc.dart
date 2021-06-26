import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class MailFieldBloc extends GroupFieldBloc {
  final TextFieldBloc label;
  final TextFieldBloc value;

  MailFieldBloc({
    required this.label,
    required this.value,
    required String name,
  }) : super([
          label,
          value,
        ], name: name);
}
