import 'dart:convert';

import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test_mapping/database/models/ModelBartenderPosition.dart';

part 'ModelBartender.g.dart';

@JsonSerializable()
@entity
class ModelBartender {
/*
  @ignore
  static final String TABLE_NAME = "bartenders";
*/

  @primaryKey
  final String id;
  final String bartenderNr;
  final String notes;
  final String printDefinition;
  final String printer;
  final List<ModelBartenderPosition> positions;

  ModelBartender(
      {this.id,
      this.bartenderNr,
      this.notes,
      this.printDefinition,
      this.printer,
      this.positions});

  factory ModelBartender.fromJson(Map<String, dynamic> data) =>
      _$ModelBartenderFromJson(data);

  Map<String, dynamic> toJson() => _$ModelBartenderToJson(this);
}
