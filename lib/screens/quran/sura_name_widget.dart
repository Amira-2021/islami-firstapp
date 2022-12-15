import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamapp/screens/quran/sura_content.dart';

class SuraNameWidget extends StatelessWidget {
  String name;
  int index;

  SuraNameWidget(this.name, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              SuraContent.routeNamed,
              arguments: SuraNameWidgetArg(name: name, index: index),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      name,
                      style: Theme.of(context).textTheme.headline6),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SuraNameWidgetArg {
  String name;
  int index;
  SuraNameWidgetArg({required this.name, required this.index});
}
