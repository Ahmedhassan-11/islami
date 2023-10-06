import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/HomeScreen.dart';
import 'package:islami/My_Theme_Data.dart';
import 'package:islami/Prefs_helper.dart';
import 'package:islami/provider/MyproviderLanguage.dart';
import 'package:islami/suradetials.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PrefsHelper.prefs=await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider(create: (context) => MyProvider(),child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var Pro = Provider.of<MyProvider>(context);
    return MaterialApp(
      locale: Locale(Pro.language),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails()
      },
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: Pro.Mode
    );
  }
}
