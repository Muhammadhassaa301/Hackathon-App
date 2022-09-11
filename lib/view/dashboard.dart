import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:jawanpakistan/colors/color.dart';
import 'package:jawanpakistan/view/continue.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'login.dart';

class dashboardScreen extends StatefulWidget {
  const dashboardScreen({Key? key}) : super(key: key);

  @override
  State<dashboardScreen> createState() => _dashboardScreenState();
}

class _dashboardScreenState extends State<dashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.h, left: 4.w),
                child: Image.asset(
                  'assets/Hi Hafiz 👋 Let’s Find Your Course!.png',
                  scale: 4,
                ),
              ),
              SizedBox(
                width: 15.h,
              ),
              Container(
                height: 5.h,
                width: 5.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: Image.asset(
                  'assets/cart 2.png',
                  scale: 4,
                ),
              ),
              SizedBox(
                width: 1.h,
              ),
              Container(
                  height: 5.h,
                  width: 5.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Image.asset('assets/notification.png'))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h, left: 5.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 5.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    )),
                child: SizedBox(
                  width: 41.h,
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Padding(
                          padding: EdgeInsets.only(left: 2.w, top: 1.h),
                          child: Image.asset(
                            'assets/search.png',
                            scale: 4,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'Search your course...',
                        hintStyle: TextStyle(fontSize: 16.sp),
                        labelStyle: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                cardDashboard(
                    image: 'assets/coding website.png', text: 'Coding'),
                SizedBox(
                  width: 8.w,
                ),
                cardDashboard(image: 'assets/geometry.png', text: 'Design'),
                SizedBox(
                  width: 8.w,
                ),
                cardDashboard(image: 'assets/marketing.png', text: 'Marketing'),
                SizedBox(
                  width: 8.w,
                ),
                cardDashboard(image: 'assets/briefcase.png', text: 'Business')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                cardDashboard(image: 'assets/male user.png', text: 'Lifestyle'),
                SizedBox(
                  width: 8.w,
                ),
                cardDashboard(
                  image: 'assets/music 1.png',
                  text: 'Music',
                ),
                SizedBox(
                  width: 8.w,
                ),
                cardDashboard(image: 'assets/book 1@2x.png', text: 'Academics'),
                SizedBox(
                  width: 8.w,
                ),
                cardDashboard(image: 'assets/candy box menu.png', text: 'More')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    'Continue Your Lessons',
                    style:
                        TextStyle(fontSize: 4.w, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(continueScreen());
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(color: Color.fromRGBO(46, 196, 182, 1)),
                    ),
                  ),
                )
              ],
            ),
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
                          style: TextStyle(color: Colors.white, fontSize: 2.h),
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
                          style: TextStyle(color: Colors.white, fontSize: 2.h),
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
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
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

                  // Padding(
                  //   padding: EdgeInsets.only(left: 2.h),
                  //   child: CircleAvatar(
                  //     radius: 60,
                  //     backgroundColor: Colors.white,
                  //     child: CircleAvatar(
                  //       backgroundColor: Color.fromRGBO(46, 196, 182, 1),
                  //       radius: 40,
                  //       child: Text(
                  //         '75%',
                  //         style: TextStyle(
                  //             color: Colors.white, fontWeight: FontWeight.bold),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  // PieChart(
                  //   dataMap: {
                  //     "": 50,
                  //     " ": 20,
                  //   },
                  //   colorList: [
                  //     Color.fromRGBO(236, 241, 246, 1),
                  //     Color.fromRGBO(255, 0, 0, 1),
                  //     // Color.fromRGBO(255, 176, 176, 1),
                  //   ],
                  //   chartType: ChartType.ring,
                  //   ringStrokeWidth: 18.sp,
                  //   animationDuration: const Duration(seconds: 2),
                  //   centerText: "18%",
                  //   chartRadius: 30.sp,
                  //   chartValuesOptions: const ChartValuesOptions(
                  //     showChartValues: false,
                  //     showChartValuesOutside: true,
                  //   ),
                  // legendOptions: const LegendOptions(
                  //   showLegends: true,
                  // ),
                  //     ),

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
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),

                    // child: new CircularProgressIndicator(
                    //   value: 4,
                    //   strokeWidth: 15,
                    // ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class cardDashboard extends StatelessWidget {
  const cardDashboard({Key? key, required this.image, required this.text})
      : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20)),
          height: 8.h,
          width: 15.w,
          child: Image.asset(
            image,
            scale: 4,
          ),

          // child: Image.asset(''),
        ),
        Padding(
          padding: EdgeInsets.only(top: 1.h),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 3.w),
          ),
        ),
      ],
    );
  }
}
