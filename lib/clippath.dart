import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ClipPathlSample extends StatelessWidget {
  final String newimage = 'assets/images/patterns.jpg';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: 
        // MyCustomClipper(),
        MultipleRoundedPointsClipper(heightOfPoint: 50,Sides.bottom),

        child: Image.asset(
          newimage,
          height: 500,
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path>{
  //custom clipper extends class Rect
  @override
   Path getClip(Size size) {
     //getclip method takes the size of child 
    Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0);
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
