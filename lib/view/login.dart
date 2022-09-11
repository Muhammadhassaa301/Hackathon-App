import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:jawanpakistan/colors/color.dart';
import 'package:jawanpakistan/view/dashboard.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
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
                      color: colorblue,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: Center(
                      child: GestureDetector(
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromRGBO(0, 74, 97, 1),
                        ),
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 3.h),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Selamat Datang!',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 74, 97, 1),
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 3.h),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Masukan NISN dan password untuk \n memulai belajar sekarang',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 74, 97, 1),
                    fontSize: 12,
                    //  fontWeight: FontWeight.bold
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 3.h),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Frame 7',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    //  fontWeight: FontWeight.bold
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 2.h),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'NISN',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 74, 97, 1),
                    fontSize: 18,
                    //  fontWeight: FontWeight.bold
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h, left: 5.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 5.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    )),
                child: SizedBox(
                  width: 41.h,
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Image.asset(
                          'assets/Group 8.png',
                          scale: 4,
                        ),
                        border: InputBorder.none,
                        hintText: 'Nomor NISN',
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
            padding: EdgeInsets.only(left: 5.w, top: 3.h),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Frame 8',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    //  fontWeight: FontWeight.bold
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 2.h),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 74, 97, 1),
                    fontSize: 18,
                    //  fontWeight: FontWeight.bold
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h, left: 5.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 5.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    )),
                child: SizedBox(
                  width: 41.h,
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Image.asset(
                          'assets/Group 4.png',
                          scale: 4,
                        ),
                        border: InputBorder.none,
                        hintText: 'Masukkan Password',
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
            padding: EdgeInsets.only(right: 5.w),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Lupa Password',
                  style: TextStyle(color: Color.fromRGBO(0, 74, 97, 1)),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Container(
              width: 80.w,
              height: 5.h,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(dashboardScreen());
                },
                child: Text(
                  'MULAI BELAJAR',
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
      )),
    );
  }
}
