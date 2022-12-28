import 'package:getx_news_app/core/model/article.dart';

abstract class NewsRepo {
  Future<List<Article>> getNewsHeadline();
  Future<List<Article>> getSearchedNews(String query);
}
