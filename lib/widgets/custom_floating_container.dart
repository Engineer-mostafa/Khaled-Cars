



import 'package:flutter/material.dart';

class CustomFloatingContainer extends StatelessWidget {
  final String col1row1;
  final String col1row2;
  final String iconImage;
  final String money;

  const CustomFloatingContainer({Key key, this.col1row1, this.col1row2, this.iconImage, this.money}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(col1row1,style: TextStyle(fontWeight: FontWeight.bold, color:Colors.black45,fontSize: MediaQuery.of(context).size.width/30,),),
        Text(col1row2,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black45,fontSize: MediaQuery.of(context).size.width/30)),
        SizedBox(height: MediaQuery.of(context).size.height/80,),
        Image.asset("assets/images/" + iconImage),
        SizedBox(height: MediaQuery.of(context).size.height/70,),
        RichText(
          text: TextSpan(
            text: money,
            style: TextStyle(color:Colors.black,fontSize: MediaQuery.of(context).size.width/20 , fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(text: "ر.س", style: TextStyle(color:Colors.grey,fontSize: MediaQuery.of(context).size.width/30),)                            ],
          ),
        )
      ],);
  }
}
