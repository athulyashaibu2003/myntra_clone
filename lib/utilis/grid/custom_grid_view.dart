import 'package:flutter/material.dart';

class GridViewscreen extends StatelessWidget {
  const GridViewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/3746238/pexels-photo-3746238.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 70,
            width: 300,
            color: Colors.white,
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forever new",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text("one shoulder midi dress"),
                Row(
                  children: [
                    Icon(
                      Icons.attach_money_outlined,
                      size: 15,
                    ),
                    Text(
                      "1000/-",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
