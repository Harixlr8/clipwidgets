import 'package:flutter/material.dart';

class ClipOvalSample extends StatelessWidget {
  final String newimage = 'assets/images/patterns.jpg';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        clipper: MyClipper(),

        //MyClipper() is created with type CustomClipper<Rect>
        child: Image.asset(
          newimage,
          height: 500,
          // width: 500,
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  //custom clipper extends class Rect
  @override
  Rect getClip(Size size) {
    //getclip method takes the size of child and returns Rect 
    return const Rect.fromLTWH(50, 150, 200, 200);
    // clip position 50 from left 100 from top and create a width and height of 200 to create a circle shape
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
    //tells flutter whether to perform clipping again given the previous state.
  }
}
