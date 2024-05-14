import 'package:link_merchant_erp/themes/dark_theme_preference.dart';
import 'package:flutter/material.dart';

class DarkThemeProvider extends ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }
}
