import 'package:flutter/material.dart';
import 'package:netflix/ui_page/detail_page.dart';
import 'package:netflix/ui_page/home_page.dart';
import 'package:netflix/ui_page/movies_page.dart';
import 'package:netflix/ui_page/mynetflix_page.dart';
import 'package:netflix/ui_page/newHot_Page.dart';

class NetflixBottomPage extends StatefulWidget

{
  @override
  State<NetflixBottomPage> createState() => _NetflixBottomPageState();
}

class _NetflixBottomPageState extends State<NetflixBottomPage>

{
  bool isDark=false;
  int SelectedIndex = 0;

  List<Widget>pages=
  [
    HomePage(),
    MoviesPage(),
    NewhotPage(),
    MynetflixPage()

  ];

  @override
  Widget build(BuildContext context)
  {
    isDark=Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
      body: pages[SelectedIndex],
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home,size: 30,), label: "Home"),
        NavigationDestination(icon: Icon(Icons.games,size: 30,), label: 'Games'),
        NavigationDestination(icon: Icon(Icons.playlist_play,size: 30,), label: "New&Hot"),
        NavigationDestination(icon: Icon(Icons.emoji_emotions_sharp,size: 30,), label: "Profile"),

      ],

           onDestinationSelected: (value){
          SelectedIndex = value;
          setState(() {

          });
           },
      ),
    );
  }
}
