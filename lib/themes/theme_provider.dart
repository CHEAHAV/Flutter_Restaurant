import 'package:flutter/material.dart';
import 'package:restaurant/themes/dark_mode.dart';
import 'package:restaurant/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  // Default theme is light mode
  ThemeData _themeData = lightMode;

  // Getter for the current theme data
  ThemeData get themeData => _themeData;

  // Check if the current theme is dark mode
  bool get isDarkMode => _themeData == darkMode;

  // Setter for the theme data
  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  // Method to toggle between light and dark mode
  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
    notifyListeners();
  }
}
