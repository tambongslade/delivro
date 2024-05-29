import 'package:delivero/Constant/colors.dart';
import 'package:delivero/Signup.dart';
import 'package:delivero/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Constant/Styles.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Hero(
                    tag: 1,
                    child: const Image(
                        image: AssetImage("assets/images/Group 206.png"))),
                const SizedBox(height: 7),
                Text('Register Now',
                    style: HeadingStyle.copyWith(
                      fontSize: 40,
                    )),
                const SizedBox(height: 8),
                Text('Create your account', style: FredokaStyle),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Email Address', style: FredokaStyle)),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: formColor,
                      filled: true,
                      hintText: 'fastfood@gmail.com',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFDEBC7)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFDEBC7)),
                      )),
                ),
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Confirm Email', style: FredokaStyle)),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: formColor,
                      filled: true,
                      hintText: 'fastfood@gmail.com',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFDEBC7)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFDEBC7)),
                      )),
                ),
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Password', style: FredokaStyle)),
                TextFormField(
                  obscuringCharacter: "*",
                  showCursor: true,
                  // focusNode: _focusNode2,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: FredokaStyle,
                    fillColor: formColor,
                    filled: true,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility_off),
                      onPressed: () {},
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: formColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: formColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Checkbox(
                        value: false,
                        onChanged: (bool? value) {
                          setState(() {
                            value = true;
                          });
                        }),
                    const Text('Remember me', style: TextStyle(fontSize: 14)),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          child: Text(
                            "Sign Up",
                            style: FredokaStyle.copyWith(
                                color: Colors.white, fontSize: 20),
                          ),
                        ))),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Already have an Account ?  ",
                        style: FredokaStyle.copyWith(fontSize: 14),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        }, // Sign up screen action
                        child: Text(
                          'Login',
                          style: HeadingStyle.copyWith(
                            color: Red,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
