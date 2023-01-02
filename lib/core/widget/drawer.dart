// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

getAppDrawer() {
  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ListTile(
          title: Text(
            "News Headline",
          ),
          leading: Icon(Icons.newspaper),
          onTap: () {
            Get.toNamed("/news_headline");
          },
        ),
        ListTile(
          title: Text("Search News"),
          leading: Icon(Icons.search),
          onTap: () {
            Get.toNamed("/search_news");
          },
        )
      ],
    ),
  );
}
