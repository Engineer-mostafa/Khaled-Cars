//packages
import 'package:flutter/material.dart';

//screens

class MySplashScreen extends StatelessWidget {
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
