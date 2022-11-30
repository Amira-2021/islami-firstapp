import 'package:flutter/material.dart';
import 'package:islamapp/screens/hadeth/hadeth_tap.dart';
import 'package:islamapp/screens/quran/quran_tap.dart';
import 'package:islamapp/screens/radio/radio_tap.dart';
import 'package:islamapp/screens/sebha/sebha_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeNamed = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> screens = [QuranTap(), HadethTap(), SebhaTap(), RadioTap()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/drawable-ldpi/bg3.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Islamic",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Colors.black, fontSize: 30),
          ),
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
                icon: ImageIcon(AssetImage("assets/images/moshaf_gold.png")),
                label: "Moshaf"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: "Radio"),
          ],
        ),
      ),
    );
  }
}
