import 'package:delivero/Constant/colors.dart';
import 'package:delivero/Signup.dart';
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
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Image(
                      width: 700,
                      image: AssetImage("assets/images/Intersection 17.png")),
                ),
                SizedBox(
                  height: 20,
                ),
                SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotColor: grey2,
                        activeDotColor: Red,
                        dotHeight: 10,
                        dotWidth: 10),
                    onDotClicked: (index) {
                      print('object $index');
                      controller.animateToPage(
                        index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }),
                SizedBox(
                  height: 40,
                ),
                Container(
                    height: 300,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Fresh FOOD",
                          style: TextStyle(fontSize: 30, fontFamily: "fredoka"),
                        ),
                        Center(
                          child: Text(
                            "Enjoy the taste of fresh, high-quality and delicious meals everyday",
                            style:
                                TextStyle(fontFamily: "fredoka", fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Red,
                            ),
                            onPressed: () {
                              controller.nextPage(
                                  duration: Duration(seconds: 1),
                                  curve: Curves.easeInOut);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 18, horizontal: 40),
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: white,
                                    fontFamily: "Outfit"),
                              ),
                            ))
                      ],
                    )),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(200),
                          bottomRight: Radius.circular(200)),
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/Food Pattern - Blur.png"),
                          fit: BoxFit.fill)),
                  child: Image(
                      width: 700,
                      image: AssetImage("assets/images/Intersection 25.png")),
                ),
                SizedBox(
                  height: 20,
                ),
                SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotColor: grey2,
                        activeDotColor: Red,
                        dotHeight: 10,
                        dotWidth: 10),
                    onDotClicked: (index) {
                      print('object $index');
                      controller.animateToPage(
                        index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }),
                SizedBox(
                  height: 40,
                ),
                Container(
                    height: 300,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Quick Delivery",
                          style: TextStyle(fontSize: 30, fontFamily: "fredoka"),
                        ),
                        Center(
                          child: Text(
                            "Get your favorite dishes delivered fast with our quick delivery food service",
                            style:
                                TextStyle(fontFamily: "fredoka", fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Red,
                            ),
                            onPressed: () {
                              controller.nextPage(
                                  duration: Duration(seconds: 1),
                                  curve: Curves.easeInOut);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 18, horizontal: 40),
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: white,
                                    fontFamily: "Outfit"),
                              ),
                            ))
                      ],
                    )),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200)),
                  ),
                  child: Image(
                      width: 700,
                      image: AssetImage("assets/images/Group 107.png")),
                ),
                SizedBox(
                  height: 20,
                ),
                SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotColor: grey2,
                        activeDotColor: Red,
                        dotHeight: 10,
                        dotWidth: 10),
                    onDotClicked: (index) {
                      print('object $index');
                      controller.animateToPage(
                        index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }),
                SizedBox(
                  height: 40,
                ),
                Container(
                    height: 300,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Easy Payment",
                          style: TextStyle(fontSize: 30, fontFamily: "fredoka"),
                        ),
                        Center(
                          child: Text(
                            "Conveniently pay for your food delivery with just a click of a button",
                            style:
                                TextStyle(fontFamily: "fredoka", fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Red,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 18, horizontal: 30),
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: white,
                                    fontFamily: "Outfit"),
                              ),
                            ))
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
