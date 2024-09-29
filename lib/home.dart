import 'package:delivero/Constant/Styles.dart';
import 'package:delivero/Constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List food_list = ["Pizza", "Chicken", "Beef", "Drinks", "Vegetables"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: HeadingStyle.copyWith(fontSize: 20),
              children: const [
                TextSpan(text: 'De', style: TextStyle(color: Colors.black)),
                TextSpan(text: 'live', style: TextStyle(color: Colors.red)),
                TextSpan(text: 'ro', style: TextStyle(color: Colors.black)),
              ]),
        ),
        actions: [
          Icon(Icons.shopping_bag_outlined, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.notifications_none_outlined, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.black),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Top Categories vivi",
                  style: HeadingStyle.copyWith(fontSize: 25),
                ),
              ),
              SizedBox(height: 18),
              SizedBox(
                height: 35,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: food_list.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Red,
                        ),
                        child: Center(
                          child: Text(
                            food_list[index],
                            style: FredokaStyle.copyWith(
                                color: Colors.white, fontSize: 12),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      height: 100,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search for something tastfull...",
                          hintStyle: FredokaStyle,
                          fillColor: white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: formColor, width: 3),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: formColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: formColor, width: 3),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.black,
                      width: 40,
                      height: 50,
                      child: Align(
                          alignment: Alignment.center, child: Icon(Icons.menu)),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Popular Food",
                    style: HeadingStyle.copyWith(fontSize: 30),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: FredokaStyle.copyWith(color: Red),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 240,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: formColor, // Color of the border
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.only(left: 20),
                          height: 250,
                          width: 240,
                          child: Column(
                            children: [
                              Container(
                                color: white,
                                height: 110,
                                child: SizedBox(
                                  width: 240,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    child: Image.asset(
                                      "assets/images/2150887812.png",
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffFFD800),
                                    ),
                                    Text("4.3")
                                  ]),
                                  Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.flame,
                                        color: Red,
                                      ),
                                      Text("20 - 25 mins")
                                    ],
                                  ),
                                  Icon(
                                    CupertinoIcons.heart,
                                    color: Red,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Beef burger",
                                    style: FredokaStyle.copyWith(fontSize: 20),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "2.500 FCFA",
                                        style: FredokaStyle.copyWith(
                                            fontSize: 20, color: Red),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    decoration: BoxDecoration(
                                        color: Red,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(24))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Icon(
                                        CupertinoIcons.cart,
                                        color: white,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
