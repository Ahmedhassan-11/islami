import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Tabs/SuraModel.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      LoudFiles(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title:
              Text(args.suraName, style: Theme.of(context).textTheme.bodyLarge),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(verses[index]);
          },
          itemCount: verses.length,
        ),
      ),
    );
  }

  LoudFiles(int index) async {
    String sura = await rootBundle.loadString("assets/Files/${index+1}.txt");
    List<String> lines = sura.split("\n");
    print(lines);
    lines = verses;
    setState(() {

    });
  }
}
