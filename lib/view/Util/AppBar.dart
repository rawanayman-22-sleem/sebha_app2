import 'package:flutter/material.dart';
import '../../constant.dart';

class AppBarC extends StatelessWidget {
  const AppBarC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundcolor,
      elevation: 0,
      centerTitle: true,
      title: Text("السبحه الالكترونيه",
          style: TextStyle(
            fontSize:textFont26,
            fontWeight: FontWeight.w600,
          )),
    );
  }
}