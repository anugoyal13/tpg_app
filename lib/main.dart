import 'package:flutter/material.dart';
import 'homepage.dart';

import 'aboutus.dart';
import 'blogs.dart';
import 'workshops.dart';
import 'tutorials.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}





