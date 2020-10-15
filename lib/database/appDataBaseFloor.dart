import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'models/Exports.dart';
import 'manager/Exports.dart';

part 'appDataBaseFloor.g.dart';

@Database(version: 1, entities: [
  ModelBartender,
  ModelPostLogin,
  ModelBartenderPosition,
  BartenderEntry
])
abstract class AppDataBase extends FloorDatabase {
  ModelBartenderDao get modelBartenderDao;
  ModelPostLoginDao get modelPostLoginDao;
  BartenderEntryDao get bartenderEntryDao;
  ModelBartenderPositionDao get modelBartenderPosition;
}
