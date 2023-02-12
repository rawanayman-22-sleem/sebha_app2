import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sebha_app2/view/Screen/Home/AzkarScreen.dart';
import '../../../constant.dart';
import 'HomeScreen.dart';
import 'SebhaScreen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selsctedIndex=0;
  List pages=[
    HomeScreen(),
    AzkarScreen(),
    SabhaScreen(),
  ];
  void _onItemTapped(int index)
  {
    setState(() {
      _selsctedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[_selsctedIndex] ,
      bottomNavigationBar:BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(label: " ",
              icon:SvgPicture.asset("assets/icons/Rectangle 74.svg"),
              activeIcon:SvgPicture.asset("assets/icons/Rectangle 74.svg") ),
          BottomNavigationBarItem(label: " " ,
              icon:SvgPicture.asset("assets/icons/Vector (1).svg"),
              activeIcon:SvgPicture.asset("assets/icons/Vector (1).svg") ),
          BottomNavigationBarItem(label: " " ,
              icon:SvgPicture.asset("assets/icons/Vector.svg"),
              activeIcon:SvgPicture.asset("assets/icons/Vector.svg") ),
        ],
        currentIndex:_selsctedIndex ,
        selectedItemColor: Colors.lightGreen,
        onTap:_onItemTapped ,
        elevation: 1,
        backgroundColor:backgroundcolor ,
        iconSize: 33,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ) ,
    );
  }
}