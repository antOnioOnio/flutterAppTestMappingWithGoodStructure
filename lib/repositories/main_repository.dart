import 'package:flutter/foundation.dart';
import 'package:test_mapping/API/api_frontwork_service.dart';
import 'package:test_mapping/API/datacacheService.dart';
import 'package:test_mapping/database/appDataBase.dart';
import 'package:test_mapping/database/daos/model_postlogin_dao.dart';
import 'package:test_mapping/database/models/ModelPostlogin.dart';

class DataRepository {
  final ModelPostLoginDao _postLoginDao;
  final DataCacheService _dataCacheService;
  final APIfrontWorkService _apiService;

  DataRepository(
      {@required dataCacheService,
      @required apiService,
      @required postLoginDao})
      : _apiService = apiService,
        _dataCacheService = dataCacheService,
        _postLoginDao = postLoginDao;

  Future<bool> doPostLogin(String user, String password) async {
    ModelPostLogin modelPostLogin = new ModelPostLogin(
        grant_type: "password",
        username: user,
        password: password,
        access_token: null,
        expires: null);

    print("MAP LOGING---> " + modelPostLogin.toJson().toString());

    await _apiService.getToken(modelPostLogin.toJson()).then((value) {
      print("BODY OF THE RESPONSE---> " + value.body);
    });

/*    if (response.statusCode >= 200 && response.statusCode < 400) {
      print('Status code --->' + response.statusCode.toString());

*/ /*      bool state = await dataCacheService
          .saveUserNameSharedPreferences(postLogin.username);

      state = await dataCacheService
          .saveUserTokenSharedPreferences(postLogin.access_token);*/ /*

    } else {
      print('keep going...');
    }
  }*/

/*  ///
  Future<bool> createPostLogin(String user, String password) async {
    ModelPostLogin newPost = new ModelPostLogin(
        grant_type: "password", username: user, password: password);

    ModelPostLogin postLogin = await apiService.getAccessToken(newPost.toMap());

    if (postLogin.access_token != null) {
      bool state = await dataCacheService
          .saveUserNameSharedPreferences(postLogin.username);

      state = await dataCacheService
          .saveUserTokenSharedPreferences(postLogin.access_token);

      return state;
    }

    return false;
  }*/

/*  ///
  Future<bool> postBartenders(Map map) async {
    String token = await dataCacheService.getUserTokenSharedPreferences();

    ModelBartender bartender = await apiService.postBartender(map, token);

    if (bartender != null) {
      print("Bartender -->" + bartender.id);
    }

    return bartender != null ? true : false;
  }*/
  }
}
