import 'package:flutter/cupertino.dart';
import 'package:haberproje/services/news_service.dart';
import 'package:haberproje/viewmodel/article_view_model.dart';

enum Status { initial, loading, loaded }

class ArticleListViewModel extends ChangeNotifier {
  ArticleViewModel viewModel =
      ArticleViewModel('general', []); //kategori bilgisini çeker
  Status status = Status.initial; //ilk bekliyor tamam

  ArticleListViewModel() {
    getNews('general');
  } //haberleri çeker

  Future<void> getNews(String category) async {
    status = Status.loading;
    notifyListeners();
    viewModel.articles = await NewsService().fetchNews(category);
    status = Status.loaded;
    notifyListeners();
  } //haberleri çekmek için kullanılır.
}
