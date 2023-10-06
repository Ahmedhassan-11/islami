import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  String language= "en" ;
  ThemeMode Mode=ThemeMode.dark;

  void ChangeLanguage(String LanguageCode){
    language=LanguageCode;
    notifyListeners();

  }
  void ChangeTheme(ThemeMode ThemeCode){
    Mode=ThemeCode;
    notifyListeners();

  }
}