import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Prefs_helper.dart';

class MyProvider extends ChangeNotifier{
  String language= "en" ;
  ThemeMode Mode=ThemeMode.dark;
  void getdata()async{
    String? newlanguage=PrefsHelper.getlanguage();
    ChangeLanguage(newlanguage ?? 'en');
    String ? newmode=PrefsHelper.getTheme();
    if(newmode=="dark"){
      ChangeTheme(ThemeMode.dark);
    }
    else{
      ChangeTheme(ThemeMode.light);
    }
  }

  void ChangeLanguage(String LanguageCode){
    language=LanguageCode;
    PrefsHelper.setlanguage(LanguageCode);
    notifyListeners();
  }
  void ChangeTheme(ThemeMode ThemeCode){
    Mode=ThemeCode;
    if(ThemeCode==ThemeMode.dark){
      PrefsHelper.setTheme("dark");
    }
    else{
      PrefsHelper.setTheme("light");
    }
    notifyListeners();

  }
}