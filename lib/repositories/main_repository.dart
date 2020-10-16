import 'dart:convert';
import 'package:test_mapping/database/models/Exports.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter/foundation.dart';
import 'package:test_mapping/API/api_service.dart';
import 'package:test_mapping/API/datacacheService.dart';
import 'package:test_mapping/database/appDataBaseFloor.dart';
import 'package:test_mapping/database/manager/ModelPostLoginDao.dart';

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

      postLoginDao.insertPostLogin(postLogin);

      return state;
    }

    return false;
  }

  ///
  Future<bool> postBartenders() async {



    String token = await dataCacheService.getUserTokenSharedPreferences();

    var map = new Map();
    var uuid = Uuid();

    map = await apiService.postBartender(createFakeBartenderes(), token);

    if (map['id'] != null) {
      print("Map Response---> " + map.toString());

      var posObjsJson = map['positions'] as List;
      List<ModelBartenderPosition> _positions = posObjsJson
          .map((tagJson) => ModelBartenderPosition.fromJson(tagJson))
          .toList();

      for (var pos in _positions) {
        // inser our Bartender position into its table
        dataBase.modelBartenderPositionDao.insertBartenderPosition(pos);

        // insert one entry for each position in our bartenderEntryPosition
        BartenderEntry bartenderEntry =
            new BartenderEntry(uuid.v4(), map["id"], pos.id);
        dataBase.bartenderEntryDao.insertBartenderEntry(bartenderEntry);
      }
      // insert our bartender into its table
      ModelBartender modelBartender = new ModelBartender.fromJson(map);
      await dataBase.modelBartenderDao.insertBartender(modelBartender);

      return true;
    } else {
      return false;
    }
  }

  Map createFakeBartenderes() {
    var uuid = Uuid();
    ModelBartenderPosition bartenderPosition = new ModelBartenderPosition(
        id: uuid.v4(),
        item: "sample string 2",
        charge: "sample string 3",
        count: 4,
        note1: "sample string 5",
        note2: "sample string 6",
        note3: "sample string 7");

    ModelBartenderPosition bartenderPosition1 = new ModelBartenderPosition(
        id: uuid.v4(),
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
