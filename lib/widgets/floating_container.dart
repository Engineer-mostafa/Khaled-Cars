import 'package:flutter/material.dart';
class FloatingContainer extends StatelessWidget {
  final double width,height;
  final Widget child;

  const FloatingContainer({this.width, this.height, this.child});
  @override
  Widget build(BuildContext context) {
    final mdq = MediaQuery.of(context).size;
    return Container(
      padding:EdgeInsets.only(left: mdq.width/50 , right: mdq.width/40 , top: mdq.height/70),
      margin: EdgeInsets.symmetric(vertical: mdq.width/40,horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(mdq.width/15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            spreadRadius: 0,
          )
        ],
      ),
      width: MediaQuery.of(context).size.width*width,
      height: MediaQuery.of(context).size.height*height / 1.2,
      child:child,
    );
  }
}
