import 'package:flutter/material.dart';

class ClipRRectSample extends StatelessWidget {
  final String newimage = 'assets/images/patterns.jpg';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
        child: Align(
          heightFactor: .7,
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
