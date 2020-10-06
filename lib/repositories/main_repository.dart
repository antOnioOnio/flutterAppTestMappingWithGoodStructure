import 'package:flutter/foundation.dart';
import 'package:test_mapping/API/api_service.dart';
import 'package:test_mapping/API/datacacheService.dart';
import 'package:test_mapping/database/appDataBaseFloor.dart';
import 'package:test_mapping/database/manager/ModelPostLoginDao.dart';
import 'package:test_mapping/database/models/ModelBartender.dart';
import 'package:test_mapping/database/models/ModelPostlogin.dart';

class DataRepository {
  DataRepository(
      {@required this.dataCacheService,
      @required this.apiService,
      @required this.dataBase});

  final DataCacheService dataCacheService;
  final APIService apiService;
  final AppDataBase dataBase;

  ///
  Future<bool> createPostLogin(String user, String password) async {
    ModelPostLogin newPost = new ModelPostLogin(
        grant_type: "password", username: user, password: password);

    ModelPostLogin postLogin = await apiService.getAccessToken(newPost.toMap());

    if (postLogin.access_token != null) {
      ModelPostLoginDao postLoginDao = dataBase.modelPostLoginDao;
      bool state = await dataCacheService
          .saveUserNameSharedPreferences(postLogin.username);

      state = await dataCacheService
          .saveUserTokenSharedPreferences(postLogin.access_token);

      postLoginDao.insertPerson(postLogin);

      return state;
    }

    return false;
  }

  ///
  Future<bool> postBartenders(Map map) async {
    String token = await dataCacheService.getUserTokenSharedPreferences();

    ModelBartender bartender = await apiService.postBartender(map, token);

    if (bartender != null) {
      print("Bartender -->" + bartender.id);
    }

    return bartender != null ? true : false;
  }
}
