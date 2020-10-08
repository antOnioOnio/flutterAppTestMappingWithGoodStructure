// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_frontwork_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$APIfrontWorkService extends APIfrontWorkService {
  _$APIfrontWorkService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = APIfrontWorkService;

  Future<Response> getToken(Map<String, dynamic> body) {
    final $url = 'https://dev.s1m.ch/frontworkAPI/api/v1/Account/Token';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);

    return client.send<dynamic, dynamic>($request);
  }
}
