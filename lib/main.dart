import 'package:flutter/material.dart';
import 'package:islamapp/screens/homescreen.dart';
import 'package:islamapp/screens/my_theme.dart';
import 'package:islamapp/screens/quran/sura_content.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeNamed,
      routes: {
        HomeScreen.routeNamed: (_) => HomeScreen(),
        SuraContent.routeNamed: (_) => SuraContent()
      },
      theme: MyTheme.lightTheme,
    );
  }
}
