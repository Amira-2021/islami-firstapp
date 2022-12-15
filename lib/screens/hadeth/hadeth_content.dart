import 'package:flutter/material.dart';
import 'package:islamapp/provider/settings_provider.dart';
import 'package:islamapp/screens/hadeth/hadeth_tap.dart';
import 'package:provider/provider.dart';

class HadethContent extends StatelessWidget {
  static const String routeNamed = "hadeth-name";

  @override
  Widget build(BuildContext context) {
    var sp = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(sp.changeBackTheme()), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            args.title,
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Card(
              color: Theme.of(context).cardColor,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Text(args.content,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.headline6),
                ),
              )),
        ),
      ),
    );
  }
}
