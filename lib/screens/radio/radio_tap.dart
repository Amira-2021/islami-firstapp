import 'package:flutter/material.dart';

import '../my_theme.dart';

class RadioTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: 205,
            height: 227,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/smallimage.png"),
                    fit: BoxFit.fill)),
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                color: MyTheme.primaryColor,
                width: double.infinity,
                height: 2,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Number of Ayaat",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        height: double.infinity,
                      ),
                    ),
                    Container(
                      color: MyTheme.primaryColor,
                      height: double.infinity,
                      width: 2,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Sura Name",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        height: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
