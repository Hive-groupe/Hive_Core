import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class TwitterFieldBloc extends GroupFieldBloc {
  final TextFieldBloc label;
  final TextFieldBloc value;

  TwitterFieldBloc({
    @required this.label,
    @required this.value,
    String name,
  }) : super([
          label,
          value,
        ], name: name);
}
