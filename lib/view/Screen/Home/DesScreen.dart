import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../controller/Azkar.dart';
import '../Splash/Cardzekr.dart';


class DesScreen extends StatefulWidget {
  const DesScreen({Key? key}) : super(key: key);


  @override
  State<DesScreen> createState() => _DesScreenState();
}

class _DesScreenState extends State<DesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backgroundcolor ,
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        elevation: 0,
        centerTitle: true,
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon:Icon( Icons.arrow_back_ios,size: 25,) ),
        title: Text("اذكار الصباح",
          style: TextStyle(
            fontSize: textFont18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder(
        future: AzkarApi.fetchAzkar(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return (snapshot.hasData)
              ? ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: CardZaker(
                    count: snapshot.data[index].repeat,
                    text: "${snapshot.data[index].zekr}"),
              );
            },
          )
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}