import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/restore_password_form_bloc/restore_password_form_bloc.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/ui/widgets/appbar.dart';

class RestorePasswordFormScreen extends StatelessWidget {
  late RestorePasswordFormBloc formBloc;

  void _onShowLoginError(context) => Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('No se pudo enviar el correo de restablecer contraseña'),
            Icon(Icons.error)
          ],
        ),
      ),
    );

  void _onShowOsSubmitting(context) => Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Enviando correo de restablecer contraseña'),
            CircularProgressIndicator()
          ],
        ),
      ),
    );

  void _goBack(BuildContext context) => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestorePasswordFormBloc(
        authenticationRepository:
            RepositoryProvider.of<AuthenticationRepository>(context),
      ),
      child: Builder(
        builder: (context) {
          formBloc = BlocProvider.of<RestorePasswordFormBloc>(context);

          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: _appBar(context),
            floatingActionButton: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                //  _btnshowErrorsHolder(),
                //  SizedBox(height: 12),
                _btnSubmitHolder(),
              ],
            ),
            body: _build(context),
          );
        },
      ),
    );
  }

  CustomAppBar _appBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Text(
        'Restablecer contraseña',
        style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyText1!.color,
            fontWeight: FontWeight.w600),
      ),
      leading: IconButton(
        onPressed: () => _goBack(context),
        icon: Icon(
          Icons.clear,
          color: Colors.grey,
          size: 20,
        ),
      ),
      actions: <Widget>[
        //_btnSave(),
      ],
    );
  }

  Widget _build(BuildContext context) {
    return FormBlocListener<RestorePasswordFormBloc, String, String>(
      onSubmitting: (context, state) {
        _onShowOsSubmitting(context); // LoadingDialog.show(context);
      },
      onSuccess: (context, state) {
        _onShowOsSubmitting(context); // LoadingDialog.hide(context);
      },
      onFailure: (context, state) {
        _onShowLoginError(context); // LoadingDialog.hide(context);

        // Scaffold.of(context).showSnackBar(SnackBar(content: Text(state.failureResponse),));
      },
      child: _buildFrom(context),
    );
  }

  Widget _buildFrom(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            TextFieldBlocBuilder(
              textFieldBloc: formBloc.email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText:
                    '${HiveCoreString.of(context).social_form_holder_email}',
                prefixIcon: Icon(Icons.email), isDense: true, // Added this
                contentPadding: EdgeInsets.all(8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _btnSubmitHolder() {
    return FloatingActionButton.extended(
      heroTag: null,
      onPressed: formBloc.submit,
      icon: Icon(Icons.send),
      label: Text('SUBMIT'),
    );
  }
}
