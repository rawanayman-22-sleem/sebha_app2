import 'package:flutter/material.dart';
import 'package:sebha_app2/constant.dart';
import 'DesScreen.dart';


class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}
//
class _AzkarScreenState extends State<AzkarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        elevation: 0,
        centerTitle: true,
        title: Text("الاذكار",
            style: TextStyle(
              fontSize:textFont26,
              fontWeight: FontWeight.w600,
            )),
      ),
      backgroundColor: backgroundcolor,
      body:ListView(
        children: [
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DesScreen();
              })
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  Image.asset("$sabah",
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                      bottom: 20,right: 20,
                      child: Center( child:
                      Text("اذكار الصباح",
                        style: TextStyle(color: white,
                            fontSize: textFont18),
                      )))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Image.asset("assets/images/Night.png",
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                    bottom: 20,right: 20,
                    child: Center( child:
                    Text("اذكار المساء",
                      style: TextStyle(color: white,
                          fontSize: textFont18),
                    )))
              ],
            ),
          ),
          Container(child:
          Text("اذكار متنوعه",
            style: TextStyle(
                fontSize: textFont18,
                color: white,
                fontWeight: FontWeight.bold),
          ),
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            alignment:Alignment.centerRight ,) ,
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Image.asset("assets/images/Midnight.png",
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                    bottom: 20,right: 20,
                    child: Center( child:
                    Text("اذكار قيام الليل",
                      style: TextStyle(color: white,
                          fontSize: textFont18),
                    )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Image.asset("assets/images/Pray.png",
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                    bottom: 20,right: 20,
                    child: Center( child:
                    Text("اذكار الصلاه",
                      style: TextStyle(color: white,
                          fontSize: textFont18),
                    )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Image.asset("assets/images/Bedtime.png",
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                    bottom: 20,right: 20,
                    child: Center( child:
                    Text("اذكار النوم",
                      style: TextStyle(color: white,
                          fontSize: textFont18),
                    )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Image.asset("assets/images/Random.png",
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                    bottom: 20,right: 20,
                    child: Center( child:
                    Text("ادعيه متنوعه",
                      style: TextStyle(color: white,
                          fontSize: textFont18),
                    )))
              ],
            ),
          )
        ],
      ) ,

    );
  }
}