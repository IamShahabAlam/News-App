// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_news_app/feature/news_headline/binding/news_headline_binding.dart';
import 'package:getx_news_app/feature/news_headline/view/news_headline_view.dart';
import 'package:getx_news_app/feature/search_news/binding/search_news_binding.dart';
import 'package:getx_news_app/feature/search_news/view/search_news_view.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/news_headline", page: () => NewsHeadlineView(), binding: NewsHeadlineBinding()),
        GetPage(name: "/search_news", page: () =>  SearchNewsView(), binding: SearchNewsBinding()),
        
      ],
      initialRoute: "/news_headline",
      
    );
  }
}



