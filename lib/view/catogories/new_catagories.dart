import 'package:flutter/material.dart';

import 'package:myntra_clone/utilis/images/new_images.dart';

class NewCatagories extends StatelessWidget {
  const NewCatagories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imagesnew[index]["image5"]),
                      fit: BoxFit.cover),
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 30,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    imagesnew[index]["text5"],
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
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
