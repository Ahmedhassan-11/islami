import 'package:flutter/material.dart';
import 'package:islami/My_Theme_Data.dart';
import 'package:islami/provider/MyproviderLanguage.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

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
              Pro.ChangeLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("English",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: MyThemeData.primary)),
                Pro.language=="en"?
                Icon(Icons.check,color: MyThemeData.primary,size: 30,):SizedBox.shrink()
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Pro.ChangeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Arabic",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: MyThemeData.blackColor)),
                Pro.language=="ar"?
                Icon(Icons.check,color: MyThemeData.primary,size: 30,):SizedBox.shrink()
              ],
            ),
          )
        ],
      ),
    );
  }
}
