import 'package:flutter/material.dart';
import '../../../constant.dart';

class CardZaker extends StatefulWidget {
int count;
String text;
bool cardVisible=true;

CardZaker({
  required this.count,
  required this.text,
});

@override
State<CardZaker> createState() => _CardZakerState();
}

class _CardZakerState extends State<CardZaker> {
  @override
  Widget build(BuildContext context) {

    return Visibility(
      visible:widget.cardVisible,
      child: InkWell(
        onTap: (){
          if(widget.count>0) {
            setState(() {
              widget.count--;
            });
          }else if(widget.count==0)
          {
            setState(() {
              widget.cardVisible=false;
            });
          }
        },
        child: Card(
          elevation:5,
          color:blackbottom,
          shadowColor: Colors.black.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Text("${widget.text} ",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: textFont16,
                      fontWeight: FontWeight.w500,
                      color: white,
                    ),),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(5.0),
                  child :Container(
                    decoration: BoxDecoration(
                      color: green,
                      borderRadius: BorderRadius.circular(20),
                    ) ,
                    padding: const EdgeInsets.all(10.0),
                    child: Text("${widget.count}",
                      style: TextStyle(
                        fontSize: textFont14,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}