import 'package:flutter/material.dart';
import 'package:netflix/theme_provider.dart';
import 'package:netflix/ui_page/netflix_bottom_page.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
     ChangeNotifierProvider(create: (context)=>ThemeProvider(),child:  MyApp(),)
  );
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    context.read<ThemeProvider>().getTheme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetflixBottomPage(),
      theme: ThemeData(
        brightness:Brightness.light,
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.blue),      ),
       darkTheme: ThemeData(brightness: Brightness.dark),
       themeMode: context.watch<ThemeProvider>().getThemeValue() ? ThemeMode.dark:ThemeMode.light,
    );
  }

}