import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/models/metadata.dart';
import 'package:hive_core/code/repositories/authentication_repository/authentication_repository.dart';

class MetadataFieldBloc extends FormBloc<String, String> {
  // Repositorys
  final AuthenticationRepository _authenticationRepository;

  late String? userId;
  late Metadata _metadata;

  final concept = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final observations = TextFieldBloc(validators: []);

  MetadataFieldBloc({
    // Repositorys
    required AuthenticationRepository authenticationRepository,
  }) : // Repositorys
        _authenticationRepository = authenticationRepository {
    initState();
  }

  MetadataFieldBloc.formMetadata({
    // Repositorys
    required AuthenticationRepository authenticationRepository,
    //
    required Metadata metadata,
  })  : // Repositorys
        _authenticationRepository = authenticationRepository,
        //
        _metadata = metadata {
    initState();
    _loadModel();
  }

  initState() {
    addFieldBlocs(fieldBlocs: [
      concept,
      observations,
    ]);
  }

  @override
  Future<void> close() {
    concept.close();
    observations.close();

    return super.close();
  }

  void addErrors() {
    concept.addError('Awesome Error!');
    observations.addError('Awesome Error!');
  }

  _loadModel() async {
    userId = userId ?? await _authenticationRepository.getCurrentUserId();

    concept.updateValue(_metadata.title ?? '');
    observations.updateValue(_metadata.description ?? '');
  }

  @override
  void onSubmitting() async {
    emitSuccess();
  }
}
