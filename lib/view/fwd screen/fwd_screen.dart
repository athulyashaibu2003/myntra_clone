import 'package:flutter/material.dart';
import 'package:myntra_clone/view/catogories/hottrend_catagories.dart';

class FwdScreen extends StatefulWidget {
  const FwdScreen({super.key});

  @override
  State<FwdScreen> createState() => _FwdScreenState();
}

class _FwdScreenState extends State<FwdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          child: Row(
            children: [
              Text(
                "Myntra",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Icon(Icons.keyboard_arrow_down_rounded, color: Colors.pink)
            ],
          ),
        ),
        actions: [
          Icon(Icons.search, size: 30),
          SizedBox(
            width: 8,
          ),
          Image(
            image: AssetImage("assets/images/favourite.png"),
            height: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Image(
            image: AssetImage("assets/images/cart myntra.png"),
            height: 30,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "MEN",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.lens_outlined, color: Colors.white, size: 35),
                  Text(
                    "WOMEN",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: HotTrendsCatagory(),
            ),
            Image.asset("assets/images/FWD.jpeg"),
            Image.asset("assets/images/fwd1.jpeg"),
            Image.asset("assets/images/fwd2.jpeg")
          ],
        ),
      ),
    );
  }
}
