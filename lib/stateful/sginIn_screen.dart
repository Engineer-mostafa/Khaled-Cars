//packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';



//widgets
import '../widgets/custom_input_field.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var countryCode;
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
                      boxShadow: [ BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),],
                      borderRadius: BorderRadius.circular(mdq.width / 20),
                      color: Colors.white,
                    ),
                    height: mdq.height / 1.7,
                    width: mdq.width / 1.2,
                    child: Column(
                      children: [
                        SizedBox(height: mdq.height / 40),
                        Text(
                          "تسجيل الدخول",
                          style: TextStyle(fontSize: mdq.width / 11, fontFamily: "cocon" , fontWeight: FontWeight.bold,color: Colors.black54),
                        ),
                        SizedBox(height: mdq.height / 15),

                        Container(
                          margin: EdgeInsets.only(left: mdq.width/30 , right: mdq.width/30),
                          height: mdq.height/16,
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0 , right: 15.0),
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: TextFormField(

                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(20.0, -mdq.height/22, 0.0, -0),

                                  hintText: "رقم الجوال",
                                  hintTextDirection: TextDirection.rtl,
                                  hintStyle: TextStyle(fontSize: 25 , color: Colors.black26 ),
                                    prefixIcon: CountryCodePicker(


                                        padding: EdgeInsets.zero,
                                          initialSelection: 'SD',
                                          searchDecoration: InputDecoration(
                                              focusColor: Colors.black,
                                              focusedBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xff068587),
                                                  )),
                                              border: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: Color(0xff068587)))),
                                          onChanged: (code) {
                                            setState(() {
                                              countryCode = code;
                                              //initPlatformState();
                                              print(countryCode);
                                            });
                                          }),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(mdq.width/35),
                                    ),

                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: mdq.height / 100),
                        Container(
                          margin: EdgeInsets.only(left: mdq.width/30 , right: mdq.width/30),

                          height: mdq.height/16,
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0 , right: 15.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(20.0, -mdq.height/22, 20.0,0),

                                hintText: "كلمه المرور",
                                hintStyle: TextStyle(fontSize: 25 , color: Colors.black26 ),

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(mdq.width/35),

                                ),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mdq.height/100,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:mdq.width/11),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "نسيت كلمة المرور؟",
                              style: TextStyle(
                                  fontSize: mdq.width / 21,
                                  color: Color.fromRGBO(255, 16, 20, 1)),
                            ),
                          ),
                        ),
                        SizedBox(height: mdq.height / 30),
                        Container(
                          height: mdq.height/17,
                          margin: EdgeInsets.only(left: mdq.width/15 , right: mdq.width/15),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(mdq.width / 30),
                              color: Color.fromRGBO(255, 16, 20, 1)),
                          child: Center(
                            child: Text(
                              "متابعة",
                              style: TextStyle(
                                  fontSize: mdq.width / 15,
                                  color: Colors.white),
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: mdq.width/10,
                              height: mdq.height/250,
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(mdq.width/60)
                              ),
                            ),
                            Container(
                              width: mdq.width/2,
                              height: mdq.height/15,
                              child: Center(
                                child: Text("استخدم طرق أخري للدخول",style: TextStyle(color: Colors.black38 , fontSize: 17),)
                              ),
                            ),
                            Container(
                              width: mdq.width/10,
                              height: mdq.height/250,
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(mdq.width/60)
                              ),
                            ),
                          ],
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 27,
                                 backgroundColor: Colors.white,
                                 child: Image(image: AssetImage("assets/images/google.png"),fit: BoxFit.fill,),
                                 // backgroundColor: Colors.black,

                                ),
                              ),
                              SizedBox(
                                width: mdq.width/40,
                              ),
                              Container(
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.white,
                                  child: Image(image: AssetImage("assets/images/apple.png"),fit: BoxFit.fill,),
                                  // backgroundColor: Colors.black,

                                ),
                              )
                            ],
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
