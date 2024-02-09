import 'package:flutter/material.dart';
import 'package:myntra_clone/view/catogories/new_catagories.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
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
            Image.asset("assets/images/new puma.jpeg"),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Explore a world of new",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              height: 140,
              width: double.infinity,
              child: NewCatagories(),
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/new trendscape.jpeg"),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
