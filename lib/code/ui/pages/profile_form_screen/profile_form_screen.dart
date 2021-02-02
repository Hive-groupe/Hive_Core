import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/ui/widgets/form_widgets/contact_form/contact_form.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/controllers/blocs/profile_form_bloc/profile_form_bloc.dart';
import 'package:hive_core/code/models/enum/gender.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/repositories/user_repository/user_repository.dart';
import 'package:hive_core/code/ui/widgets/appbar.dart';
import 'package:hive_core/code/ui/widgets/banner_size.dart';
import 'package:hive_core/code/ui/widgets/loading_form_dialog.dart';
import 'package:hive_core/code/utils/tools/file_tools.dart';
import 'package:image_picker/image_picker.dart';

class ProfileFormScreen extends StatefulWidget {
  @override
  _ProfileFormScreenState createState() => _ProfileFormScreenState();
}

class _ProfileFormScreenState extends State<ProfileFormScreen> {
  AuthenticationRepository _authenticationRepository;
  UserRepository _userRepository;

  ProfileFormBloc _profileFormBloc;

  var _type = StepperType.vertical;
  File avatarFile;

  @override
  void initState() {
    _authenticationRepository = context.repository<AuthenticationRepository>();
    _userRepository = context.repository<UserRepository>();

    _profileFormBloc = ProfileFormBloc.formUser(
        authenticationRepository: _authenticationRepository,
        userRepository: _userRepository,
        user: null);

    super.initState();
  }

  @override
  void dispose() {
    _profileFormBloc?.close();
    super.dispose();
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

  void pickImage({@required ImageSource source}) async {
    Navigator.pop(context);
    File selectedImage = await FileTools.pickImage(source: source);

    setState(() {
      return avatarFile = selectedImage;
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
                    onTap: () => pickImage(source: ImageSource.camera),
                    child: ListTile(
                      leading: Icon(Icons.photo_camera),
                      title: Text('Toma una foto'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    onTap: () => pickImage(source: ImageSource.gallery),
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

  @override
  Widget build(BuildContext context) {
    return BannerSize(
        body: MultiBlocProvider(
      providers: [
        BlocProvider<ProfileFormBloc>(
          create: (BuildContext context) => _profileFormBloc,
        ),
      ],
      child: BlocConsumer(
        cubit: _profileFormBloc,
        listener: (context, state) {},
        builder: (context, state) {
          return _build();
        },
      ),
    ));
  }

  Widget _build() {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: _appBar(),
      body: SafeArea(
        child: FormBlocListener<ProfileFormBloc, String, String>(
          onSubmitting: (context, state) => LoadingDialog.show(context),
          onSuccess: (context, state) {
            LoadingDialog.hide(context);
            if (state.stepCompleted == state.lastStep) {
              _goBack();
            }
          },
          onFailure: (context, state) {
            LoadingDialog.hide(context);
          },
          child: StepperFormBlocBuilder<ProfileFormBloc>(
            type: _type,
            physics: ClampingScrollPhysics(),
            stepsBuilder: (formBloc) {
              return [
                _currentStatus(formBloc),
                _datos(formBloc),
              ];
            },
          ),
        ),
      ),
    );
  }

  CustomAppBar _appBar() {
    return CustomAppBar(
      centerTitle: true,
      title: Text(
        HiveCoreString.of(context).profile_form_title,
        style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyText1.color,
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

  FormBlocStep _currentStatus(ProfileFormBloc formBloc) {
    return FormBlocStep(
      title: Text('Informacion personal'),
      content: Column(
        children: <Widget>[
          _profileHolderAvatar(formBloc),
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
              prefixIcon: Icon(Icons.person), isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          TextFieldBlocBuilder(
            textFieldBloc: formBloc.name,
            decoration: InputDecoration(
              labelText:
                  '${HiveCoreString.of(context).profile_form_name_holder_hint} *',
              prefixIcon: Icon(Icons.person), isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          TextFieldBlocBuilder(
            textFieldBloc: formBloc.firstname,
            decoration: InputDecoration(
              labelText:
                  '${HiveCoreString.of(context).profile_form_firstname_holder_hint} *',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          TextFieldBlocBuilder(
            textFieldBloc: formBloc.secondname,
            decoration: InputDecoration(
              labelText:
                  '${HiveCoreString.of(context).profile_form_secondname_holder_hint}',
              prefixIcon: Icon(Icons.person), isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
        ],
      ),
    );
  }

  FormBlocStep _datos(ProfileFormBloc formBloc) {
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

  Widget _profileHolderAvatar(ProfileFormBloc formBloc) {
    return GestureDetector(
        onTap: _optionsDialogBox,
        child: Hero(
            tag: 'avatar',
            child: avatarFile != null
                // Si estamos cargando la imagen desde el dispositivo
                ? _buildAvatarLocalFile()
                : formBloc.avatar.value == null || formBloc.avatar.value == ''
                    ? //Si no hay imagen
                    _buildAvatarNoFile()
                    : //Si cargamos la imagen desde internet
                    _buildAvatarNetwork(formBloc)));
  }

  Widget _buildAvatarLocalFile() {
    return CircleAvatar(
      radius: 75,
      child: ClipOval(
        child: Image(
          height: 150.0,
          width: 150.0,
          image: AssetImage(avatarFile.path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildAvatarNetwork(ProfileFormBloc formBloc) {
    return CircleAvatar(
      radius: 75,
      child: ClipOval(
        child: CachedNetworkImage(
          height: 150.0,
          width: 150.0,
          fit: BoxFit.cover,
          imageUrl: formBloc.avatar.value,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }

  Widget _buildAvatarNoFile() {
    return Icon(
      Icons.account_circle,
      size: 125,
    );
  }
}
