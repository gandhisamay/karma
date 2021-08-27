import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  bool _isLoggedIn = true;

  // bool get isLoggedIn {
  //   return _isLoggedIn;
  // }

  Future<bool> getLoginSettings() async {
    final prefs = await SharedPreferences.getInstance();
    _isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    return _isLoggedIn;
  }

  Future<void> setLoginSettings(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLoggedIn', value);
  }
}
