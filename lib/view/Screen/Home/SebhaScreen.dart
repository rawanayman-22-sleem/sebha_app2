import 'package:flutter/material.dart';
import '../../../constant.dart';

class SabhaScreen extends StatefulWidget {
  const SabhaScreen({Key? key}) : super(key: key);

  @override
  State<SabhaScreen> createState() => _SabhaScreenState();
}

class _SabhaScreenState extends State<SabhaScreen> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar:AppBar(
        backgroundColor: backgroundcolor,
        elevation: 0,
        centerTitle: true,
        title: Text("السبحه الالكترونيه",
            style: TextStyle(
              fontSize:textFont26,
              fontWeight: FontWeight.w600,
            )),
      )  ,
      body: Center(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(onPressed: (){
                  setState(() {

                    count++;
                  });
                },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: greenbottom,
                        shadowColor: shadow,
                        shape: CircleBorder(),
                        elevation: 20,
                        padding: EdgeInsets.all(10)),
                    child: Center(
                      child: Column(
                        children: [
                          Text("$count",
                            style: TextStyle(
                                fontSize: textFont53,
                                color: white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("سبح",
                            style: TextStyle(
                              fontSize: textFont16,
                              color: backgroundcolor,
                            ),
                          )
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height:30,
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  count=0;
                });
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor:blackbottom,
                      shape: CircleBorder(),
                      shadowColor: shadow,
                      elevation: 20,
                      padding: EdgeInsets.all(5)),
                  child: Center(
                      child: Icon(Icons.replay,color: greenbottom,size: 24)
                  )),

            ],
          )),

    );
  }
}