import 'package:flutter/material.dart';
import 'package:haberproje/pages/news_page.dart';
import 'package:haberproje/viewmodel/article_list_view_model.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(//diğer classlara erişim
        create: (context) => ArticleListViewModel(),
        child: const NewsPage(),//liste gösteren bir widget
      ),
    );
  }
}
