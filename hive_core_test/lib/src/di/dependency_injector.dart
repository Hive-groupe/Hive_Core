import 'package:flutter_bloc/flutter_bloc.dart';

List<RepositoryProvider> buildRepositories({
  required String userId,
}) {
  return [
    /*
    RepositoryProvider<BillRepository>(
      create: (_) => BillRepositoryFirebaseImpl(
        userId: userId,
        path: ConstString.BILL_REPOSITORY_PHATH,
      ),
    ),
    */
  ];
}

List<BlocProvider> buildBlocs() {
  return [
    /* 
   BlocProvider<StopwatchBloc>(
      create: (context) => StopwatchBloc(
        context: context,
      ),
    ),
    */
  ];
}
