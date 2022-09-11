import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class continueScreen extends StatefulWidget {
  const continueScreen({Key? key}) : super(key: key);

  @override
  State<continueScreen> createState() => _continueScreenState();
}

class _continueScreenState extends State<continueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 5.h,
                      width: 5.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Center(
                          child: GestureDetector(
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                            onTap: () {
                              Get.back();
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.h,
                  ),
                  Text('Continue Your Lessons',
                      style: TextStyle(
                          fontSize: 2.5.h, fontWeight: FontWeight.bold))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.h),
                child: Container(
                  height: 25.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                        Color.fromRGBO(255, 218, 168, 1),
                        Color.fromRGBO(46, 196, 182, 1),
                        Color.fromRGBO(46, 196, 182, 1),
                        Color.fromRGBO(255, 218, 168, 1),
                      ], // Gradient from https://learnui.design/tools/gradient-generator.html
                      tileMode: TileMode.mirror,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 5.w),
                        child: Column(
                          children: [
                            Text(
                              'Ongoing . 22/32',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 2.h),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'Basic UI/UX Designer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 2.h,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'by Azamat baimatov',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 2.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.h),
                              child: Container(
                                width: 40.w,
                                height: 5.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //   Get.to(());
                                  },
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            OutlinedBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16.sp))),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue.shade900),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.h, left: 15.h),
                              child: Container(
                                child: Image.asset(
                                  'assets/Indicator.png',
                                  scale: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                        width: 15.h,
                        child: CircularPercentIndicator(
                          backgroundColor: Color.fromRGBO(43, 196, 152, 1),
                          radius: 55,
                          lineWidth: 15,
                          percent: 0.8,
                          progressColor: Colors.white,
                          center: Text(
                            '75%',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.h),
                child: Container(
                  height: 25.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                        Colors.white,
                        Colors.lightBlue,
                        Colors.lightBlue,
                        Colors.white,
                      ], // Gradient from https://learnui.design/tools/gradient-generator.html
                      tileMode: TileMode.mirror,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 5.w),
                        child: Column(
                          children: [
                            Text(
                              'Ongoing . 22/32',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 2.h),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'Basic UI/UX Designer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 2.h,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'by Azamat baimatov',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 2.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.h),
                              child: Container(
                                width: 40.w,
                                height: 5.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //   Get.to(());
                                  },
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            OutlinedBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16.sp))),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue.shade900),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.h, left: 15.h),
                              child: Container(
                                child: Image.asset(
                                  'assets/Indicator.png',
                                  scale: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                        width: 15.h,
                        child: CircularPercentIndicator(
                          backgroundColor: Colors.lightBlue,
                          radius: 55,
                          lineWidth: 15,
                          percent: 0.8,
                          progressColor: Colors.white,
                          center: Text(
                            '75%',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.h),
                child: Container(
                  height: 25.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                        Colors.white,
                        Colors.orange,
                        Colors.orange,
                        Colors.white
                      ], // Gradient from https://learnui.design/tools/gradient-generator.html
                      tileMode: TileMode.mirror,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 5.w),
                        child: Column(
                          children: [
                            Text(
                              'Ongoing . 22/32',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 2.h),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'Basic UI/UX Designer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 2.h,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'by Azamat baimatov',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 2.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.h),
                              child: Container(
                                width: 40.w,
                                height: 5.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //   Get.to(());
                                  },
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            OutlinedBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16.sp))),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue.shade900),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.h, left: 15.h),
                              child: Container(
                                child: Image.asset(
                                  'assets/Indicator.png',
                                  scale: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                        width: 15.h,
                        child: CircularPercentIndicator(
                          backgroundColor: Colors.orange,
                          radius: 55,
                          lineWidth: 15,
                          percent: 0.8,
                          progressColor: Colors.white,
                          center: Text(
                            '75%',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.h),
                child: Container(
                  height: 25.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                        Colors.white,
                        Colors.red,
                        Colors.red,
                        Colors.white
                      ], // Gradient from https://learnui.design/tools/gradient-generator.html
                      tileMode: TileMode.mirror,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 5.w),
                        child: Column(
                          children: [
                            Text(
                              'Ongoing . 22/32',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 2.h),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'Basic UI/UX Designer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 2.h,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'by Azamat baimatov',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 2.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.h),
                              child: Container(
                                width: 40.w,
                                height: 5.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //   Get.to(());
                                  },
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            OutlinedBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16.sp))),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue.shade900),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.h, left: 15.h),
                              child: Container(
                                child: Image.asset(
                                  'assets/Indicator.png',
                                  scale: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                        width: 15.h,
                        child: CircularPercentIndicator(
                          backgroundColor: Colors.red,
                          radius: 55,
                          lineWidth: 15,
                          percent: 0.8,
                          progressColor: Colors.white,
                          center: Text(
                            '75%',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
