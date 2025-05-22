// difference between SizedBox vs Container
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/app_color.dart';

class SizedVsContainer extends StatelessWidget {
  const SizedVsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightYellow,
        title: const Text("SizedBox vs Container"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(22.h),
                    color: Colors.blue,
                    child: const Text('Hello'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    margin: EdgeInsets.all(17.h), // Bahar ka gap
                    color: Colors.green,
                    child: const Text('Hello'),
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Container(
                    height: 200.w,
                    width: 100.h,
                    color: AppColors.primary,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "3",
                          style: TextStyle(color: AppColors.lightYellow),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: 200.w,
                    width: 100.h,
                    color: AppColors.primary,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "4",
                          style: TextStyle(color: AppColors.lightYellow),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
