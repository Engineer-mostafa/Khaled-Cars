//packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khaledcars/widgets/custom_input_field.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mdq = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
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
                Positioned(
                  bottom: mdq.height / 2,
                  left: mdq.width / 6,
                  child: Center(
                    child: Container(
                      height: mdq.height / 1.5,
                      width: mdq.width / 1.5,
                      child: Image(
                        image: AssetImage("assets/images/logo.png"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: mdq.height / 3.5,
                  left: mdq.width / 11,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(mdq.width / 20),
                      color: Colors.white,
                    ),
                    height: mdq.height / 1.9,
                    width: mdq.width / 1.2,
                    child: Column(
                      children: [
                        SizedBox(height: mdq.height / 40),
                        Text(
                          "تسجيل الدخول",
                          style: TextStyle(fontSize: mdq.width / 10),
                        ),
                        SizedBox(height: mdq.height / 40),
                        Container(
                          height: mdq.height / 14,
                          margin: EdgeInsets.only(
                              left: mdq.width / 30, right: mdq.width / 30),
                          child: CustomInputField(
                            hintText: "رقم الجوال",
                            hintStyleColor: Colors.black54,
                            mdq: mdq.width / 30,
                          ),
                        ),
                        SizedBox(height: mdq.height / 30),
                        Container(
                          height: mdq.height / 14,
                          margin: EdgeInsets.only(
                              left: mdq.width / 30, right: mdq.width / 30),
                          child: CustomInputField(
                            hintText: "كلمة المرور",
                            hintStyleColor: Colors.black54,
                            mdq: mdq.width / 30,
                          ),
                        ),
                        Text(
                          "نسيت كلمة المرور؟",
                          style: TextStyle(
                              fontSize: mdq.width / 21,
                              color: Color.fromRGBO(255, 16, 20, 1)),
                        ),
                        SizedBox(height: mdq.height / 30),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(mdq.width / 30),
                                color: Color.fromRGBO(255, 16, 20, 1)),
                            child: Center(
                              child: Text(
                                "متابعه",
                                style: TextStyle(
                                    fontSize: mdq.width / 15,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
