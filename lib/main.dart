import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jawanpakistan/view/home.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, mobile) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: homeScreen(),
      );
    });
  }
}
