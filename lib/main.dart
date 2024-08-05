import 'package:flutter/material.dart';
import 'package:netflix/detail_page.dart';
import 'package:netflix/home_page.dart';
import 'package:netflix/movies_page.dart';
import 'package:netflix/mynetflix_page.dart';
import 'package:netflix/newHot_Page.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoviesPage(),
    );
  }

}