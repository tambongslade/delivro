import 'package:delivero/Constant/colors.dart';
import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200)),
              color: Red,
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(
                  "assets/images/Payement.png",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
