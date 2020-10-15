import 'dart:convert';
import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ModelBartender.g.dart';

@JsonSerializable()
@entity
class ModelBartender {

  @primaryKey
  final String id;
  final String bartenderNr;
  final String notes;
  final String printDefinition;
  final String printer;

  ModelBartender(
      {this.id,
      this.bartenderNr,
      this.notes,
      this.printDefinition,
      this.printer,});

  factory ModelBartender.fromJson(Map<String, dynamic> data) =>
      _$ModelBartenderFromJson(data);

  Map<String, dynamic> toJson() => _$ModelBartenderToJson(this);


}
