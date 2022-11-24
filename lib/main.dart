import 'package:flutter/material.dart';

import 'clipoval.dart';
import 'clippath.dart';
import 'cliprect.dart';
import 'cliprrect.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClipWidgetsSample(),
    ),
  );
}

class ClipWidgetsSample extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clip Widgets'),
      ),
      body: 
      ClipRectSample(),
      // ClipRRectSample(),
      // ClipOvalSample(),
      // ClipPathlSample(),
    );
  }
}
