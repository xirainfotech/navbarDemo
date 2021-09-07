import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Nav Demo",
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}
