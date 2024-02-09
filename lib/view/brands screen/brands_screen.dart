import 'package:flutter/material.dart';
import 'package:myntra_clone/utilis/grid/grid_view.dart';

class BrandScreen extends StatefulWidget {
  const BrandScreen({super.key});

  @override
  State<BrandScreen> createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {
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
      body: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: 250,
            maxCrossAxisExtent: 300,
            // crossAxisSpacing: 3,
            // mainAxisSpacing: 3,
          ),
          itemBuilder: (context, index) => GridViewscreen()),
    );
  }
}
