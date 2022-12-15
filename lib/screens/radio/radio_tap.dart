import 'package:flutter/material.dart';
import 'package:islamapp/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class RadioTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sp = Provider.of<SettingsProvider>(context);
    return Center(
      child: Container(
        width: 300,
        height: 100,
        color: sp.setColor(),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Text("Not Available Now",
              style: Theme.of(context).textTheme.headline1),
        ),
      ),
    );
  }
}
