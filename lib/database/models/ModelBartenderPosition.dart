import 'dart:convert';

import 'package:json_annotation/json_annotation.dart' as j;
import 'package:moor/moor.dart';

part 'ModelBartenderPosition.g.dart';

@j.JsonSerializable()
class ModelBartenderPosition {
  String id;
  String item;
  String charge;
  int count;
  String note1;
  String note2;
  String note3;

  ModelBartenderPosition(
      {this.id,
      this.item,
      this.charge,
      this.count,
      this.note1,
      this.note2,
      this.note3});

  factory ModelBartenderPosition.fromJson(Map<String, dynamic> data) =>
      _$ModelBartenderPositionFromJson(data);

  Map<String, dynamic> toJson() => _$ModelBartenderPositionToJson(this);
}
