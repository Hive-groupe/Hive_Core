import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_admob/firebase_admob.dart';

part 'advertising_event.dart';
part 'advertising_state.dart';

class AdvertisingBloc extends Bloc<AdvertisingEvent, AdvertisingState> {
  bool _isPremiumAcount;
  String _admobApplicationId;
  late BannerAd _bannerAd;

  AdvertisingBloc({
    required bool isPremiumAcount,
    required String admobApplicationId,
  })  : _isPremiumAcount = isPremiumAcount,
        _admobApplicationId = admobApplicationId,
        super(
          AdvertisingInitial(),
        );

  initState() {
    FirebaseAdMob.instance.initialize(appId: _admobApplicationId);
  }

  @override
  Stream<AdvertisingState> mapEventToState(
    AdvertisingEvent event,
  ) async* {
    if (event is InitAdvertising) {
      yield* _mapIntiAdvertisingToState(event);
    }
  }

  Stream<AdvertisingState> _mapIntiAdvertisingToState(
      InitAdvertising event) async* {
    // Inicializacion de anuncios
    FirebaseAdMob.instance.initialize(appId: _admobApplicationId);

    // Inicializacion Anuncios
    if (!_isPremiumAcount) {
      _bannerAd = createBannerAd()..load();
      _bannerAd.show(); // Inicializacion de banner
    } else {
      _bannerAd.dispose();
    }
  }

  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: 'ca-app-pub-3714274271110810/1958153813',
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event $event");
      },
    );
  }

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    keywords: <String>['job', 'business', 'car'],
    // contentUrl: 'http://foo.com/bar.html',
    childDirected: true,
    nonPersonalizedAds: true,
  );
}

const String testDevice = 'YOUR_DEVICE_ID';
