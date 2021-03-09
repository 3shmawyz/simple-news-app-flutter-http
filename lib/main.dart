import 'package:flutter/material.dart';
import 'package:news_api/pages/homepage.dart';
import 'package:news_api/pages/singlenews.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter",
      home: HomePage(),
     initialRoute: '/',
routes: {
         "/news":(context)=>News(),
          },
    );
  }
}

