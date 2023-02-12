import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:intl/intl.dart' as intl ;

import '../../../constant.dart';
import '../../../controller/Timeeprayer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text("${intl.DateFormat.yMMMd().format(DateTime.now())}",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: textFont18,
                color: white,
              ),
              textAlign: TextAlign.right,
            ),
            Text("13 صفر,1444ر",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: textFont14,
                color: green,
              ),
              textAlign: TextAlign.right,
            ),
            Card(
              elevation:25,
              color: green,
              shadowColor: Colors.black.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("الزقازيق, الشرقية",
                          style: TextStyle(
                            fontSize: textFont14,
                            fontWeight: FontWeight.w500,
                            color: white,
                          ),),
                        Icon(Icons.location_on_outlined,color: white,),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text("متبقي علي",
                        style: TextStyle(
                          fontSize: textFont14,
                          fontWeight: FontWeight.w500,
                          color: white,
                        ),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("دقيقة",
                              style: TextStyle(
                                fontSize: textFont14,
                                fontWeight: FontWeight.w500,
                                color: white,
                              ),),
                            Text("15:20",
                              style: TextStyle(
                                fontSize: textFont34,
                                fontWeight: FontWeight.w600,
                                color: white,
                              ),),
                          ],
                        ),

                        Text("صلاة الظهر",
                          style: TextStyle(
                            fontSize: textFont34,
                            fontWeight: FontWeight.w600,
                            color: white,
                          ),),

                      ],
                    ),

                  ],
                ),
              ),
            ),
            //card of location and time
            Card(
              elevation:25,
              color: blackbottom,
              shadowColor: Colors.black.withOpacity(0.1),
              child: FutureBuilder(
                future: TimePrayer.getTimePrayer(),
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          decoration:BoxDecoration(
                              color: green,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              )
                          ) ,

                          width: MediaQuery.of(context).size.width/3,
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("مواعيد الصلاة",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w500,
                                  color: blackbottom,
                                ),),
                              SvgPicture.asset("assets/icons/Mosque icon2.svg"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${snapshot.data.fajr}",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                              Text("الفجر",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${snapshot.data.shurooq}",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                              Text("الشروق",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${snapshot.data.dhuhr}",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                              Text("الظهر",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${snapshot.data.asr}",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                              Text("العصر",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${snapshot.data.maghrib}",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                              Text("المغرب",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${snapshot.data.isha}",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                              Text("العشاء",
                                style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  );

                },
              ),
            ),
            //time of pray
            Card(
              elevation:5,
              color:homeshadow,
              shadowColor: Colors.black.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text("دعاء اليوم",
                        style: TextStyle(
                          fontSize: textFont14,
                          fontWeight: FontWeight.w500,
                          color: green,
                        ),),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text("(اللَّهُمَّ إنِّي أعُوذُ بكَ مِنَ الهَمِّ والحَزَنِ، والعَجْزِ والكَسَلِ، والبُخْلِ، والجُبْنِ، وضَلَعِ الدَّيْنِ، وغَلَبَةِ الرِّجالِ)",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: textFont16,
                          fontWeight: FontWeight.w500,
                          color: white,
                        ),),
                    ),

                  ],
                ),
              ),
            ),
            //azkar

          ],

        ),
      ),

    );
  }
}