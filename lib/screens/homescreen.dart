import 'package:flutter/material.dart';
import 'package:islamapp/provider/settings_provider.dart';
import 'package:islamapp/screens/hadeth/hadeth_tap.dart';
import 'package:islamapp/screens/quran/quran_tap.dart';
import 'package:islamapp/screens/radio/radio_tap.dart';
import 'package:islamapp/screens/sebha/sebha_tap.dart';
import 'package:islamapp/screens/settings/setting.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeNamed = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> screens = [
    QuranTap(),
    HadethTap(),
    SebhaTap(),
    RadioTap(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingProvider.changeBackTheme()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islamic", style: Theme.of(context).textTheme.headline1),
        ),
        body: screens[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: ((value) {
            index = value;
            setState(() {});
          }),
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme
                    .of(context)
                    .primaryColor,
                icon: const ImageIcon(
                    AssetImage("assets/images/moshaf_gold.png")),
                label: "Moshaf"),
            BottomNavigationBarItem(
                backgroundColor: Theme
                    .of(context)
                    .primaryColor,
                icon: const ImageIcon(
                    AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Theme
                    .of(context)
                    .primaryColor,
                icon: const ImageIcon(
                    AssetImage("assets/images/sebha_blue.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                backgroundColor: Theme
                    .of(context)
                    .primaryColor,
                icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: "Settings"),
          ],
        ),
      ),
    );
  }
}
