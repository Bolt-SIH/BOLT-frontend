import 'package:http/http.dart' as http;
import '../enums/api_type.dart';

class ApiRequest {
  final String baseUrl;
  final String scheme;

  ApiRequest({
    required this.baseUrl,
    this.scheme = 'http',
  });

  Future<http.Response> getResponse(String path, ApiType type,
      {Map<String, String>? queryParams,
      Map<String, String>? headers,
      Object? body}) async {
    switch (type) {
      case ApiType.get:
        return await http.get(
            Uri(
              scheme: scheme,
              host: baseUrl,
              path: path,
              queryParameters: queryParams,
            ),
            headers: headers);
      case ApiType.post:
        return await http.post(
            Uri(
              scheme: scheme,
              host: baseUrl,
              path: path,
              queryParameters: queryParams,
            ),
            headers: headers,
            body: body);
      case ApiType.put:
        return await http.put(
            Uri(
              scheme: scheme,
              host: baseUrl,
              path: path,
              queryParameters: queryParams,
            ),
            headers: headers,
            body: body);
      case ApiType.delete:
        return await http.delete(
            Uri(
              scheme: scheme,
              host: baseUrl,
              path: path,
              queryParameters: queryParams,
            ),
            headers: headers,
            body: body);
    }
  }
}
