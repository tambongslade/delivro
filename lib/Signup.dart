import 'package:delivero/Constant/Styles.dart';
import 'package:delivero/Constant/colors.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                      Image.asset(
                          "assets/images/Group 206.png"), // Replace with your logo
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
                Text('Email Address',
                    style: TextStyle(fontSize: 16, color: Colors.black54)),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'fastfood@gmail.com',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text('Password',
                    style: TextStyle(fontSize: 16, color: Colors.black54)),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '**********',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility_off),
                      onPressed: () {},
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 2),
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
                    onPressed: () {},
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
                        onTap: () {}, // Sign up screen action
                        child: Text('Sign In',
                            style: TextStyle(color: Colors.red)),
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
