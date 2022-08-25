import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchCats() async {
  final catsdata = await http.get(Uri.parse(
      "https://s3-us-west-2.amazonaws.com/appsdeveloperblog.com/tutorials/files/cats.json"));
  return jsonDecode(catsdata.body);
}

Future<List<dynamic>> fetchnews() async {
  final newsData = await http.get(Uri.parse(
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=572f38944d4243d2ac0c2f5ef2162188"));
  return jsonDecode(newsData.body)['articles'];
}

Future<List<dynamic>> fetcharticles() async {
  final articlesData = await http.get(Uri.parse(
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=572f38944d4243d2ac0c2f5ef2162188"));
  return jsonDecode(articlesData.body)['articles'];
}

Future<List<dynamic>> fetchBooks() async {
  final booksData = await http.get(Uri.parse(
      "https://pixabay.com/api/?key=29198856-05ba26ff01d588d4511986231&q=books&image_type=photo&pretty=true"));
  return jsonDecode(booksData.body)["hits"];
}
