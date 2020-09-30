import 'package:flutter/foundation.dart';

enum Endpoint {
  bartender,
}

class APIfrontWork {
  static final String host = 'dev.s1m.ch';
  static final int port = 443;
  static final String basePath = '/frontworkAPI/api/v1';

  Uri tokenUri() {
    Uri uri = new Uri(
      scheme: 'https',
      host: host,
      port: port,
      path: '$basePath/Account/Token',
    );

    return uri;
  }

  Uri endpointUri(Endpoint endpoint) => Uri(
      scheme: 'https',
      host: host,
      port: port,
      path: '$basePath/${_paths[endpoint]}');


  static Map<Endpoint, String> _paths = {
    Endpoint.bartender: 'Bartender',
  };
}
