// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ModelBartender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelBartender _$ModelBartenderFromJson(Map<String, dynamic> json) {
  return ModelBartender(
    id: json['id'] as String,
    bartenderNr: json['bartenderNr'] as String,
    notes: json['notes'] as String,
    printDefinition: json['printDefinition'] as String,
    printer: json['printer'] as String,
    positions: (json['positions'] as List)
        ?.map((e) => e == null
            ? null
            : ModelBartenderPosition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ModelBartenderToJson(ModelBartender instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bartenderNr': instance.bartenderNr,
      'notes': instance.notes,
      'printDefinition': instance.printDefinition,
      'printer': instance.printer,
      'positions': instance.positions,
    };
