import 'package:flutter/material.dart';
import 'package:myntra_clone/utilis/images/hottrend_images.dart';

class HotTrendsCatagory extends StatelessWidget {
  const HotTrendsCatagory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(hottrend[index]["image4"]),
                  ),
                ),
              ],
            ));
  }
}
