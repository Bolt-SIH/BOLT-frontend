// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchcarousel() async {
  final carousel =
      await http.get(Uri.parse("https://carousel.free.beeceptor.com"));
  return jsonDecode(carousel.body);
}

Future<List<dynamic>> fetchnews() async {
  final news = await http.get(Uri.parse(
      "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=f5e1a8d911554465bf7b929b132a94f2"));
  return jsonDecode(news.body)['articles'];
}

Future<List<dynamic>> fetch_artice() async {
  final news = await http.get(Uri.parse(
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=f5e1a8d911554465bf7b929b132a94f2"));
  return jsonDecode(news.body)['articles'];
}

Future<List<dynamic>> fetch_summary() async {
  final summary =
      await http.get(Uri.parse("https://summary.free.beeceptor.com/"));
  return jsonDecode(summary.body);
}
