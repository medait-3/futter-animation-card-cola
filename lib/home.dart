import 'package:flutter/material.dart';
import 'animationCard.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:30,top:30,right:30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  iconSize: 40,
                  color: Colors.grey,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  iconSize: 40,
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Seasonal", style: TextStyle(fontSize: 22)),
                Text(
                  "Smoothie",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: MyScrollingWidget(),
          ),
        ],
      ),
    );
  }
}
