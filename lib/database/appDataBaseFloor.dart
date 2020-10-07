import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:test_mapping/database/manager/ModelPostLoginDao.dart';
import 'package:test_mapping/database/models/ModelPostlogin.dart';

import 'manager/ModelBartenderDao.dart';
import 'models/ModelBartender.dart';


part 'appDataBaseFloor.g.dart';

@Database(version: 1, entities: [ModelBartender, ModelPostLogin])
abstract class AppDataBase extends FloorDatabase {
  ModelBartenderDao get modelBartenderDao;
  ModelPostLoginDao get modelPostLoginDao;
  /* ModelBartenderPositionDao get model;*/
}
