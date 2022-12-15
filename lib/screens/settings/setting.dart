import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamapp/provider/settings_provider.dart';
import 'package:islamapp/screens/settings/bottom_sheet_theme.dart';
import 'package:provider/provider.dart';

import 'bottom_sheet_lang.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String mode = "";

  @override
  Widget build(BuildContext context) {
    var sp = Provider.of<SettingsProvider>(context);
    return Container(
      margin: EdgeInsets.all(20),
      color: Theme.of(context).cardColor,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Appearance",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showThemeButtomSheet();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                    border: Border.all(color: Theme.of(context).accentColor)),
                child: Text(
                  sp.setModeName(),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Language",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showlangButtomSheet();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                    )),
                child: Text(
                  "English",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  void showThemeButtomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return BottomSheetTheme();
        });
  }

  void showlangButtomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return BottomSheetLang();
        });
  }
}
