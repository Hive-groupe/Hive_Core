import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_core/code/data/models/_index.dart';
import 'package:hive_core/code/data/models/preferences/notifications_preferences.dart';
import 'package:hive_core/code/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/code/data/repositories/device_repository/device_repository.dart';
import 'package:hive_core/code/domain/tools/metadata_tools.dart';
import 'package:rxdart/rxdart.dart';

part 'notifications_bloc.freezed.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  late final AuthenticationRepository _authenticationRepository;
  late final DeviceRepository _deviceRepository;

  late FirebaseMessaging _firebaseMessaging;
  late NotificationsPreferences _notificationsPreferences;

  static late NotificationsPreferences _defaultStatePreferences =
      NotificationsPreferences((b) => b
        ..notifications = true
        ..soundEffects = true
        ..vibration = true);

  late String _notificationsToken; // StreamSubscription iosSubscription;

  // Controllers
  late final _notificationsList = BehaviorSubject<BuiltList<Widget>>();

  NotificationsBloc({
    required AuthenticationRepository authenticationRepository,
    required DeviceRepository deviceRepository,
  })  : _authenticationRepository = authenticationRepository,
        _deviceRepository = deviceRepository,
        super(
          NotificationsInitial(),
        );

  @override
  Future<void> close() {
    _notificationsList.close();

    return super.close();
  }

  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    yield* event.map(
      initNotifications: _mapInitNotificationsToState,
      saveDevice: _mapSaveDeviceToState,
      changeNotificationsPreferences: _mapChangeNotificationsPreferencesToState,
      finishTutorialNotifications: _mapFinishTutorialNotificationsToState,
    );
  }

  Stream<NotificationsState> _mapInitNotificationsToState(
    InitNotifications event,
  ) async* {
    try {
      initNotifications();
      _notificationsPreferences =
          event.notificationsPreferences ?? _defaultStatePreferences;

      _notificationsList.sink.add(
        BuiltList(),
      );

      yield NotificationsLoaded(
        notificationsList: _notificationsList.stream,
      );
    } catch (_) {}
  }

  Stream<NotificationsState> _mapSaveDeviceToState(
    SaveDevice event,
  ) async* {
    try {
      //Almacenar token en base de datos
      await _deviceRepository.isThisDeviceKnown(_notificationsToken)
          ? _updateDevice()
          : _createDevice();
    } catch (_) {}
  }

  Stream<NotificationsState> _mapChangeNotificationsPreferencesToState(
    ChangeNotificationsPreferences event,
  ) async* {
    try {
      _notificationsPreferences = event.notificationsPreferences;
    } catch (_) {}
  }

  Future initNotifications() async {
    // TODO: CON EL NULLSAFETI SE A DESABILITADO LAS NOTIFICACIONES
    // TODO: HAY QUE REAHCER
    /*
    // Ejemplos:
    //  - https://www.youtube.com/watch?v=R71lcy6p9nM&list=PLCKuOXG0bPi375T5P1UAK1QjYaF6jUKBP&index=6
    //  - https://fireship.io/lessons/flutter-push-notifications-fcm-guide/

    // Init Firebase Messaging
    _firebaseMessaging = FirebaseMessaging.instance;

    if (Platform.isIOS) {
      /*
      iosSubscription =
          _firebaseMessaging.onIosSettingsRegistered.listen((data) {
        // save the token  OR subscribe to a topic here
      });*/

      // request permissions if we´re on android
      _firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(),
      );
    }

    _firebaseMessaging.getToken().then((token) {
      // print('Notifications toke: ${token}');
      _notificationsToken = token ?? '';
    });

    _firebaseMessaging.configure(
      // Called when the app is in the foreground and we receive a push notification.
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
        /*showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: ListTile(
              title: Text(message['notification']['title']),
              subtitle: Text(message['notification']['body']),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        );*/
      },
      // Called when the app has been closed complpetely and it´s open
      // from the push notifications directly.
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      // Called when the app is in the background and it´s opened
      // from the push notification.
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );
    */
  }

  void _createDevice() async {
    /* 
    // Declaration of values
    String _userId;
    Device _device;
    Metadata _metadata;

    // values initialization
    _userId = await _authenticationRepository.getCurrentUserId();
    _metadata = MetadataTools().initMetadata(_userId, null);
    _device = Device((b) => b
      ..metadata.replace(_metadata)
      ..notificationsToken = _notificationsToken
      ..platform = Platform.operatingSystem);

    // Save device
   _deviceRepository.addDevice(_device.toJson(),);
   */
  }

  void _updateDevice() async {
    String _userId;
    Device _device;
    Metadata _metadata;

    // values initialization
    _userId = await _authenticationRepository.getCurrentUserId() ?? '';
    _device =
        await _deviceRepository.getThisDevice(_notificationsToken) ?? Device();
    _metadata = MetadataTools().readMetadata(_userId, _device.metadata);
    _device = _device.rebuild(
      (b) => b..metadata.replace(_metadata),
    );

    // Save device
    _deviceRepository.updateDevice(_device.toJson(), _device.metadata.id ?? '');
  }

  Stream<NotificationsState> _mapFinishTutorialNotificationsToState(
    FinishTutorialNotifications event,
  ) async* {
    try {} catch (e) {}
  }
}
