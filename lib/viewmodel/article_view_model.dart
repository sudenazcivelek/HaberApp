import '../models/articles.dart';

class ArticleViewModel {
  String category; //hangi kategoride?
  List<Articles> articles; //haberleri çekiyo(kategoriye göre)
  ArticleViewModel(this.category, this.articles); //constructor
}
