import 'package:flutter/material.dart';
import 'package:islami/My_Theme_Data.dart';
import 'package:islami/provider/MyproviderLanguage.dart';
import 'package:provider/provider.dart';

class ThemingBottomSheet extends StatelessWidget {
  const ThemingBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var Pro= Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              Pro.ChangeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Light",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: MyThemeData.primary)),
                Pro.Mode==ThemeMode.light?
                Icon(Icons.check,color: MyThemeData.primary,size: 30,):SizedBox.shrink()
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Pro.ChangeTheme(ThemeMode.dark);
              Navigator.pop(context);// Close the Bottom sheet
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: MyThemeData.blackColor)),
                Pro.Mode==ThemeMode.dark?
                Icon(Icons.check,color: MyThemeData.primary,size: 30,):SizedBox.shrink()
              ],
            ),
          )
        ],
      ),
    );
  }
}
