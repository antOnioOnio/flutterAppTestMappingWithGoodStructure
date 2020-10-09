import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_mapping/database/appDataBase.dart';

part 'api_frontwork_service.chopper.dart';

@ChopperApi(baseUrl: "https://dev.s1m.ch")
abstract class APIfrontWorkService extends ChopperService {
  static const String basePath = '/frontworkAPI/api/v1';

  static APIfrontWorkService create() {
    final client = ChopperClient(
        baseUrl: "https://dev.s1m.ch",
        services: [
          _$APIfrontWorkService(),
        ],
        interceptors: [HttpLoggingInterceptor()],
        converter: JsonConverter());
    return _$APIfrontWorkService(client);
  }

  @Post(
    path: '$basePath/Account/Token',
  )
  Future<Response> getToken(
    @Body() Map<String, dynamic> body,
  );
}
