import 'package:shared_preferences/shared_preferences.dart';

import '../constant/values.dart';

 

class SharedPref {
  static Future setLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(loggedIn, true);
  }

  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(loggedIn) ?? false;
  }

  static Future setUserToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(customerToken, token);
  }

  static Future<String> getUserToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(customerToken) ?? "";
  }

  static Future setcustomerId(int id) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(userId, id);
  }

  static Future<int> getcustomerId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(userId) ?? 0;
  }

  
  static Future clearSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}