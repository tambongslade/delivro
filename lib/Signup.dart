import 'package:delivero/Constant/Styles.dart';
import 'package:delivero/Constant/colors.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  FocusNode _focusNode = FocusNode();
  Color _backgroundColor = FormColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(image: AssetImage("assets/images/Group 206.png")),
            Center(
              child: Text(
                "Welcome Back",
                style: HeadingStyle.copyWith(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "Login to continue",
                style: FredokaStyle.copyWith(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Address",
                    style: FredokaStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: _backgroundColor,
                        filled: true,
                        focusedBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Textfieldborder),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        hintText: "Enter your email",
                        hintStyle: FredokaStyle.copyWith(fontSize: 18)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password",
                    style: FredokaStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: true,
                    focusNode: _focusNode,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: () {},
                        ),
                        fillColor: _backgroundColor,
                        filled: true,
                        focusedBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Textfieldborder),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        hintText: "Enter your email",
                        hintStyle: FredokaStyle.copyWith(fontSize: 18)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
