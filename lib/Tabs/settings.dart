import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/My_Theme_Data.dart';
import 'package:islami/bottom_sheets/show_Theming_bottom_sheet.dart';
import 'package:islami/bottom_sheets/show_language_bottom_sheet.dart';
import 'package:islami/provider/MyproviderLanguage.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var Pro = Provider.of<MyProvider>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("language"),
            InkWell(
              onTap: (){
                showLanguageBottomSheet(context);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: MyThemeData.primary)
                ),
                child: Text(Pro.language=="en"?"English":"Arabic"),
              ),
            ),
            SizedBox(height:18,),
            Text("Mode"),
            InkWell(
              onTap: (){
                showThemingBottomSheet(context);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: MyThemeData.primary)
                ),
                child: Text(Pro.Mode==ThemeMode.light?"Light":"Dark"),
              ),
            )

          ],
        ),
      ),

    );
  }

  void showLanguageBottomSheet(BuildContext context){
    showBottomSheet(context: context,
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(18),
          topRight: Radius.circular(18),
        )
      ),
      builder: (context) {
      return LanguageBottomSheet();
    },);
  }

  void showThemingBottomSheet(BuildContext context){
    showBottomSheet(context: context,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(18),
            topRight: Radius.circular(18),
          )
      ),
      builder: (context) {
        return ThemingBottomSheet();
      },);
  }
}
