import 'package:delivero/Constant/Styles.dart';
import 'package:delivero/Constant/colors.dart';
import 'package:delivero/intropage/Intro1.dart';
import 'package:delivero/intropage/intro2.dart';
import 'package:delivero/intropage/intro3.dart';
import 'package:delivero/signup.dart';
// import 'package:delivero/signup.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool onLastPage = false;
  bool onSecondPage = false;
  int currentpage = 0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height / 7 - 200,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.9,
                  width: MediaQuery.of(context).size.width,
                  child: PageView(
                    onPageChanged: (value) => {
                      setState(() {
                        currentpage = value;
                        onLastPage = (value == 2);
                        onSecondPage = (value == 1);
                      })
                    },
                    controller: controller,
                    children: [Intro1(), Intro2(), Intro3()],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.9,
                  width: MediaQuery.of(context).size.width,
                  // color: black,
                  child: currentpage == 0
                      ? Column(
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 80, vertical: 15)),
                              onPressed: () {
                                controller.nextPage(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.easeIn);
                              },
                              child: Text("Next",
                                  style: FredokaStyle.copyWith(
                                      fontSize: 15, color: white)),
                            )
                          ],
                        )
                      : currentpage == 1
                          ? Column(
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
                                  "Quick Delivery",
                                  style: HeadingStyle.copyWith(fontSize: 35),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40),
                                  child: Text(
                                    "Get your favorite dishes delivered fast with our quick delivery food service",
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
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 80, vertical: 15)),
                                  onPressed: () {
                                    controller.nextPage(
                                        duration: Duration(seconds: 1),
                                        curve: Curves.easeIn);
                                  },
                                  child: Text("Next",
                                      style: FredokaStyle.copyWith(
                                          fontSize: 15, color: white)),
                                )
                              ],
                            )
                          : Column(
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
                                const SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  "Easy Payment",
                                  style: HeadingStyle.copyWith(fontSize: 35),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Text(
                                    "Conveniently pay for your food delivery with just a click of a button",
                                    style: FredokaStyle,
                                  ),
                                ),
                                const SizedBox(
                                  height: 70,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Red,
                                      shadowColor: Red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 80, vertical: 15)),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Signup()));
                                  },
                                  child: Text("Get Started",
                                      style: FredokaStyle.copyWith(
                                          fontSize: 15, color: white)),
                                )
                              ],
                            ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
