import 'package:json_annotation/json_annotation.dart';
import 'package:test_mapping/models/bartender_position.dart';

part 'bartender.g.dart';

@JsonSerializable()
class Bartender {
  final String id;
  final String bartenderNr;
  final String notes;
  final String printDefinition;
  final String printer;
  final List<BartenderPosition> positions;

  Bartender(
      {this.id,
      this.bartenderNr,
      this.notes,
      this.printDefinition,
      this.printer,
      this.positions});

  factory Bartender.fromJson(Map<String, dynamic> data) =>
      _$BartenderFromJson(data);

  Map<String, dynamic> toJson() => _$BartenderToJson(this);
}
