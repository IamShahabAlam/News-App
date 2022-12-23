// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: 
         Center(child: 
        
        Text("NEWS APP"),
          
        
        ),
      ),
    );
  }
}



