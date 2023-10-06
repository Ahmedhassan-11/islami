import 'package:flutter/material.dart';
import 'package:islami/My_Theme_Data.dart';
import 'package:islami/Tabs/ahadeth.dart';
import 'package:islami/Tabs/quran.dart';
import 'package:islami/Tabs/radio.dart';
import 'package:islami/Tabs/sebha.dart';
import 'package:islami/Tabs/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Homee";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/background.png",
            width: double.infinity, fit: BoxFit.fill),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title:
                  Text(AppLocalizations.of(context)!.islami, style: Theme.of(context).textTheme.bodyLarge),
            ),
            body: tabs[index],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: index,
                onTap: (value) {
                  index = value;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/quran.png")),
                      label: "Quran",
                      backgroundColor: MyThemeData.primary),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                      label: "Sebha",
                      backgroundColor: MyThemeData.primary),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/radio.png")),
                      label: "Radio",
                      backgroundColor: MyThemeData.primary),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                      label: "Ahadeth",
                      backgroundColor: MyThemeData.primary),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: "settings",
                      backgroundColor: MyThemeData.primary),
                ])),

      ],
    );
  }
  List<Widget>tabs=[QuranTab(),SebhaTab(),RadioTab(),ahadethTab(),SettingsTab()];
}
