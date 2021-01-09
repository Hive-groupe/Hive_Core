import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hive_core/src/models/device.dart';
import 'package:hive_core/src/models/metadata.dart';
import 'package:hive_core/src/models/notifications_preferences.dart';
import 'package:hive_core/src/repositories/authentication_repository/authentication_repository.dart';
import 'package:hive_core/src/repositories/device_repository/device_repository.dart';
import 'package:hive_core/src/utils/tools/metadata_tools.dart';
import 'package:rxdart/rxdart.dart';
import 'package:built_collection/built_collection.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final AuthenticationRepository _authenticationRepository;
  final DeviceRepository _deviceRepository;

  FirebaseMessaging _firebaseMessaging;
  NotificationsPreferences _notificationsPreferences;
  static NotificationsPreferences _defaultStatePreferences =
      NotificationsPreferences((b) => b
        ..notifications = true
        ..soundEffects = true
        ..vibration = true);

  String _notificationsToken; // StreamSubscription iosSubscription;

  // Controllers
  final _notificationsList = BehaviorSubject<BuiltList<Widget>>();

  NotificationsBloc({
    @required AuthenticationRepository authenticationRepository,
    @required DeviceRepository deviceRepository,
  })  : assert(authenticationRepository != null),
        assert(deviceRepository != null),
        _authenticationRepository = authenticationRepository,
        _deviceRepository = deviceRepository,
        super(NotificationsInitial());

  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    if (event is InitNotifications) {
      yield* _mapInitNotificationsToState(event);
    } else if (event is SaveDevice) {
      yield* _mapSaveDeviceToState(event);
    } else if (event is ChangeNotificationsPreferences) {
      yield* _mapChangeNotificationsPreferencesToState(event);
    }
  }

  Stream<NotificationsState> _mapInitNotificationsToState(
      InitNotifications event) async* {
    try {
      initNotifications();
      _notificationsPreferences =
          event.notificationsPreferences ?? _defaultStatePreferences;
/**
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 










 */
      _notificationsList.sink.add(BuiltList());
      yield NotificationsLoaded(notificationsList: _notificationsList.stream);
    } catch (_) {}
  }

  Stream<NotificationsState> _mapSaveDeviceToState(SaveDevice event) async* {
    try {
      //Almacenar token en base de datos
      await _deviceRepository.isThisDeviceKnown(_notificationsToken)
          ? _updateDevice()
          : _createDevice();
    } catch (_) {}
  }

  Stream<NotificationsState> _mapChangeNotificationsPreferencesToState(
      ChangeNotificationsPreferences event) async* {
    try {
      _notificationsPreferences =
          event.notificationsPreferences ?? _defaultStatePreferences;
    } catch (_) {}
  }

  Future initNotifications() async {
    // Ejemplos:
    //  - https://www.youtube.com/watch?v=R71lcy6p9nM&list=PLCKuOXG0bPi375T5P1UAK1QjYaF6jUKBP&index=6
    //  - https://fireship.io/lessons/flutter-push-notifications-fcm-guide/

    // Init Firebase Messaging
    _firebaseMessaging = FirebaseMessaging();

    if (Platform.isIOS) {
      /*
      iosSubscription =
          _firebaseMessaging.onIosSettingsRegistered.listen((data) {
        // save the token  OR subscribe to a topic here
      });*/

      // request permissions if we´re on android
      _firebaseMessaging
          .requestNotificationPermissions(IosNotificationSettings());
    }

    _firebaseMessaging.getToken().then((token) {
      // print('Notifications toke: ${token}');
      _notificationsToken = token;
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
              FlatButton(
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
   _deviceRepository.addDevice(_device.toJson());
   */
  }

  void _updateDevice() async {
    String _userId;
    Device _device;
    Metadata _metadata;

    // values initialization
    _userId = await _authenticationRepository.getCurrentUserId();
    _device = await _deviceRepository.getThisDevice(_notificationsToken);
    _metadata = MetadataTools().readMetadata(_userId, _device.metadata);
    _device = _device.rebuild((b) => b..metadata.replace(_metadata));

    // Save device
    _deviceRepository.updateDevice(_device.toJson(), _device.metadata.id);
  }
}
