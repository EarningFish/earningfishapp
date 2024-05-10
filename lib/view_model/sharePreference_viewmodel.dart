import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceViewModel with ChangeNotifier{
  //
  // Future<bool> saveUser(LoginOutputModel user,int userId)async{
  //
  //   final SharedPreferences sp = await SharedPreferences.getInstance();
  //   sp.setString('token', user.token.toString());
  //   sp.setInt('userId', userId);
  //   notifyListeners();
  //   return true ;
  // }

  // Future<bool> saveUserData(GetUserByIdModel user)async{
  //   final SharedPreferences sp = await SharedPreferences.getInstance();
  //   sp.setString('userData', user.result.toString());
  //   notifyListeners();
  //   return true ;
  // }


  Future<bool> saveUserData1(String  username,String Email)async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('username', username);
    sp.setString('Email', Email);
    notifyListeners();
    return true ;
  }
  Future<String?> getUsername() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('username');
  }
  Future<String?> getEmail() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('Email');
  }

  // Future<LoginOutputModel> getUser()async{
  //   final SharedPreferences sp = await SharedPreferences.getInstance();
  //   final String? token = sp.getString('token');
  //
  //   return LoginOutputModel(
  //       token: token.toString()
  //   );
  // }
  Future<int?> getUserId() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getInt('userId');
  }

  Future<bool> remove()async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove('token');
    return true;

  }

  static Future<String?> getToken() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('token');
  }

  // Method to retrieve the last active step
  Future<int> getLastActiveStep() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('lastActiveStep') ?? 0; // Use 0 if no value is stored
  }

// Method to save the last active step
  Future<void> saveLastActiveStep(int step) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('lastActiveStep', step);
  }

}