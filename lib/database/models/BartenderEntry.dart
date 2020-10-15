import 'package:floor/floor.dart';
import 'package:flutter/material.dart';

@entity
class BartenderEntry {
  @PrimaryKey(autoGenerate: true)
  final int id;

  final String BartenderId;

  final String BartenderPosition;

  BartenderEntry(this.id,  this.BartenderId, this.BartenderPosition);


}
