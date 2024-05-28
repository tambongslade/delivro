import 'package:delivero/Constant/Styles.dart';
import 'package:delivero/Constant/colors.dart';
import 'package:delivero/intropage/Intro1.dart';
import 'package:delivero/intropage/intro2.dart';
import 'package:delivero/intropage/intro3.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(children: [
          Positioned(
            top: -100,
            child: Container(
              child: PageView(
                controller: controller,
                children: [Intro1(), Intro2(), Intro3()],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              // color: black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    onDotClicked: (index) {
                      controller.animateToPage(
                        index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    },
                    effect: ExpandingDotsEffect(
                      spacing: 5.0,
                      radius: 4.0,
                      dotWidth: 7,
                      dotHeight: 5.0,
                      dotColor: grey2,
                      activeDotColor: Red,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Fresh Food",
                    style: HeadingStyle.copyWith(fontSize: 35),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Enjoy the taste of fresh, high-quality and delicious meals everyday",
                      style: FredokaStyle,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Red,
                        shadowColor: Red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                    onPressed: () {
                      controller.nextPage(
                          duration: Duration(seconds: 1), curve: Curves.easeIn);
                    },
                    child: Text("Next",
                        style:
                            FredokaStyle.copyWith(fontSize: 15, color: white)),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
