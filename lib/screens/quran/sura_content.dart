import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamapp/screens/quran/sura_name_widget.dart';
import 'package:islamapp/screens/quran/verse_widget.dart';
import 'package:provider/provider.dart';

import '../../provider/settings_provider.dart';

class SuraContent extends StatefulWidget {
  static const String routeNamed = "sura";

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> verses = [];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    SuraNameWidgetArg arge =
        ModalRoute.of(context)?.settings.arguments as SuraNameWidgetArg;
    if (verses.isEmpty) readFile(arge.index + 1);
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("سورة ${arge.name}",
            textDirection: TextDirection.rtl,
            style: Theme.of(context).textTheme.headline1),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(settingsProvider.changeBackTheme()),
                fit: BoxFit.fill)),
        child: verses.isEmpty ?
        Center(child: CircularProgressIndicator(),) :
        Card(
          color: Theme
              .of(context)
              .cardColor,
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: ListView.builder(itemBuilder: (context, index) {
            return VersesWidget(verse: verses[index], index: index);
          },
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  // read data from file
  void readFile(int index) async
  {
    String filecontent = await rootBundle.loadString("assets/files/$index.txt");
    List<String> lines = filecontent.trim().split("\n");
    verses = lines;
    setState(() {});
  }
}
