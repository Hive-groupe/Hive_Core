part of 'advertising_bloc.dart';

abstract class AdvertisingEvent extends Equatable {
  const AdvertisingEvent();
}

class InitAdvertising extends AdvertisingEvent {
  @override
  List<Object> get props => [];

  @override
  String toString() => '''
  $runtimeType  {}''';
}
