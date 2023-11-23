import 'dart:convert';

import 'package:haberproje/models/articles.dart';
import 'package:haberproje/models/news.dart';
import 'package:http/http.dart' as http;

class NewsService {
  Future<List<Articles>> fetchNews(String category) async {
    //kategoriye göre haber çeker.
    String url =
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=f58b94449b4f45b9844a296497a93747';
    Uri uri = Uri.parse(url); //uriye dönüştürür
    final response = await http.get(uri); //get isteği
    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      News news = News.fromJson(result);
      return news.articles ?? [];
    }
    throw Exception('Bad Request');
  }
}
