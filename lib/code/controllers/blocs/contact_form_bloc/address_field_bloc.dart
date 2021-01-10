import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class AddressFieldBloc extends GroupFieldBloc {
  final TextFieldBloc label;
  final TextFieldBloc street;
  final TextFieldBloc number;
  final TextFieldBloc postalCode;
  final TextFieldBloc country;
  final TextFieldBloc province;
  final TextFieldBloc city;

  AddressFieldBloc({
    @required this.label,
    @required this.street,
    @required this.number,
    @required this.postalCode,
    @required this.country,
    @required this.province,
    @required this.city,
    String name,
  }) : super([label, street, number, postalCode, country, province, city],
            name: name);
}
