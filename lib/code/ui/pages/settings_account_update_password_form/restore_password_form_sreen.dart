import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/update_password_form_bloc/update_password_form_bloc.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/ui/widgets/appbar.dart';
import 'package:hive_core/code/utils/constants/hive_const_strings.dart';

class UpdatePasswordFormScreen extends StatelessWidget {
  UpdatePasswordFormBloc formBloc;

  void _onShowError(context) => Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Ocurrio un error in esperado'),
          Icon(Icons.error)
        ],
      ),
    ));

  void _onShowLoading(context) => Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('cambiando contraseña'),
          CircularProgressIndicator()
        ],
      ),
    ));

  void _goBack(BuildContext context) => Navigator.pop(context);

  void _goRestorePassword(BuildContext context) => Navigator.pushNamed(
      context, HiveCoreConstString.route_restore_password_form_screen);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdatePasswordFormBloc(
          authenticationRepository:
              context.repository<AuthenticationRepository>()),
      child: Builder(
        builder: (context) {
          formBloc = BlocProvider.of<UpdatePasswordFormBloc>(context);

          return Scaffold(
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
        'Cambiar contraseña',
        style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyText1.color,
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
    return FormBlocListener<UpdatePasswordFormBloc, String, String>(
      onSubmitting: (context, state) {
        _onShowLoading(context); // LoadingDialog.show(context);
      },
      onSuccess: (context, state) {
        _onShowLoading(context); // LoadingDialog.hide(context);
        Navigator.pop(context);
      },
      onFailure: (context, state) {
        _onShowError(context); // LoadingDialog.hide(context);

        // Scaffold.of(context).showSnackBar(SnackBar(content: Text(state.failureResponse)));
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
              textFieldBloc: formBloc.newPassword,
              keyboardType: TextInputType.emailAddress,
              suffixButton: SuffixButton.obscureText,
              decoration: InputDecoration(
                labelText:
                    'Nueva contraseña', //'${S.of(context).login_form_password_holder_hint}',
                prefixIcon: Icon(Icons.lock), isDense: true, // Added this
                contentPadding: EdgeInsets.all(8),
              ),
            ),
            TextFieldBlocBuilder(
              textFieldBloc: formBloc.confirmNewPassword,
              keyboardType: TextInputType.emailAddress,
              suffixButton: SuffixButton.obscureText,
              decoration: InputDecoration(
                labelText:
                    'Repetir nueva contraseña', //'${S.of(context).login_form_password_holder_hint}',
                prefixIcon: Icon(Icons.lock), isDense: true, // Added this
                contentPadding: EdgeInsets.all(8),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextFieldBlocBuilder(
              textFieldBloc: formBloc.currentPassword,
              keyboardType: TextInputType.emailAddress,
              suffixButton: SuffixButton.obscureText,
              decoration: InputDecoration(
                labelText:
                    '${S.of(context).login_form_password_holder_hint} actual',
                prefixIcon: Icon(Icons.lock), isDense: true, // Added this
                contentPadding: EdgeInsets.all(8),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            _btnRestorePassword(context),
          ],
        ),
      ),
    );
  }

  Widget _btnRestorePassword(context) {
    return GestureDetector(
      onTap: () => _goRestorePassword(context),
      child: Container(
        child: Text(
          S.of(context).login_form_recover_password_button,
          style: TextStyle(color: Colors.grey),
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
