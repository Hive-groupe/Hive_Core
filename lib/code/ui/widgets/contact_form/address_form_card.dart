import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/contact_form_bloc/address_field_bloc.dart';

class AddressCard extends StatelessWidget {
  final int addressIndex;
  final AddressFieldBloc addressField;

  final VoidCallback onRemoveAddress;

  const AddressCard({
    Key key,
    @required this.addressIndex,
    @required this.addressField,
    @required this.onRemoveAddress,
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
                  textFieldBloc: addressField.label,
                  decoration: InputDecoration(
                    labelText: 'Etiqueta', isDense: true, // Added this
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: addressField.street,
                  decoration: InputDecoration(
                    labelText: 'street', isDense: true, // Added this
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: addressField.number,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'number', isDense: true, // Added this
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: addressField.postalCode,
                  decoration: InputDecoration(
                    labelText: 'postalCode', isDense: true, // Added this
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: addressField.country,
                  decoration: InputDecoration(
                    labelText: 'country', isDense: true, // Added this
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: addressField.province,
                  decoration: InputDecoration(
                    labelText: 'province', isDense: true, // Added this
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: addressField.city,
                  decoration: InputDecoration(
                    labelText: 'city', isDense: true, // Added this
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
              ],
            ),
          ),
          trailing: _trailing(),
        ));
  }

  Widget _trailing() {
    return Container(
      width: 15,
      child: IconButton(
        icon: Icon(Icons.close),
        onPressed: onRemoveAddress,
      ),
    );
  }
}
