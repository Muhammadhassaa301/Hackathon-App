import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:jawanpakistan/colors/color.dart';
import 'package:jawanpakistan/view/login.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 74, 97, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            height: 55.h,
            width: 100.w,
            // color: Color.fromRGBO(0, 74, 97, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: Image.asset(
                    'assets/AiLearn.png',
                    scale: 4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: Image.asset(
                    'assets/Frame.png',
                    scale: 4,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 3.h),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Perangkat Lunak \nPengolah Gambar Vektor',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 74, 97, 1),
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 3.h),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Jelajahi AiLearn untuk menambah \nkemampuanmu dalam mengoperasikan \n Adobe Illustrator',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 74, 97, 1),
                    fontSize: 16,
                    //  fontWeight: FontWeight.bold
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Container(
              width: 80.w,
              height: 5.h,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(loginScreen());
                },
                child: Text(
                  'MASUK',
                  style: TextStyle(fontSize: 18),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.sp))),
                  backgroundColor: MaterialStateProperty.all<Color>(colorblue),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
