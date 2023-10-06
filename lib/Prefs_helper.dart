import 'package:shared_preferences/shared_preferences.dart';

class PrefsHelper{
  static late SharedPreferences prefs ;
  static setlanguage (String language) async {
    await prefs.setString('language', language);
  }
  static  String? getlanguage(){
    return prefs.getString('language');
  }
}