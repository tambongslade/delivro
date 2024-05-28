import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(200),
              bottomRight: Radius.circular(200)),
          image: DecorationImage(
              image: AssetImage("assets/images/Food Pattern - Blur.png"),
              fit: BoxFit.fill)),
      child: Image(image: AssetImage("assets/images/Intersection 25.png")),
    );
  }
}
