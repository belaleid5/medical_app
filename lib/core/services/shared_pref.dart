import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _getInstance;

  static Future<void> init() async {
    _getInstance = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) {
    return _getInstance.setBool(key, value);
  }

  static getBool(String key) {
    return _getInstance.getBool(key) ?? false;
  }
}
