import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'settings_qr_code_event.dart';
part 'settings_qr_code_state.dart';

class SettingsQrCodeBloc
    extends Bloc<SettingsQrCodeEvent, SettingsQrCodeState> {
  SettingsQrCodeBloc()
      : super(
          SettingsQrCodeInitial(),
        );

  @override
  Stream<SettingsQrCodeState> mapEventToState(
    SettingsQrCodeEvent event,
  ) async* {}
}
