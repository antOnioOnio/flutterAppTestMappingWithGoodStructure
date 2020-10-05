import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'manager/ModelBartenderDao.dart';
import 'manager/ModelBartenderPositionDao.dart';
import 'models/ModelBartender.dart';
import 'models/ModelBartenderPosition.dart';

part 'appDataBaseFloor.g.dart';

@Database(version: 1, entities: [ModelBartender, ModelBartenderPosition])
abstract class AppDataBase extends FloorDatabase {
  ModelBartenderDao get modelBartenderDao;
  ModelBartenderPositionDao get model;
}
