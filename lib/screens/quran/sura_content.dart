import 'package:flutter/material.dart';
import 'package:islamapp/screens/my_theme.dart';
import 'package:islamapp/screens/quran/sura_name_widget.dart';

class SuraContent extends StatelessWidget {
  static const String routeNamed = "sura";

  @override
  Widget build(BuildContext context) {
    SuraNameWidgetArg arge =
        ModalRoute.of(context)?.settings.arguments as SuraNameWidgetArg;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.primaryColor,
        title: Text(
          "${arge.name}",
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/drawable-ldpi/bg3.png"),
                fit: BoxFit.fill)),
        child: Card(),
      ),
    );
  }
}
