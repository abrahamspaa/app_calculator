import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class Themes {
  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(),
    scaffoldBackgroundColor: Colors.grey.shade900
  );

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(),
    scaffoldBackgroundColor: Colors.white
  );
}