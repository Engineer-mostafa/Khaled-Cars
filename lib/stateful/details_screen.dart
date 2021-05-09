import 'package:flutter/material.dart';
import '../color.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

import '../widgets/floating_container.dart';
import '../widgets/custom_floating_container.dart';
import '../widgets/rating_reviews.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {


  final _pageController = PageController();
  final _centerpageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final _centercurrentPageNotifier = ValueNotifier<int>(0);
  bool _heart = false;
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    final mdq = MediaQuery
        .of(context)
        .size;
    int cp = _centercurrentPageNotifier.value;
    List<Widget> widgets = [


      Container(child: Text("المزايدات")),
      Container(child: Text("المواصفات")),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.1),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top  : 10),
                child: Align(alignment:Alignment.topRight, child: Text("تقييم عام" , style: TextStyle(fontSize: mdq.width/17),)),
              ),
              Padding(
                padding:  EdgeInsets.only(left:mdq.width/30 ,right:mdq.width/30 ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:mdq.height/50),
                      height:mdq.height/6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Text("(56)" ,style: TextStyle(color:Colors.grey ),),
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 5,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),

                            ],
                          ),
                          Row(
                            children: [
                              Text("(14)" ,style: TextStyle(color:Colors.grey ),),

                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 4,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 4,
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("(5)" ,style: TextStyle(color:Colors.grey ),),

                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 3,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 3,
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("(1)" ,style: TextStyle(color:Colors.grey ),),

                              RatingBar.builder(
                                initialRating: 2,
                                minRating: 2,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 2,
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("(3)" ,style: TextStyle(color:Colors.grey ),),

                              RatingBar.builder(
                                initialRating: 1,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 1,
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                   SizedBox(width: mdq.width/10  ,),
                   CircularPercentIndicator(
                    radius: mdq.width/2.9,
                    lineWidth: 20.0,
                    percent: 0.8, circularStrokeCap: CircularStrokeCap.round,
                    center: new Text("عام 8.8",style: TextStyle(fontSize: mdq.width/18),),
                    progressColor: AppColors.pink,
                    backgroundColor: AppColors.white,
                  )
                ],),
              ),
              Padding(
                padding:  EdgeInsets.only(top: mdq.height/20,bottom: mdq.height/50 , left: mdq.width/50,right:mdq.width/50 ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("تقييمات الافراد" , style: TextStyle(fontSize: mdq.width/15 , color: Colors.black87),),Text("مشاهده الكل", style: TextStyle(fontSize: mdq.width/25 , color: Colors.black54))],),
              ),
              RatingReviews(),

              SizedBox(
                height: mdq.height/40,
              ),
              RatingReviews(),
              SizedBox(
                height: mdq.height/40,
              ),
              RatingReviews(),
            ],
          ),
        ),
      ),
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: Container(
          width: mdq.width,
          height: mdq.height / 10,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              width: double.infinity,
              height: mdq.height / 10,
              decoration: BoxDecoration(
                  color: AppColors.red,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 0,
                        blurRadius: mdq.width / 10),
                  ],
                  borderRadius: BorderRadius.circular(mdq.width / 30)),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      visible = !visible;
                    });
                    print(visible);
                  },
                  child: Center(
                      child: Text(
                        "أضف مزايدة",
                        style: TextStyle(
                            color: AppColors.white, fontSize: mdq.width / 20),
                      ))),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
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
                  Container(
                    height: mdq.height,
                    width: mdq.width,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          /**
                           * image of the car
                           * */
                          Stack(
                            children: [
                              SizedBox(
                                height: mdq.height / 3.4,
                                width: double.infinity,
                                child: PageView.builder(
                                  itemCount: 4,
                                  itemBuilder: (_, i) =>
                                      Container(
                                        height: mdq.height / 10,
                                        width: double.infinity,
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image:
                                            AssetImage("assets/images/t.png"),
                                          ),
                                          border: Border.all(
                                              color: Colors.black12),
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(40),
                                              bottomLeft: Radius.circular(40)),
                                          color: AppColors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 8,
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                      ),
                                  controller: _pageController,
                                  onPageChanged: (int index) {
                                    _currentPageNotifier.value = index;
                                  },
                                ),
                              ),
                              _buildCircleIndicator(
                                  context, 4, _currentPageNotifier),
                              Positioned(
                                  top: mdq.height / 30,
                                  left: mdq.width / 15,
                                  child: Image.asset(
                                      "assets/images/surfasce1.png")),
                              Positioned(
                                  top: mdq.height / 30,
                                  right: mdq.width / 15,
                                  child: Image.asset(
                                      "assets/images/surfadce1.png")),
                              Positioned(
                                right: mdq.width / 20,
                                top: mdq.height / 5.2,
                                child: SizedBox(
                                  height: mdq.height / 10,
                                  width: mdq.width,
                                  child: Row(
                                    children: [
                                      Text(
                                        "تويتا كورلا 2019",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: mdq.width / 15,
                                        ),
                                      ),
                                      SizedBox(
                                        width: mdq.width / 2.8,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _heart = !_heart;
                                            });
                                          },
                                          child: !_heart
                                              ? Image.asset(
                                              "assets/images/heart.png")
                                              : Image.asset(
                                              "assets/images/heart2.png")),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: mdq.width / 20,
                                top: mdq.height / 3.8,
                                child: Container(
                                  child: SizedBox(
                                    height: mdq.height / 50,
                                    width: mdq.width,
                                    child: Row(
                                      children: [
                                        Chip(
                                          label: Text(
                                            "جديدة",
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: mdq.width / 40,
                                            ),
                                          ),
                                          padding: EdgeInsets.only(bottom: 50),
                                          backgroundColor: AppColors.pink,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          "20/10/2021",
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: mdq.width / 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          /**
                           * time - hummer - cash
                           * */
                          FloatingContainer(
                            width: 1,
                            height: .2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomFloatingContainer(
                                  col1row1: "السعر",
                                  col1row2: "الحالي",
                                  money: "18,000",
                                  iconImage: "money.png",
                                ),
                                Spacer(),
                                CustomFloatingContainer(
                                  col1row1: "قيمة",
                                  col1row2: "المزايدة",
                                  money: "1,500",
                                  iconImage: "hummer.png",
                                ),
                                Spacer(),
                                CustomFloatingContainer(
                                  col1row1: "الوقت",
                                  col1row2: "المتبقي",
                                  money: "12:58:01",
                                  iconImage: "clock.png",
                                ),
                              ],
                            ),
                          ),

                          /**
                           *  pageView in the center
                           */
                          Container(
                            height: mdq.height / 20,
                            margin:
                            EdgeInsets.only(right: mdq.width / 10, top: 0),
                            child: Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _centercurrentPageNotifier.value = 0;
                                        _centerpageController.animateToPage(0,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.fastOutSlowIn,
                                        );
                                        print(_centercurrentPageNotifier.value);
                                      });
                                    },
                                    child: Text(
                                      "المزايدات",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: cp == 0
                                              ? Colors.black
                                              : Colors.grey),
                                    )),
                                SizedBox(
                                  width: mdq.width / 25,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _centercurrentPageNotifier.value = 1;
                                      _centerpageController.animateToPage(1,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.fastOutSlowIn,
                                      );
                                      print(_centercurrentPageNotifier.value);
                                    });
                                  },
                                  child: Text(
                                    "المواصفات",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: cp == 1
                                            ? Colors.black
                                            : Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  width: mdq.width / 25,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _centercurrentPageNotifier.value = 2;
                                      _centerpageController.animateToPage(2,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.fastOutSlowIn,
                                      );
                                      print(_centercurrentPageNotifier.value);
                                    });
                                  },
                                  child: Text(
                                    "التقيمات",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: cp == 2
                                            ? Colors.black
                                            : Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: mdq.height / 90,
                            child: Stack(
                              children: [
                                AnimatedPositioned(
                                  duration: Duration(milliseconds: 500),
                                  right: cp == 0
                                      ? mdq.width / 6.5
                                      : cp == 2
                                      ? mdq.width / 1.95
                                      : mdq.width / 3,
                                  curve: Curves.fastOutSlowIn,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        visible = !visible;
                                        print(_currentPageNotifier.toString()[
                                        _currentPageNotifier
                                            .toString()
                                            .length -
                                            2]);
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: mdq.width / 150,
                                      backgroundColor: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //_buildCircleIndicator(context, 3, _centercurrentPageNotifier),
                          FloatingContainer(
                            height: 1,
                            width: 2,
                            child: PageView.builder(
                              itemCount: 3,
                              itemBuilder: (_, i) =>
                                  Container(
                                    //color: Colors.yellow,
                                    height: 50,
                                    child:widgets[i],
                                  ),
                              controller: _centerpageController,
                              onPageChanged: (int index) {
                                setState(() {
                                  _centercurrentPageNotifier.value = index;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildCircleIndicator(BuildContext context, int count, var notifier) {
    return notifier == _centercurrentPageNotifier
        ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: CirclePageIndicator(
        dotSpacing: MediaQuery
            .of(context)
            .size
            .width / 4,
        itemCount: count,
        size: MediaQuery
            .of(context)
            .size
            .width / 50,
        selectedSize: MediaQuery
            .of(context)
            .size
            .width / 50,
        currentPageNotifier: notifier,
        selectedDotColor: AppColors.white,
        dotColor: Colors.black12,
      ),
    )
        : Positioned(
      right: MediaQuery
          .of(context)
          .size
          .width / 51,
      top: MediaQuery
          .of(context)
          .size
          .height / 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: count,
          size: MediaQuery
              .of(context)
              .size
              .width / 50,
          selectedSize: MediaQuery
              .of(context)
              .size
              .width / 50,
          currentPageNotifier: notifier,
          selectedDotColor: AppColors.white,
          dotColor: Colors.black12,
        ),
      ),
    );
  }
}
