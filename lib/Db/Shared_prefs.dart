import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  Future<SharedPreferences> get _getInstance => SharedPreferences.getInstance();

  setUser(bool status) async {
    SharedPreferences instance = await _getInstance;
    instance.setBool("USER", status);
  }

  getUser() async {
    SharedPreferences instance = await _getInstance;

    bool userStatus = instance.getBool("USER") ?? false;
    return userStatus;
  }
}