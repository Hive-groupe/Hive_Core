import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_qr_code_bloc.freezed.dart';
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
  ) async* {
    event.map(findQr: _mapFindQrToState);
  }

  Stream<SettingsQrCodeState> _mapFindQrToState(
    FindQr event,
  ) async* {}
}
