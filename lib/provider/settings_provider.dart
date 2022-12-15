import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentMode = ThemeMode.light;

  void changeTheme(ThemeMode newMode) {
    currentMode = newMode;
    notifyListeners();
  }

  String changeBackTheme() {
    return currentMode == ThemeMode.light
        ? "assets/images/drawable-ldpi/bglight.png"
        : "assets/images/drawable-ldpi/bgdark.png";
  }

  String setModeName() {
    return currentMode == ThemeMode.light ? "Light" : "Dark";
  }

  String setLangName() {
    return currentMode == ThemeMode.light ? "English" : "Arabic";
  }

  Color setColor() {
    return currentMode == ThemeMode.light ? (Colors.white30) : (Colors.black26);
  }
}
