import 'package:flutter/material.dart';

import 'package:myntra_clone/utilis/images/images3.dart';

class CatagoriesNext2 extends StatelessWidget {
  const CatagoriesNext2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(images3[index]["image3"]),
                    fit: BoxFit.contain),
                color: Colors.white,
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   child: Container(
            //     height: 20,
            //     width: 70,
            //     decoration: BoxDecoration(
            //         color: Colors.yellow[100],
            //         borderRadius: BorderRadius.circular(5)),
            //   ),
            // )
            Positioned(
              left: 55,
              bottom: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    images3[index]["text3"],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("HANDBAGS"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
