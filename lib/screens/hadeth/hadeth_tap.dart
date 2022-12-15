import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamapp/screens/hadeth/hadth_name_widget.dart';
import 'package:provider/provider.dart';

import '../../provider/settings_provider.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> hadethname = [];

  @override
  Widget build(BuildContext context) {
    var sp = Provider.of<SettingsProvider>(context);

    if (hadethname.isEmpty) {
      loadingHadeth();
    }
    return Container(
      child: Column(
        children: [
          Image.asset("assets/images/drawable-ldpi/bgh.png"),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    flex: 5,
                    child: ListView.separated(
                        itemBuilder: (context, index) => HadethNameWidget(
                              hadethname[index],
                            ),
                        separatorBuilder: (context, index) => Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 64),
                              height: 1,
                              color: Theme.of(context).accentColor,
                            ),
                        itemCount: hadethname.length)),
              ],
            ),
          )
        ],
      ),
    );
  }

  void loadingHadeth() async {
    List<Hadeth> hadethList = []; // hadeth read from file
    String allHadethContent =
        await rootBundle.loadString("assets/files/ahadeth .txt");
    List<String> content = allHadethContent.trim().split("#");
    for (int i = 0; i < content.length; i++) {
      String single = content[i].trim();
      int indexOfFirstLine = single.indexOf("\n");
      String title = single.substring(0, indexOfFirstLine);
      String hadethSingleContent = single.substring(indexOfFirstLine + 1);
      Hadeth h = Hadeth(title, hadethSingleContent);
      hadethList.add(h);
    }
    hadethname = hadethList;
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
