import 'package:flutter/material.dart';
import 'package:islamapp/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class BottomSheetLang extends StatefulWidget {
  @override
  State<BottomSheetLang> createState() => _BottomSheetLangState();
}

class _BottomSheetLangState extends State<BottomSheetLang> {
  @override
  Widget build(BuildContext context) {
    var sp = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                sp.setLangName();
              },
              child: getSelectedIcon("English")),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                sp.setLangName();
              },
              child: getUnSelectedIcon("Arabic")),
        ],
      ),
    );
  }

  Widget getSelectedIcon(String title) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Theme.of(context).accentColor)),
          Icon(
            Icons.check,
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }

  Widget getUnSelectedIcon(String title) {
    return Container(
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
