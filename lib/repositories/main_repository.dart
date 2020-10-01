import 'package:flutter/foundation.dart';
import 'package:test_mapping/API/api_service.dart';
import 'package:test_mapping/API/datacacheService.dart';
import 'package:test_mapping/models/bartender.dart';
import 'package:test_mapping/models/postlogin.dart';

class DataRepository {
  DataRepository({@required this.dataCacheService, @required this.apiService});

  final DataCacheService dataCacheService;
  final APIService apiService;

  ///
  Future<bool> createPostLogin(String user, String password) async {
    PostLogin newPost = new PostLogin(
        grant_type: "password", username: user, password: password);

    PostLogin postLogin = await apiService.getAccessToken(newPost.toMap());

    if (postLogin.access_token != null) {
      bool state = await dataCacheService
          .saveUserNameSharedPreferences(postLogin.username);

      state = await dataCacheService
          .saveUserTokenSharedPreferences(postLogin.access_token);

      return state;
    }

    return false;
  }

  ///
  Future<bool> postBartenders(Map map) async {
    String token = await dataCacheService.getUserTokenSharedPreferences();

    Bartender bartender = await apiService.postBartender(map, token);

    if (bartender != null) {
      print("Bartender -->" + bartender.id);
    }

    return bartender != null ? true : false;
  }
}
