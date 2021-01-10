import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/contact_form_bloc/github_field_bloc.dart';

class GithubFormCard extends StatelessWidget {
  final int githubIndex;
  final GithubFieldBloc githubFieldBloc;

  final VoidCallback onRemoveGithub;

  const GithubFormCard({
    Key key,
    @required this.githubIndex,
    @required this.githubFieldBloc,
    @required this.onRemoveGithub,
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
                  textFieldBloc: githubFieldBloc.label,
                  decoration: InputDecoration(
                    labelText: 'Etiqueta', isDense: true, // Added this
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: githubFieldBloc.value,
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
        onPressed: onRemoveGithub,
      ),
    );
  }
}
