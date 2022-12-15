import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaTap extends StatefulWidget {
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  List<String> title = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "لا اله الا الله",
    "استغفر الله العظيم"
  ];

  int count = 0;

  int position = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 200,
            height: 190,
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  child: Container(
                      // resha
                      width: 200,
                      height: 55,
                      child: Image.asset("assets/images/head of seb7a.png")),
                ),
                Positioned(
                  top: 40,
                  child: Container(
                      // halqa
                      width: 200,
                      height: 150,
                      child: Image.asset("assets/images/body of seb7a.png")),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 250,
          height: 170,
          margin: EdgeInsets.all(100),
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(children: [
            Text(
              title[position],
              style: Theme.of(context).textTheme.headline1,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: MaterialButton(
                height: 50,
                minWidth: 100,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  onClick();
                },
                child: Text(
                  "$count",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ]),
        ),
      ],
    ));
  }

  void onClick() {
    count++;
    if (count >= 34) {
      position++;
      count = 0;
      if (position >= title.length) {
        count = 0;
        position = 0;
      }
    }
    setState(() {});
  }
}
