//packages
import 'package:flutter/material.dart';
import 'sginIn_screen.dart';
import 'dart:async';

//screens

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>SignInScreen()));
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final mdq = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: mdq.width,
              height: mdq.height,
              child: Image(
                image: AssetImage("assets/images/bckground.png"),
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Container(
                height: mdq.height,
                width: mdq.width,
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
