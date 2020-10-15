import 'dart:convert';

import 'package:moor_flutter/moor_flutter.dart';

import '../ConverterPosition.dart';


class ModelBartenders extends Table {
  TextColumn get  id=> text()();
  TextColumn get  bartenderNr=> text()();
  TextColumn get  notes=> text()();
  TextColumn get  printDefinition=> text()();
  TextColumn get  printer=> text()();
  // this is the way to have it as converter.
/*  TextColumn get  positions=> text().map(const BartenderPositionConverter()).nullable()();*/

  @override
  Set<Column> get primaryKey => {id};


}
