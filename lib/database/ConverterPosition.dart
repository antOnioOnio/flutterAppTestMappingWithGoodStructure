import 'dart:convert';

import 'package:moor_flutter/moor_flutter.dart';
import 'package:test_mapping/database/models/ModelBartenderPosition.dart';

class BartenderPositionConverter
    extends TypeConverter<ModelBartenderPosition, String> {
  const BartenderPositionConverter();

  @override
  ModelBartenderPosition mapToDart(String fromDb) {
    if (fromDb == null) {
      return null;
    }
    return ModelBartenderPosition.fromJson(
        json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String mapToSql(ModelBartenderPosition value) {
    if (value == null) {
      return null;
    }

    return json.encode(value.toJson());
  }
}
