import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataCacheService {
  static String sharedPreferencesUserLoggedInKey = 'ISLOGGEDIN';
  static String sharedPreferencesUserNameKey = 'USERNAMEKEY';
  static String sharedPreferencesUserEmailKey = 'USEREMAILKEY';

  DataCacheService({@required this.sharedPreferences});
  final SharedPreferences sharedPreferences;

  // saving data to sharedPreferences
  Future<bool> saveUserLoggedInSharedPreferences(bool isUserLoggedIn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(
        sharedPreferencesUserLoggedInKey, isUserLoggedIn);
  }

  Future<bool> saveUserNameSharedPreferences(String userName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPreferencesUserNameKey, userName);
  }

  Future<bool> saveUserEmailSharedPreferences(String userEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPreferencesUserEmailKey, userEmail);
  }

  // getting it from sharedpreferences
  Future<bool> getUserLoggedInSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getBool(sharedPreferencesUserLoggedInKey);
  }

  Future<String> getUserNameSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(sharedPreferencesUserNameKey);
  }

  Future<String> getUserEmailSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(sharedPreferencesUserEmailKey);
  }
}
