import 'package:flutter/material.dart';

class ClipRectSample extends StatelessWidget {
  final String newimage = 'assets/images/patterns.jpg';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRect(
        child: Align(
          alignment: Alignment.topRight,
          heightFactor: .5,
          widthFactor: .7,
          child: Image.asset(
            newimage,
            height: 500,
          ),
        ),
      ),
    );
  }
}
