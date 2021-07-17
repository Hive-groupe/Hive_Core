import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/__deprecated__/ui/fail_info.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/domain/controllers/blocs/register_form_bloc/register_form_bloc.dart';
import 'package:hive_core/code/data/models/enum/gender.dart';
import 'package:hive_core/code/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/data/repositories/user_repository/user_repository.dart';
import 'package:hive_core/code/ui/widgets/appbar.dart';
import 'package:hive_core/code/ui/widgets/banner_size.dart';
import 'package:hive_core/code/ui/widgets/form_widgets/contact_form/contact_form.dart';
import 'package:image_picker/image_picker.dart';

class RegistrationFormSrceen extends StatefulWidget {
  @override
  _RegistrationFormSrceenState createState() => _RegistrationFormSrceenState();
}

class _RegistrationFormSrceenState extends State<RegistrationFormSrceen> {
  late AuthenticationRepository _authenticationRepository;
  late UserRepository _userRepository;
  // ProfileRepository _profileRepository;

  late RegistrationFormBloc _registrationFormBloc;

  var _type = StepperType.vertical;
  late File avatarFile;

  @override
  void initState() {
    _authenticationRepository =
        RepositoryProvider.of<AuthenticationRepository>(context);
    _userRepository = RepositoryProvider.of<UserRepository>(context);

    _registrationFormBloc = RegistrationFormBloc(
      authenticationRepository: _authenticationRepository,
      userRepository: _userRepository,
    );
    super.initState();
  }

  _goFailInfoScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FailInfoScreen(),
      ),
    );
  }

  void _goBack() => Navigator.pop(context);

  void _toggleType() {
    setState(() {
      if (_type == StepperType.horizontal) {
        _type = StepperType.vertical;
      } else {
        _type = StepperType.horizontal;
      }
    });
  }

  Future _getImage(
    bool isCamera,
  ) async {
    final picker = ImagePicker();
    PickedFile? pickedFile;
    File _image;
    Navigator.pop(context);

    pickedFile = isCamera
        ? await picker.getImage(source: ImageSource.camera)
        : await picker.getImage(source: ImageSource.gallery);

    _image = File(pickedFile!.path);

    // _profileValidatorFormBloc.onAvatarChanged(image.path);

    setState(() {
      avatarFile = _image;
    });
  }

  Future<void> _optionsDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => _getImage(true),
                    child: ListTile(
                      leading: Icon(Icons.photo_camera),
                      title: Text('Toma una foto'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    onTap: () => _getImage(false),
                    child: ListTile(
                      leading: Icon(Icons.photo),
                      title: Text('Seleccionar de la galería'),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _onShowError(context) => Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Ocurrio un error in esperado'),
            Icon(Icons.error)
          ],
        ),
      ),
    );

  void _onShowLoading(context) => Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text('Loading'), CircularProgressIndicator()],
        ),
      ),
    );

  @override
  Widget build(BuildContext context) {
    return BannerSize(
      body: BlocProvider(
        create: (context) => _registrationFormBloc,
        child: Builder(
          builder: (context) {
            return Scaffold(
              resizeToAvoidBottomInset: true,
              appBar: _appBar(),
              body: SafeArea(
                child: FormBlocListener<RegistrationFormBloc, String, String>(
                  onSubmitting: (context, state) => _onShowLoading(context),
                  onSuccess: (context, state) {
                    _onShowLoading(context);
                    if (state.stepCompleted == state.lastStep) {
                      _goFailInfoScreen();
                    }
                  },
                  onFailure: (context, state) {
                    _onShowError(context);
                  },
                  child: StepperFormBlocBuilder<RegistrationFormBloc>(
                    type: _type,
                    physics: ClampingScrollPhysics(),
                    stepsBuilder: (formBloc) {
                      return [
                        _user(formBloc!),
                        _currentStatus(formBloc),
                        _datos(formBloc),
                      ];
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  CustomAppBar _appBar() {
    return CustomAppBar(
      centerTitle: true,
      title: Text(
        HiveCoreString.of(context).login_form_register_button,
        style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyText1!.color,
            fontWeight: FontWeight.w600),
      ),
      leading: IconButton(
        onPressed: () => _goBack(),
        icon: Icon(
          Icons.clear,
          color: Colors.grey,
          size: 20,
        ),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              _type == StepperType.horizontal
                  ? Icons.swap_vert
                  : Icons.swap_horiz,
              color: Colors.grey,
            ),
            onPressed: _toggleType)
      ],
    );
  }

  FormBlocStep _user(RegistrationFormBloc formBloc) {
    return FormBlocStep(
      title: Text('user'),
      content: Column(
        children: <Widget>[
          TextFieldBlocBuilder(
            textFieldBloc: formBloc.email,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText:
                  '${HiveCoreString.of(context).social_form_holder_email}',
              prefixIcon: Icon(CupertinoIcons.mail),
              isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          TextFieldBlocBuilder(
            textFieldBloc: formBloc.password,
            keyboardType: TextInputType.emailAddress,
            suffixButton: SuffixButton.obscureText,
            decoration: InputDecoration(
              labelText:
                  '${HiveCoreString.of(context).login_form_password_holder_hint}',
              prefixIcon: Icon(Icons.lock),
              isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          TextFieldBlocBuilder(
            textFieldBloc: formBloc.confirmPassword,
            keyboardType: TextInputType.emailAddress,
            suffixButton: SuffixButton.obscureText,
            decoration: InputDecoration(
              labelText:
                  'Confirmar contraseña', //'${HiveCoreString.of(context).login_form_password_holder_hint}',
              prefixIcon: Icon(Icons.lock),
              isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
        ],
      ),
    );
  }

  FormBlocStep _currentStatus(RegistrationFormBloc formBloc) {
    return FormBlocStep(
      title: Text('Informacion personal'),
      content: Column(
        children: <Widget>[
          _profileHolderAvatar(),
          SizedBox(
            height: 25,
          ),
          RadioButtonGroupFieldBlocBuilder<Gender>(
            selectFieldBloc: formBloc.gender,
            itemBuilder: (context, value) {
              switch (value) {
                case Gender.MALE:
                  return 'Hombre';
                case Gender.FEMALE:
                  return 'Mujer';
                case Gender.OTHER:
                  return 'Prefiero no decirlo';
                default:
                  return '';
              }
            },
            decoration: InputDecoration(
              labelText:
                  '${HiveCoreString.of(context).profile_form_gender_holder} *',
              prefixIcon: SizedBox(), isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          TextFieldBlocBuilder(
            textFieldBloc: formBloc.nickname,
            decoration: InputDecoration(
              labelText:
                  '${HiveCoreString.of(context).profile_form_nickname_holder_hint}',
              prefixIcon: Icon(Icons.email), isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          TextFieldBlocBuilder(
            textFieldBloc: formBloc.name,
            decoration: InputDecoration(
              labelText:
                  '${HiveCoreString.of(context).profile_form_name_holder_hint} *',
              prefixIcon: Icon(Icons.email), isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          TextFieldBlocBuilder(
            textFieldBloc: formBloc.firstname,
            decoration: InputDecoration(
              labelText:
                  '${HiveCoreString.of(context).profile_form_firstname_holder_hint} *',
              prefixIcon: Icon(Icons.email), isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          TextFieldBlocBuilder(
            textFieldBloc: formBloc.secondname,
            decoration: InputDecoration(
              labelText:
                  '${HiveCoreString.of(context).profile_form_secondname_holder_hint}',
              prefixIcon: Icon(Icons.email), isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
        ],
      ),
    );
  }

  FormBlocStep _datos(RegistrationFormBloc formBloc) {
    return FormBlocStep(
      title: Text('Datos de contacto'),
      content: Column(
        children: <Widget>[
          ContactForm(
            contactFormBloc: formBloc.contactFormBloc,
          )
        ],
      ),
    );
  }

  Widget _profileHolderAvatar() {
    return StreamBuilder<String>(
        //stream: _userFormBloc.photoUrl,
        builder: (context, snapshot) {
      return GestureDetector(
        onTap: _optionsDialogBox,
        child: avatarFile != null
            ? _buildAvatarLocalFile()
            :
            //Si cargamos la imagen desde internet
            snapshot.hasData &&
                    snapshot.data! != null &&
                    snapshot.data!.toString() != ''
                ? _buildAvatarNetwork(
                    snapshot.data!.toString(),
                  )
                : _buildAvatarNoFile(),
      ) // Si estamos cargando la imagen desde el dispositivo
          ;
    });
  }

  Widget _buildAvatarLocalFile() {
    return CircleAvatar(
      radius: 45,
      child: ClipOval(
        child: Image(
          height: 150.0,
          width: 150.0,
          image: AssetImage(
            avatarFile.path,
          ), //snapshot.data!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildAvatarNetwork(String snapshot) {
    return CircleAvatar(
      radius: 45,
      child: ClipOval(
        child: Image(
          height: 150.0,
          width: 150.0,
          image: NetworkImage(snapshot), //snapshot.data!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildAvatarNoFile() {
    return Icon(
      Icons.account_circle,
      size: 100,
      // color: Colors.black54,
    );
  }
}
