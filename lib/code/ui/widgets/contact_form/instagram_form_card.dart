import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/contact_form_bloc/instagram_field_bloc.dart';

class InstagramFormCard extends StatelessWidget {
  final int instagramIndex;
  final InstagramFieldBloc instagramFieldBloc;

  final VoidCallback onRemoveInstagram;

  const InstagramFormCard({
    Key key,
    @required this.instagramIndex,
    @required this.instagramFieldBloc,
    @required this.onRemoveInstagram,
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
                  textFieldBloc: instagramFieldBloc.label,
                  decoration: InputDecoration(
                    labelText: 'Etiqueta', isDense: true, // Added this
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: instagramFieldBloc.value,
                  decoration: InputDecoration(
                    labelText: 'Correo electronico',
                    isDense: true, // Added this
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
        onPressed: onRemoveInstagram,
      ),
    );
  }
}
