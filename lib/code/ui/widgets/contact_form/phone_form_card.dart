import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/contact_form_bloc/phone_field_bloc.dart';

class PhoneFormCard extends StatelessWidget {
  final int phoneIndex;
  final PhoneFieldBloc phoneFieldBloc;

  final VoidCallback onRemovePhone;

  const PhoneFormCard({
    Key? key,
    required this.phoneIndex,
    required this.phoneFieldBloc,
    required this.onRemovePhone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: ListTile(
        //leading: _iconHolder(),
        title: Container(
          child: Column(
            children: <Widget>[
              // _title(),
              TextFieldBlocBuilder(
                textFieldBloc: phoneFieldBloc.label,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Etiqueta', isDense: true, // Added this
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              TextFieldBlocBuilder(
                textFieldBloc: phoneFieldBloc.value,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Numero de telefono',
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
            ],
          ),
        ),
        trailing: _trailing(),
      ),
    );
  }

  Widget _trailing() {
    return Container(
      width: 15,
      child: IconButton(
        icon: Icon(Icons.close),
        onPressed: onRemovePhone,
      ),
    );
  }
}
