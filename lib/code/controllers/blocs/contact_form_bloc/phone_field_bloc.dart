import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class PhoneFieldBloc extends GroupFieldBloc {
  final TextFieldBloc label;
  final TextFieldBloc value;

  PhoneFieldBloc({
    @required this.label,
    @required this.value,
    String name,
  }) : super([
          label,
          value,
        ], name: name);
}
