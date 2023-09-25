import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int index = 0;
  double Angle =0;
  List<String> Azkar = ["سبحان الله", "الحمد لله", "لا اله الا الله "];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
          children: [
            Column(
              children: [
                Center(
                  child: Stack(children: [
                    Positioned(child: Image.asset("assets/images/headsebha.png"))
                  ],),
                ),
                InkWell(
                    onTap: () { for (int i = 0; i < Azkar.length; i++) {
                      if (counter == 30) {
                        counter = 0;
                        i=index;
                        index++;
                      }
                      if(index==3){
                        index=0;
                      }
                    }
                    setState(() {
                      counter++;
                      Angle++;
                    });

                    },
                    child: Transform.rotate(
                        angle:Angle,
                        child: Image.asset("assets/images/bodysebha.png"))),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "عدد التسبيحات",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 21,
                ),
                ElevatedButton(
                  child: Text("$counter", style:GoogleFonts.kufam(
                    fontSize: 25,
                    fontWeight:FontWeight.bold ,
                  )),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(69, 81),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      backgroundColor: Color.fromRGBO(183, 147,95, 100)),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          for (int i = 0; i < Azkar.length; i++) {
                            if (counter == 30) {
                              counter = 0;
                              i=index;
                              index++;
                            }
                            if(index==3){
                              index=0;
                            }
                          }
                          setState(() {
                            counter++;
                          });
                        },
                        child: Text("${Azkar[index]}",
                            style:GoogleFonts.reemKufi(
                              fontSize: 25,
                              fontWeight:FontWeight.bold ,

                            )
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(137, 51),
                            backgroundColor: Color.fromRGBO(183, 147, 95, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100))))
                  ],
                )
              ],
            ),
          ],
        ),
    );
  }
}
