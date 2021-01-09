import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'advertising_state.dart';

class AdvertisingCubit extends Cubit<AdvertisingState> {
  AdvertisingCubit() : super(AdvertisingInitial());
}
