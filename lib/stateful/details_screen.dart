import 'package:flutter/material.dart';



class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final mdq = MediaQuery
        .of(context)
        .size;


    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
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
                      
                      //photo app bar
                      Positioned(
                        top: 0,
                        left: 0,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    boxShadow:  [ BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(mdq.width/10),
                                      bottomRight: Radius.circular(mdq.width/10),)

                                ),
                                height: mdq.height/3,
                                width: mdq.width,
                                child:  Image(fit: BoxFit.fill, image: AssetImage("assets/images/toyota.png" , ) ,),
                              ),
                            ],
                          ),
                        ),
                      ),




                      //bottom sheet
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child:
                        Container(
                          decoration: BoxDecoration(
                              boxShadow:  [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(mdq.width/15),
                                topLeft: Radius.circular(mdq.width/15),)

                          ),
                          height: mdq.height/9,
                          width: mdq.width,
                          child:  Container(
                            height: mdq.height/15,
                            margin: EdgeInsets.only(
                                left: mdq.width/15 ,
                                right: mdq.width/15 ,
                                top: mdq.height/30,
                                bottom: mdq.height/50),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(mdq.width / 30),
                                color: Color.fromRGBO(255, 16, 20, 1)),
                            child: Center(
                              child: Text(
                                "اضف مزايده",
                                style: TextStyle(
                                    fontSize: mdq.width / 15,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                ),
            ),
        ),
    );
  }
}
