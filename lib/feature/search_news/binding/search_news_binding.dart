import 'package:get/get.dart';
import 'package:getx_news_app/core/repository/news_repo_impl.dart';
import 'package:getx_news_app/feature/search_news/controller/search_news_controller.dart';

class SearchNewsBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(NewsRepoImpl());
    Get.put(SearchNewsController());
  }
}
