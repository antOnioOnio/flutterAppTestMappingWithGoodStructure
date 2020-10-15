import 'dart:convert';

import 'package:json_annotation/json_annotation.dart' as j;
import 'package:moor/moor.dart';


class ModelBartenderPositions extends Table{
  TextColumn get  id    => text()();
  TextColumn get  item  => text()();
  TextColumn get  charge=> text()();
  IntColumn get count   => integer()();
  TextColumn get  note1 => text()();
  TextColumn get  note2 => text()();
  TextColumn get  note3 => text()();

  @override
  Set<Column> get primaryKey => {id};
}
