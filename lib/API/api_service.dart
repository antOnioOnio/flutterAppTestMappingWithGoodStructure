import 'dart:convert';

import 'package:http/http.dart ' as http;
import 'package:test_mapping/models/bartender.dart';
import 'api_frontwork.dart';
import '../models/postlogin.dart';

class APIService {
  APIService(this.api);

  final APIfrontWork api;

  Future<PostLogin> getAccessToken(Map map) async {
    final response = await http.post(
      api.tokenUri().toString(),
      body: map,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data != null) {
        return PostLogin.fromJson(data);
      }
    }
    print(
        'Request ${api.tokenUri().toString()} failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    throw response;
  }

  Future<Bartender> postBartender(Map map, String token) async {
    print('alo?');

    final response = await http.post(
      api.endpointUri(Endpoint.bartender).toString(),
      headers: {
        "Content-type": "application/json",
        "Authorization": "bearer " + token,
      },
      body: map,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data != null) {
        return Bartender.fromJson(data);
      }
    }

    print(
        'Request ${api.endpointUri(Endpoint.bartender).toString()} failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    throw response;
  }
}
