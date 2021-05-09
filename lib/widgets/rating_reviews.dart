

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:khaledcars/color.dart';

class RatingReviews extends StatelessWidget {
  const RatingReviews({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mdq = MediaQuery.of(context).size;
    return  Container(

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width:mdq.width/1.35,
                margin:EdgeInsets.only(right: mdq.width/50 , bottom: mdq.height/1180) ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("مولر مجدي" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: mdq.width/23 , color: AppColors.pink),),
                    Padding(
                      padding:  EdgeInsets.only(left:mdq.width/50),
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: mdq.width/20,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin:EdgeInsets.only(right: mdq.width/50 ) ,
                  width: mdq.width / 1.4,
                  child: Text("هذا النص هو مثال لنص يمكن استبداله في نفس المساحه لقد تم توليد هذا النص من مولد النص العربي حيث يمكنك ان تولد مثله" ,style: TextStyle(color: Colors.grey),)),

            ],


          ),

        ],
      ),
    );
  }
}
