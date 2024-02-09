import 'package:flutter/material.dart';
import 'package:myntra_clone/utilis/color%20constant/color_constant.dart';
import 'package:myntra_clone/view/account%20screen/account_screen.dart';
import 'package:myntra_clone/view/brands%20screen/brands_screen.dart';
import 'package:myntra_clone/view/fwd%20screen/fwd_screen.dart';
import 'package:myntra_clone/view/home%20screen/home_screen.dart';
import 'package:myntra_clone/view/new%20screen/new_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int indexnum = 0;
  List screens = [
    HomeScreen(),
    FwdScreen(),
    NewScreen(),
    BrandScreen(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[indexnum],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            indexnum = value;
            print(value);

            setState(() {});
          },
          currentIndex: indexnum,
          unselectedItemColor: ColorConstant.MatBlack,
          selectedItemColor: Colors.pinkAccent,
          backgroundColor: ColorConstant.textcolor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined),
                label: "Hot Trends",
                backgroundColor: ColorConstant.MatBlack),
            BottomNavigationBarItem(
                icon: Icon(Icons.adjust_sharp),
                label: "New",
                backgroundColor: ColorConstant.MatBlack),
            BottomNavigationBarItem(
                icon: Icon(Icons.brightness_auto_rounded),
                label: "Brands",
                backgroundColor: ColorConstant.MatBlack),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: "More",
                backgroundColor: ColorConstant.MatBlack),
          ]),
    );
  }
}
