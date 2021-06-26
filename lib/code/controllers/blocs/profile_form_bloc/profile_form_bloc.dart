import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/contact_form_bloc/contact_form_bloc.dart';
import 'package:hive_core/code/models/contactInformation.dart';
import 'package:hive_core/code/models/enum/gender.dart';
import 'package:hive_core/code/models/profile.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/repositories/user_repository/user_repository.dart';

class ProfileFormBloc extends FormBloc<String, String> {
  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;

  bool _isEditing = false;
  late String? userId;
  late User? _user;

  ContactFormBloc contactFormBloc;

  final avatar = TextFieldBloc(
    validators: [],
  );

  final gender = SelectFieldBloc(
    validators: [FieldBlocValidators.required],
    items: [Gender.MALE, Gender.FEMALE, Gender.OTHER],
  );

  final nickname = TextFieldBloc(
    validators: [],
  );

  final name = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final firstname = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final secondname = TextFieldBloc(
    validators: [],
  );

  // Constructor
  ProfileFormBloc(
      // Repositorys
      {required AuthenticationRepository authenticationRepository,
      required UserRepository userRepository})
      : // Repositorys
        _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        // Blocs
        contactFormBloc = ContactFormBloc(
          authenticationRepository: authenticationRepository,
        ) {
    _isEditing = false;
    initState();
  }

  ProfileFormBloc.formUser({
    // Repositorys
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
    // Models
    User? user,
  })  : // Repositorys
        _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        // Blocs
        contactFormBloc = ContactFormBloc.fromContactInformation(
          authenticationRepository: authenticationRepository,
          contactInformation: // profile.contactInformation ??
              ContactInformation(),
        ),
        // Models
        _user = user {
    _isEditing = true;
    initState();
    _loadModel();
  }

  initState() {
    addFieldBlocs(
      step: 0,
      fieldBlocs: [
        avatar,
        nickname,
        name,
        firstname,
        secondname,
        gender,
      ],
    );
    addFieldBlocs(
      step: 1,
      fieldBlocs: [firstname],
    );
  }

  @override
  void onSubmitting() async {
    if (state.currentStep == 0) {
      emitSuccess();
    } else if (state.currentStep == 1) {
      _saveData();
      emitSuccess();
    }
  }

  _loadModel() async {
    userId = await _authenticationRepository.getCurrentUserId();
    _user = _user ?? await _userRepository.getUserById(userId ?? '');

    avatar.updateValue(_user!.profile!.avatar ?? '');
    nickname.updateValue(_user!.profile!.nickname ?? '');
    gender.updateValue(_user!.profile!.gender);
    name.updateValue(_user!.profile!.name);
    firstname.updateValue(_user!.profile!.firstname);
    secondname.updateValue(_user!.profile!.secondname ?? '');

    // Como tenemos que cargar el usuario previamente no nos vale solo con la
    // inicialización del constructor.
    contactFormBloc = ContactFormBloc.fromContactInformation(
      authenticationRepository: _authenticationRepository,
      contactInformation:
          _user!.profile!.contactInformation ?? ContactInformation(),
    );
  }

  _saveData() async {
    try {
      emitLoading();

      // Define values
      User _user;
      Profile _profile;

      // Init values
      userId = userId ?? await _authenticationRepository.getCurrentUserId();

      _profile = Profile((b) => b
        ..contactInformation.replace(
          contactFormBloc.getContactInformation(),
        )
        ..avatar = avatar.value
        ..gender = gender.value
        ..name = name.value
        ..firstname = firstname.value
        ..secondname = secondname.value
        ..nickname = nickname.value);

      _user = await _userRepository.getUserById(userId ?? '');
      _user = _user.rebuild(
        (b) => b
          ..id = userId
          ..profile.replace(_profile),
      );

      print(
        _user.toString(),
      );

      // Save dates
      _isEditing
          ? _userRepository.updateUser(_user.toJson(), _user.id ?? '')
          : _userRepository.addUser(
              _user.toJson(),
            );

      emitSuccess(canSubmitAgain: true);
    } catch (_) {
      emitFailure();
    }
  }
}
