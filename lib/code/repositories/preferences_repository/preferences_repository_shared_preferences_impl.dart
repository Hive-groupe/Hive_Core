part of 'preferences_repository.dart';

class PreferencesRepositorySharedPreferencesImp
    implements PreferencesRepository {
  static const String _themeCodeKey = 'localeThemeCode';
  static const String _localeLanguageCodeKey = 'localeLanguageCode';
  static const String _localeScriptCodeKey = 'localeScriptCode';
  static const String _localeCountryCodeKey = 'localeCountryCode';
  static const String _notificationsCodeKey = '_notificationsCodeKey';
  static const String _soundEffectsCodeKey = '_soundEffectsCodeKey';
  static const String _vibrationCodeKey = '_vibrationCodeKey';
  static const String _enterToSendCodeKey = '_enterToSendCodeKey';

  @override
  Future<Preferences> get preferences async {
    bool _enterToSend = await enterToSend;
    return Preferences(
        themeName: await theme,
        locale: await locale,
        notifications: await notifications,
        soundEffects: await soundEffects,
        vibration: await vibration,
        chatPreferences: ChatPreferences((b) => b..enterToSend = _enterToSend));
  }

  @override
  Future<void> savePreferences(Preferences preferences) async {
    try {
      saveTheme(preferences.themeName);
      saveLocale(preferences.locale);
      saveNotifications(preferences.notifications);
      saveSoundEffects(preferences.soundEffects);
      saveVibration(preferences.vibration);
      saveEnterToSend(preferences.chatPreferences.enterToSend);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<void> saveTheme(String theme) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_themeCodeKey, theme?.toString());
  }

  @override
  Future<String> get theme async {
    final prefs = await SharedPreferences.getInstance();
    final theme = prefs.getString(_themeCodeKey);

    if (theme != null) {
      return theme;
    } else {
      return 'Light';
    }
  }

  @override
  Future<void> saveLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_localeLanguageCodeKey, locale?.languageCode);
    await prefs.setString(_localeScriptCodeKey, locale?.scriptCode);
    await prefs.setString(_localeCountryCodeKey, locale?.countryCode);
  }

  @override
  Future<Locale> get locale async {
    final prefs = await SharedPreferences.getInstance();

    final languageCode = prefs.getString(_localeLanguageCodeKey);
    final scriptCode = prefs.getString(_localeScriptCodeKey);
    final countryCode = prefs.getString(_localeCountryCodeKey);

    if (languageCode != null) {
      return Locale.fromSubtags(
        languageCode: languageCode,
        scriptCode: scriptCode,
        countryCode: countryCode,
      );
    } else {
      return null;
    }
  }

  @override
  Future<void> saveNotifications(bool isNotificationsActive) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(_notificationsCodeKey, isNotificationsActive);
  }

  @override
  Future<bool> get notifications async {
    final prefs = await SharedPreferences.getInstance();
    bool isNotificationsActive = prefs.getBool(_notificationsCodeKey) ?? true;

    return isNotificationsActive;
  }

  @override
  Future<void> saveSoundEffects(bool soundEffects) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(_soundEffectsCodeKey, soundEffects);
  }

  @override
  Future<bool> get soundEffects async {
    final prefs = await SharedPreferences.getInstance();
    bool isSoundEffectsActivated = prefs.getBool(_soundEffectsCodeKey) ?? true;

    return isSoundEffectsActivated;
  }

  @override
  Future<void> saveVibration(bool vibration) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(_vibrationCodeKey, vibration);
  }

  @override
  Future<bool> get vibration async {
    final prefs = await SharedPreferences.getInstance();
    bool isVibrationActivated = prefs.getBool(_vibrationCodeKey) ?? true;

    return isVibrationActivated;
  }

  @override
  Future<void> saveEnterToSend(bool enterToSend) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(_enterToSendCodeKey, enterToSend);
  }

  @override
  Future<bool> get enterToSend async {
    final prefs = await SharedPreferences.getInstance();
    bool isEnterToSendActivated = prefs.getBool(_enterToSendCodeKey) ?? true;

    return isEnterToSendActivated;
  }
}
