import 'package:flutter/material.dart';

import 'package:myntra_clone/utilis/images/images2.dart';

class CatagoriesNext extends StatelessWidget {
  const CatagoriesNext({super.key});

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
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(images2[index]["image2"]),
                      fit: BoxFit.cover),
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 20,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    images2[index]["text2"],
                    style: TextStyle(fontSize: 10, color: Colors.black26),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
