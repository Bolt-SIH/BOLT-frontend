// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../enums/api_type.dart';
import '../services/api_request.dart';

final _apiRequest = ApiRequest(baseUrl: "3.110.119.227");

Future<List<dynamic>> fetcharticle() async {
  http.Response response =
      await _apiRequest.getResponse("/content/fetch-articles", ApiType.get);

  return jsonDecode(response.body)['articles'];
}

Future<List<dynamic>> fetchnews() async {
  http.Response news =
      await _apiRequest.getResponse("/content/fetch-news", ApiType.get);

  return jsonDecode(news.body)['articles'];
}

Future<List<dynamic>> fetch_summary() async {
  http.Response summary =
      await _apiRequest.getResponse("/content/fetch-books", ApiType.get);

  return jsonDecode(summary.body);
}

Future<List<dynamic>> fetchcarousel() async {
  final carousel =
      await http.get(Uri.parse("https://carousel.free.beeceptor.com"));
  return jsonDecode(carousel.body);
}
