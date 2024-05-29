import 'package:delivero/Constant/Styles.dart';
import 'package:delivero/Constant/colors.dart';
import 'package:delivero/Login.dart';
import 'package:delivero/home.dart';

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  FocusNode _focusNode = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  Color _backgroundColor = formColor;
  Color _backgroundColor2 = formColor;
  void initState() {
    super.initState();
    _focusNode.addListener(_handleFocusChange);
    _focusNode2.addListener(_handleFocusChange2);
  }

  @override
  void dispose() {
    _focusNode2.removeListener(_handleFocusChange2);
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    _focusNode2.dispose();

    super.dispose();
  }

  void _handleFocusChange() {
    if (_focusNode.hasFocus) {
      setState(() {
        _backgroundColor = Colors.white; // Change to your preferred focus color
      });
    } else {
      setState(() {
        _backgroundColor = formColor; // Original color
      });
    }
  }

  void _handleFocusChange2() {
    if (_focusNode2.hasFocus) {
      setState(() {
        _backgroundColor2 =
            Colors.white; // Change to your preferred focus color
      });
    } else {
      setState(() {
        _backgroundColor2 = formColor; // Original color
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Column(
                    children: [
                      Hero(
                        tag: 1,
                        child: Image.asset("assets/images/Group 206.png"),
                      ), // Replace with your logo
                      SizedBox(height: 7),
                      Text('Welcome Back',
                          style: HeadingStyle.copyWith(
                            fontSize: 40,
                          )),
                      SizedBox(height: 8),
                      Text('Log in to your account', style: FredokaStyle),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Text('Email Address', style: FredokaStyle),
                TextFormField(
                  focusNode: _focusNode,
                  decoration: InputDecoration(
                      fillColor: _backgroundColor,
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
                Text('Password', style: FredokaStyle),
                TextFormField(
                  obscuringCharacter: "*",
                  showCursor: true,
                  focusNode: _focusNode2,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: FredokaStyle,
                    fillColor: _backgroundColor2,
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
                    Checkbox(value: false, onChanged: (bool? value) {}),
                    Text('Remember me', style: TextStyle(fontSize: 14)),
                    Spacer(),
                    GestureDetector(
                      onTap: () {}, // Forgot password screen action
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.red, fontSize: 14),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Center(
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text('Log In',
                        style: FredokaStyle.copyWith(
                            color: Colors.white, fontSize: 18)),
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        }, // Sign up screen action
                        child: Text('Sign up',
                            style: FredokaStyle.copyWith(
                                color: Red, fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
