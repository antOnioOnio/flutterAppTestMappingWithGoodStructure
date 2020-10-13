import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:test_mapping/API/api_frontwork_service.dart';
import 'package:test_mapping/API/datacacheService.dart';
import 'package:test_mapping/database/appDataBase.dart';
import 'package:test_mapping/database/daos/model_postlogin_dao.dart';
import 'package:logger/logger.dart';

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

  Future<bool> _saveUserDataToSP(String userName, String token) async {
    bool state = false;
    await _dataCacheService.saveUserNameSharedPreferences(userName);
    state = await _dataCacheService.saveUserTokenSharedPreferences(token);
    return state;
  }

  Future<bool> doPostLogin(String user, String password) async {
    var logger = Logger();
    bool boolvalue = false;
    String bodyParameter =
        "grant_type=password&username=$user&password=$password";

    print("Body parameters to send---> " + bodyParameter);

    await _apiService.postToken(bodyParameter).then((response) async {
      print("--->" + response.toString());
      // inserting into sharedPreferences
      await _saveUserDataToSP(user, response.access_token);

      ModelPostLogin modelPostLogin = new ModelPostLogin(
          grant_type: "password",
          username: user,
          password: password,
          access_token: response.access_token,
          expires: "null");

      // inserting it into db
      int value = await _postLoginDao.insertOrReplacePostLogin(modelPostLogin);

      boolvalue = true;
    }).catchError((Object obj) {
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          print("pero guaaaaaaaaaat");
          boolvalue = false;
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response;
          logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          break;
        default:
      }
    });
    return boolvalue;

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
