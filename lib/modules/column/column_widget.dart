import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';
import 'package:untitled/widgets/custom_container.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightYellow,
        title: const Text("Column"),
      ),
      body: Padding(
        padding: EdgeInsets.all(heights * 0.010),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainer(
                color: AppColors.oranges,
                height: heights * 0.30,
                width: double.infinity,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomContainer(
                color: AppColors.primary,
                height: heights * 0.30,
                width: double.infinity,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomContainer(
                color: AppColors.greens,
                height: heights * 0.30,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
