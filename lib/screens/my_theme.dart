import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightprimary = Color(0xFFB7935F);
  static const Color darkprimary = Color(0xFF12182A);
  static const Color yellow = Color(0xFFFFCC1D);
  static ThemeData lightTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ))),
      cardColor: Colors.white,
      accentColor: lightprimary,
      textTheme: TextTheme(
          headline6: TextStyle(color: Colors.black, fontSize: 18),
          headline1: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
          subtitle2: TextStyle(fontSize: 14, color: Colors.black)),
      primaryColor: lightprimary,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      canvasColor: lightprimary,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 30)));
  static ThemeData darkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: darkprimary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ))),
      cardColor: darkprimary,
      accentColor: yellow,
      textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white, fontSize: 18),
          headline1: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(fontSize: 14, color: Colors.white)),
      primaryColor: darkprimary,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      canvasColor: darkprimary,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedIconTheme: IconThemeData(size: 30, color: Colors.white),
          unselectedItemColor: Colors.white,
          selectedItemColor: yellow,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 30, color: yellow)));
}
