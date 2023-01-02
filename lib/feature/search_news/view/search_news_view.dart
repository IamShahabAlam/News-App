// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getx_news_app/core/widget/drawer.dart';

class SearchNewsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search News"),
      centerTitle: true,),
      drawer: getAppDrawer() ,

      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text("The Bodyyy Of Search NEWS"), 
        ],
      ),
    );
  }
}

