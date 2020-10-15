import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:test_mapping/API/api_service.dart';
import 'package:test_mapping/API/datacacheService.dart';
import 'package:test_mapping/database/appDataBaseFloor.dart';
import 'package:test_mapping/database/manager/ModelPostLoginDao.dart';
import 'package:test_mapping/database/models/BartenderEntry.dart';
import 'package:test_mapping/database/models/ModelBartender.dart';
import 'package:test_mapping/database/models/ModelBartenderPosition.dart';
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
  Future<bool> postBartenders() async {
    String token = await dataCacheService.getUserTokenSharedPreferences();

    var map = new Map();

    map = await apiService.postBartender(createFakeBartenderes(), token);

/*
    if (map['id'] != null) {
      dataBase.bartenderEntryDao.insertBartenderEntry(BartenderEntry(, map['id'], "algo"));
    }
*/

    /* return bartender != null ? true : false;*/
    return true;
  }

  Map createFakeBartenderes() {
    ModelBartenderPosition bartenderPosition = new ModelBartenderPosition(
        id: "6f2c3a99-2340-4e18-95ee-a4d07c0ae431",
        item: "sample string 2",
        charge: "sample string 3",
        count: 4,
        note1: "sample string 5",
        note2: "sample string 6",
        note3: "sample string 7");

    ModelBartenderPosition bartenderPosition1 = new ModelBartenderPosition(
        id: "6f2c3a99-2340-4e18-95ee-a4d07c0ae432",
        item: "sample string 2",
        charge: "sample string 3",
        count: 4,
        note1: "sample string 5",
        note2: "sample string 6",
        note3: "sample string 7");

    List<ModelBartenderPosition> list = [bartenderPosition, bartenderPosition1];

    ModelBartender bartender = new ModelBartender(
      id: "94a15183-3a1b-4bb1-984e-eed8c1d71572",
      bartenderNr: "97bbd28a-5bb4-4356-b6de-6f756e17d2e4",
      notes: "sample string 3",
      printDefinition: "sample string 4",
      printer: "sample string 5",
    );

    var mainMap = new Map();
    mainMap = bartender.toJson();
    mainMap['positions'] = jsonEncode(list);

    return mainMap;
  }
}
