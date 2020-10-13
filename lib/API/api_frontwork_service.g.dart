// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_frontwork_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _APIfrontWorkService implements APIfrontWorkService {
  _APIfrontWorkService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://dev.s1m.ch';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<ModelPostLogin> postToken(data) async {
    ArgumentError.checkNotNull(data, 'data');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = data;
    final _result = await _dio.request('/frontworkAPI/api/v1/Account/Token',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    ModelPostLogin modelPostLogin = ModelPostLogin.fromJson(value);
    return modelPostLogin;
  }
}
