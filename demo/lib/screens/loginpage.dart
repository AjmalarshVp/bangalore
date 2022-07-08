import 'package:demo/screens/bottomnavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:ui';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usercontroller = TextEditingController();
  final TextEditingController pwdcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              Expanded(
               
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * .1),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white.withOpacity(.7),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      wordSpacing: 4,
                    ),
                  ),
                ),
              ),
              Expanded(
            
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    component1(Icons.account_circle_outlined, 'User name...',
                        false, false,usercontroller , (value) => null),
                    component1(Icons.account_circle_outlined, 'Password...',
                        true, false, pwdcontroller, (value) => null),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        component2(
                          'LOGIN',
                          2.58,
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavigation()),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    component2(
                      'Create a new Account',
                      2,
                      () {
                        HapticFeedback.lightImpact();
                        Fluttertoast.showToast(
                            msg: 'Create a new account button pressed');
                      },
                    ),
                    SizedBox(height: size.height * .05),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget component1(
      IconData icon,
      String hintText,
      bool isPassword,
      bool isEmail,
      TextEditingController controller,
      FormFieldValidator validator) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: size.width / 7,
        width: size.width / 1.2,
        alignment: Alignment.center,
        padding: EdgeInsets.only(right: size.width / 30),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextFormField(
          controller: controller,
          validator: validator,
          style: TextStyle(color: Colors.white.withOpacity(.8)),
          cursorColor: Colors.white,
          obscureText: isPassword,
          keyboardType:
              isEmail ? TextInputType.emailAddress : TextInputType.text,
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.white.withOpacity(.7),
            ),
            border: InputBorder.none,
            hintMaxLines: 1,
            hintText: hintText,
            hintStyle:
                TextStyle(fontSize: 14, color: Colors.white.withOpacity(.5)),
          ),
        ),
      ),
      // ),
    );
  }

  Widget component2(String string, double width, VoidCallback voidCallback) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: voidCallback,
          child: Container(
            height: size.width / 8,
            width: size.width / width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              string,
              style: TextStyle(color: Colors.white.withOpacity(.8)),
            ),
          ),
        ),
      ),
    );
  }
}
