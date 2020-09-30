import 'package:flutter/foundation.dart';
import 'package:test_mapping/API/api_service.dart';
import 'package:test_mapping/API/datacacheService.dart';
import 'package:test_mapping/models/bartender.dart';
import 'package:test_mapping/models/postlogin.dart';

class DataRepository {
  DataRepository({@required this.dataCacheService, @required this.apiService});

  final DataCacheService dataCacheService;
  final APIService apiService;

  Future<bool> createPostLogin(Map map) async {
    PostLogin postLogin = await apiService.getAccessToken(map);

    if (postLogin.access_token != null) {
      bool state = await dataCacheService
          .saveUserNameSharedPreferences(postLogin.username);

      return state;
    }

    return false;
  }

  Future<bool> postBartenders(Map map) async{
    Bartender bartender = await apiService.postBartender(map);
    return bartender != null ? true: false;

  }
}
