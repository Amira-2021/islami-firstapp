import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
  String verse;
  int index;

  VersesWidget({required this.verse, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      child: Text("$verse(${index + 1})",
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6),
    );
  }
}
