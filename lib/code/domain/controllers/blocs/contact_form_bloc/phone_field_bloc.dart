import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class PhoneFieldBloc extends GroupFieldBloc {
  final TextFieldBloc label;
  final TextFieldBloc value;

  PhoneFieldBloc({
    required this.label,
    required this.value,
    required String name,
  }) : super(
          [
            label,
            value,
          ],
          name: name,
        );
}
