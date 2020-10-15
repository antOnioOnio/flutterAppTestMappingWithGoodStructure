import 'dart:convert';

import 'package:http/http.dart ' as http;
import 'package:test_mapping/database/models/ModelBartender.dart';
import 'package:test_mapping/database/models/ModelPostlogin.dart';
import 'api_frontwork.dart';

class APIService {
  APIService(this.api);

  final APIfrontWork api;

  Future<ModelPostLogin> getAccessToken(Map map) async {
    print("MAP==> " + map.toString());
    final response = await http.post(
      api.tokenUri().toString(),
      body: map,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data != null) {
        return ModelPostLogin.fromJson(data);
      }
    }
    print(
        'Request ${api.tokenUri().toString()} failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    throw response;
  }

  Future<dynamic> postBartender(Map map, String token) async {
    print("body" + map.toString());

    Map<String, String> headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'bearer ' + token
    };

    final response = await http.post(
      api.endpointUri(Endpoint.bartender).toString(),
      headers: headers,
      body: map,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = json.decode(response.body);

      if (data != null) {
        return data;
      }
    }

    print(
        'Request ${api.endpointUri(Endpoint.bartender).toString()} failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    throw response;
  }
}
