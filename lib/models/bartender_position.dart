import 'package:json_annotation/json_annotation.dart';

part 'bartender_position.g.dart';

@JsonSerializable(explicitToJson: true)
class BartenderPosition {
  final String id;
  final String item;
  final String charge;
  final int count;
  final String note1;
  final String note2;
  final String note3;

  BartenderPosition(
    { this.id,
      this.item,
      this.charge,
      this.count,
      this.note1,
      this.note2,
      this.note3});

  factory BartenderPosition.fromJson(Map<String, dynamic> data) =>
      _$BartenderPositionFromJson(data);

  Map<String, dynamic> toJson() => _$BartenderPositionToJson(this);
}
