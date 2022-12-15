import 'package:flutter/material.dart';
import 'package:islamapp/provider/settings_provider.dart';
import 'package:islamapp/screens/hadeth/hadeth_content.dart';
import 'package:islamapp/screens/homescreen.dart';
import 'package:islamapp/screens/my_theme.dart';
import 'package:islamapp/screens/quran/sura_content.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingProvder = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeNamed,
      routes: {
        HomeScreen.routeNamed: (_) => HomeScreen(),
        SuraContent.routeNamed: (_) => SuraContent(),
        HadethContent.routeNamed: (_) => HadethContent()
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: settingProvder.currentMode,
    );
  }
}
