// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:bolt/enums/api_type.dart';
import 'package:bolt/services/api_request.dart';
import 'package:http/http.dart' as http;

final _apiRequest = ApiRequest(baseUrl: "3.110.119.227");

Future<List<dynamic>> fetcharticle() async {
  http.Response response =
      await _apiRequest.getResponse("/content/fetch-articles", ApiType.get);

  // log(json.decode(response.body).toString());
  return jsonDecode(response.body)['articles'];
}

Future<List<dynamic>> fetchnews() async {
  http.Response news =
      await _apiRequest.getResponse("/content/fetch-news", ApiType.get);

  log(json.encode(json.decode(news.body)).toString());
  return jsonDecode(news.body)['articles'];
}

Future<List<dynamic>> fetchsummary() async {
  http.Response news =
      await _apiRequest.getResponse("/content/fetch-books", ApiType.get);

  // log(json.decode(response.body).toString());
  return jsonDecode(news.body);
}

Future<List<dynamic>> fetchcarousel() async {
  final carousel =
      await http.get(Uri.parse("https://carousel.free.beeceptor.com"));
  return jsonDecode(carousel.body);
}
