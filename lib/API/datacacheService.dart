import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataCacheService {
  static String SP_USER_LOGGED = 'ISLOGGEDIN';
  static String SP_USERNAME = 'USERNAMEKEY';
  static String SP_USER_MAIL = 'USEREMAILKEY';
  static String SP_USERTOKEN = 'UserToken';

  DataCacheService({@required this.sharedPreferences});
  final SharedPreferences sharedPreferences;

  // saving data to sharedPreferences
  Future<bool> saveUserLoggedInSharedPreferences(bool isUserLoggedIn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(
        SP_USER_LOGGED, isUserLoggedIn);
  }

  Future<bool> saveUserNameSharedPreferences(String userName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(SP_USERNAME, userName);
  }

  Future<bool> saveUserEmailSharedPreferences(String userEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(SP_USER_MAIL, userEmail);
  }

  Future<bool> saveUserTokenSharedPreferences(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(SP_USERTOKEN, token);
  }

  // getting it from sharedpreferences
  Future<bool> getUserLoggedInSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getBool(SP_USER_LOGGED);
  }

  Future<String> getUserNameSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(SP_USERNAME);
  }

  Future<String> getUserEmailSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(SP_USER_MAIL);
  }

  Future<String> getUserTokenSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(SP_USERTOKEN);
  }
}
