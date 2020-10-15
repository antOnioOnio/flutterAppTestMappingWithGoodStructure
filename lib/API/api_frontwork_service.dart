import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test_mapping/database/appDataBase.dart';
part 'api_frontwork_service.g.dart';

@RestApi(baseUrl: "https://dev.s1m.ch")
abstract class APIfrontWorkService {
  static const String basePath = '/frontworkAPI/api/v1';

  factory APIfrontWorkService(Dio dio, {String baseUrl}) = _APIfrontWorkService;

  @POST("$basePath/Account/Token")
  Future<ModelPostLogin> postToken(@Body() String data);

  @POST("$basePath/Bartender")
  Future<ModelBartender> postBartender(
      @Body() String data,
      @Header("Content-Type") String contentType,
      @Header('Authorization') String auth);
}
