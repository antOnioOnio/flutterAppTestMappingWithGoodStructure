// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ModelBartenderPosition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelBartenderPosition _$ModelBartenderPositionFromJson(
    Map<String, dynamic> json) {
  return ModelBartenderPosition(
    id: json['id'] as String,
    item: json['item'] as String,
    charge: json['charge'] as String,
    count: json['count'] as int,
    note1: json['note1'] as String,
    note2: json['note2'] as String,
    note3: json['note3'] as String,
  );
}

Map<String, dynamic> _$ModelBartenderPositionToJson(
        ModelBartenderPosition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item': instance.item,
      'charge': instance.charge,
      'count': instance.count,
      'note1': instance.note1,
      'note2': instance.note2,
      'note3': instance.note3,
    };
