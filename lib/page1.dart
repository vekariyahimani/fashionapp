import 'dart:math';

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _HomeState();
}

class _HomeState extends State<Page1> {
  List image=["assets/image/p1.jpg",
    "assets/image/p2.jpg",
    "assets/image/p3.jpg",
    "assets/image/p5.jpg",
    "assets/image/p6.jpg",
    "assets/image/p7.jpg",
    "assets/image/p8.jpg",
    "assets/image/p9.jpg",
    "assets/image/p10.jpg",
    "assets/image/p11.jpg",
    "assets/image/p12.jpg",
    "assets/image/p13.jpg",
  ];
  List name=["SHIRT",
    "KURIT",
    "BLAZER",
    "TSHIRTS",
    "TOP",
    "JEANS",
    "WATCH",
    "HODIE",
    "SHOES",
    "COMBO",
    "JACKET",
  "TOP"];

  List price=[
    "200",
    "500",
    "100",
    "900",
    "100",
    "500",
    "700",
    "900",
    "300",
    "1100",
    "800",
    "200"
  ];
  List star=["5.0",
    "4.1",
    "4.9",
    "4.2",
    "4.7",
    "4.5",
    "5.0",
    "3.1",
    "4.0",
    "5.7",
    "5.0",
    "3.0"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          title: Text("SHOPPING GALLERY UI"),
          centerTitle: true,
          backgroundColor: Colors.blue.shade600,
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: ([
                    Colors.lightBlueAccent,
                    Colors.lightBlue,
                    Colors.blue,
                    Colors.blueAccent.shade700,
                    Colors.blue.shade700,
                    Colors.purpleAccent.shade700,
                    Colors.purple.shade600,


                  ]),
             transform: GradientRotation(pi/2))
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              itemCount: image.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Box(image[index], name[index], price[index], star[index]);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget Box(String image, String name, String price, String star) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          alignment: Alignment.center,
          child: Image.asset(
            "$image",
            height: 155,
            width: 155,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 28,
            width: 62,
            decoration: BoxDecoration(
              color: Colors.green.shade700,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(10),
              ),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$star ",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            alignment: Alignment.center,
            height: 40,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$name",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "\$ $price",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}