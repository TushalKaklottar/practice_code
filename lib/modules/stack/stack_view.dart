import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';
import 'package:untitled/widgets/custom_container.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;
    double widths = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.oranges,
        title: const Text("Stack"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          children: [
            CustomContainer(
              color: AppColors.primary,
              width: 200,
              height: 200,
            ),
            CustomContainer(
              color: AppColors.error,
              width: 150,
              height: 150,
            ),
            CustomContainer(
              color: AppColors.oranges,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
