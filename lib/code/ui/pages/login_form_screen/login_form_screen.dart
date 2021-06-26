import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_core/__deprecated__/ui/fail_info.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:hive_core/code/controllers/blocs/login_form_bloc/login_form_bloc.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/utils/constants/hive_const_strings.dart';

class LoginFormSrceen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormSrceenState();
}

class _LoginFormSrceenState extends State<LoginFormSrceen> {
  late AuthenticationRepository _authenticationRepository;
  late AuthenticationBloc _authenticationBloc;
  late LoginFormBloc _loginFormBloc;

  late TapGestureRecognizer _termsRecognizerTap, _privacyPolicyRecognizerTap;

  @override
  void initState() {
    _authenticationRepository =
        RepositoryProvider.of<AuthenticationRepository>(context);
    _authenticationBloc = RepositoryProvider.of<AuthenticationBloc>(context);
    _loginFormBloc = LoginFormBloc(
      authenticationRepository: _authenticationRepository,
      authenticationBloc: _authenticationBloc,
    );

    _termsRecognizerTap = TapGestureRecognizer()..onTap = () => _onShowTerms();
    _privacyPolicyRecognizerTap = TapGestureRecognizer()
      ..onTap = () => _onShowPrivacyPolicy();

    super.initState();
  }

  _goFailInfoScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FailInfoScreen(),
        ));
  }

  void _goRegisterScreen() => Navigator.of(context).pushNamed(
        HiveCoreConstString.route_user_registration_form_screen,
      );

  void _goRecoverPassword() => Navigator.of(context).pushNamed(
        HiveCoreConstString.route_restore_password_form_screen,
      );

  void _onAuthenticationWithMail() {
    FocusScope.of(context).requestFocus(
      new FocusNode(),
    );
    _loginFormBloc.submit();
  }

  void _onAuthenticationWithGoogle() => _loginFormBloc.loginWithGoogle();

  void _onAuthenticationWithFaceboock() => _loginFormBloc.loginWithFacebook();

  void _onShowLoginError(context) => Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(HiveCoreString.of(context).login_form_error),
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
            Text(HiveCoreString.of(context).login_form_loading),
            CircularProgressIndicator()
          ],
        ),
      ),
    );

  void _onShowTerms() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(
            ' Este servicio se provee "COMO VIENE" y no se da garantía en cómo se manejan los datos y la disponibillildad del servicio. Los términos y condiciones finales serán publicados cuando la app se ponga en producción.',
            style: TextStyle(fontSize: 13),
            textAlign: TextAlign.justify,
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );

  void _onShowPrivacyPolicy() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(
            'Todos tus datos serán guardados anónimamente en Firebase Firestore y permanecerán de esa manera. Ningún otro usuario tendrá acceso a tus datos.',
            style: TextStyle(fontSize: 13),
            textAlign: TextAlign.justify,
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _loginFormBloc,
      child: Builder(
        builder: (context) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            body: _build(context),
          );
        },
      ),
    );
  }

  Widget _build(BuildContext context) {
    return FormBlocListener<LoginFormBloc, String, String>(
      formBloc: _loginFormBloc,
      onSubmitting: (context, state) {
        _onShowOsSubmitting(context);
      },
      onSuccess: (context, state) {
        _onShowOsSubmitting(context);
        _goFailInfoScreen();
      },
      onFailure: (context, state) {
        _onShowLoginError(context);
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
            SizedBox(
              height: 15,
            ),
            _iconHolder(),
            _title(),
            SizedBox(
              height: 10,
            ),
            _emailField(),
            _passwordField(),
            Container(
              margin: EdgeInsets.only(),
              child: Row(
                children: <Widget>[
                  _btnRegister(),
                  Text(
                    ".",
                  ),
                  _btnRecoverPassword(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _btnSubmitHolder(),
            SizedBox(
              height: 25,
            ),
            _socialBar(),
            SizedBox(
              height: 20,
            ),
            _termsAndConditions(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconHolder() {
    return Container(
      child: Image.asset(
        HiveCoreConstString.image_icon_hive,
        height: 300,
        width: 300,
      ),
    );
  }

  Widget _title() {
    return Container(
      child: SizedBox.fromSize(
        size: Size.fromHeight(30),
        child: new Text(
          HiveCoreString.of(context).login_form_title,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  Widget _emailField() {
    return TextFieldBlocBuilder(
      textFieldBloc: _loginFormBloc.email,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: '${HiveCoreString.of(context).social_form_holder_email}',
        prefixIcon: Icon(Icons.mail),
        isDense: true, // Added this
        contentPadding: EdgeInsets.all(8),
      ),
    );
  }

  Widget _passwordField() {
    return TextFieldBlocBuilder(
      textFieldBloc: _loginFormBloc.password,
      keyboardType: TextInputType.emailAddress,
      suffixButton: SuffixButton.obscureText,
      decoration: InputDecoration(
        labelText:
            '${HiveCoreString.of(context).login_form_password_holder_hint}',
        prefixIcon: Icon(Icons.lock),
        isDense: true, // Added this
        contentPadding: EdgeInsets.all(8),
      ),
    );
  }

  Widget _btnRecoverPassword() {
    return Container(
      child: TextButton(
        onPressed: _goRecoverPassword,
        child:
            Text(HiveCoreString.of(context).login_form_recover_password_button),
        // color: Colors.transparent,
      ),
    );
  }

  Widget _btnRegister() {
    return Container(
      child: TextButton(
        onPressed: _goRegisterScreen,
        child: Text(HiveCoreString.of(context).login_form_register_button),
        // color: Colors.transparent,
      ),
    );
  }

  Widget _btnSubmitHolder() {
    return FloatingActionButton.extended(
      heroTag: null,
      onPressed: _onAuthenticationWithMail,
      //icon: Icon(Icons.send),
      label: Text(
        HiveCoreString.of(context).login_form_login_button,
      ),
    );
  }

  Widget _socialBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _btnGoogle(),
          _btnFacebook(),
        ],
      ),
    );
  }

  Widget _btnGoogle() {
    return Container(
      margin: EdgeInsets.only(),
      child: RawMaterialButton(
        onPressed: _onAuthenticationWithGoogle,
        child: Icon(
          FontAwesomeIcons.google,
          color: Colors.grey,
        ),
        shape: new CircleBorder(),
        elevation: 8.0,
        //fillColor: Colors.white,
        padding: const EdgeInsets.all(15.0),
      ),
    );
  }

  Widget _btnFacebook() {
    return Container(
      margin: EdgeInsets.only(),
      child: RawMaterialButton(
        onPressed: _onAuthenticationWithFaceboock,
        child: Icon(
          FontAwesomeIcons.facebookF,
          color: Colors.grey,
        ),
        shape: new CircleBorder(),
        elevation: 8.0,
        //fillColor: Colors.white,
        padding: const EdgeInsets.all(15.0),
      ),
    );
  }

  Widget _termsAndConditions() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(color: Colors.grey, fontSize: 10),
        text: "Al usar esta aplicación estás aceptando nuestros ",
        children: [
          TextSpan(
            recognizer: _termsRecognizerTap,
            text: "Términos de servicio",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: " y "),
          TextSpan(
            recognizer: _privacyPolicyRecognizerTap,
            text: "Política de privacidad",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
