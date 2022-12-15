import 'package:flutter/material.dart';
import 'package:islamapp/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class BottomSheetTheme extends StatefulWidget {
  @override
  State<BottomSheetTheme> createState() => _BottomSheetThemeState();
}

class _BottomSheetThemeState extends State<BottomSheetTheme> {
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
                sp.changeTheme(ThemeMode.light);
              },
              child: sp.currentMode == ThemeMode.light
                  ? getSelectedIcon("Light")
                  : getUnSelectedIcon("Light")),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                sp.changeTheme(ThemeMode.dark);
              },
              child: sp.currentMode == ThemeMode.dark
                  ? getSelectedIcon("Dark")
                  : getUnSelectedIcon("Dark")),
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
