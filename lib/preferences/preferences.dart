import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  static late SharedPreferences _prefs;

  static int _cuenta = 0;

  static Future init() async{
    _prefs = await SharedPreferences.getInstance();
  }

  static int get cuenta{
    return _prefs.getInt('cuenta') ?? _cuenta;
  }

  static set cuenta(int value) {
    _cuenta = value;
    _prefs.setInt('cuenta', value);
  }
}