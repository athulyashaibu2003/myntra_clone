// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myntra_clone/utilis/color%20constant/color_constant.dart';
import 'package:myntra_clone/view/catogories/catagories1.dart';
import 'package:myntra_clone/view/catogories/catogaries2.dart';
import 'package:myntra_clone/view/catogories/catogaries3.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        backgroundColor: ColorConstant.textcolor,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          child: Row(children: [
            Text(
              "Myntra",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Icon(Icons.keyboard_arrow_down_rounded, color: Colors.pinkAccent),
            Image(
                image: AssetImage("assets/images/gold crown.webp"),
                fit: BoxFit.cover),
            Column(
              children: [
                Text(
                  "BECOME",
                  style: TextStyle(color: ColorConstant.MatBlack),
                ),
                Text(
                  "INSIDER",
                  style: TextStyle(color: ColorConstant.gold),
                ),
              ],
            ),
          ]),
        ),
        actions: const [
          Image(
            image: AssetImage("assets/images/bell myntra.png"),
            height: 37,
          ),
          SizedBox(
            width: 5,
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
              height: 10,
            ),
            Center(
              child: Container(
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(60)),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "search for brands and products",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.keyboard_voice_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/fashion.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black)),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/beauty.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black)),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/home.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black)),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.amber,
                    backgroundImage: AssetImage(
                        "assets/images/WhatsApp Image 2024-02-08 at 12.39.21 PM.jpeg"))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: catagories(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: CatagoriesNext(),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.amber[100],
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EXTRA 15% OFF",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        "On Your 1st Home Furnishings Order",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Applicable on 3 Lakh+ Products",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Use Code",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "NEW4UHOME",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/1721558/pexels-photo-1721558.jpeg?auto=compress&cs=tinysrgb&w=600"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 5,
                  bottom: 50,
                  child: Column(
                    children: [
                      Text(
                        "50-80% Off",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "Match made in Myntra",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 30,
                        width: 130,
                        color: Colors.white,
                        child: Center(
                            child: Text(
                          "SHOP NOW >",
                          style: TextStyle(color: Colors.black),
                        )),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Continue Browsing These Brands",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: CatagoriesNext2(),
            ),
          ],
        ),
      ),
    );
  }
}
