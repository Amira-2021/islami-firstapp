import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamapp/screens/hadeth/hadeth_content.dart';
import 'package:islamapp/screens/hadeth/hadeth_tap.dart';

class HadethNameWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethNameWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, HadethContent.routeNamed,
                arguments: hadeth);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(hadeth.title,
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
