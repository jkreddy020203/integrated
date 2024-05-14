import 'dart:async' show Future;
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
  late final SharedPreferences _sharedPrefs;

  static final PreferenceUtils _instance = PreferenceUtils._internal();
  factory PreferenceUtils() => _instance;
  PreferenceUtils._internal();
  Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

  String getString(String key, [String? defValue]) {
    return _sharedPrefs.getString(key) ?? defValue ?? "";
  }

  Future<bool> setString(String key, String value) async {
    return _sharedPrefs.setString(key, value);
  }
}
