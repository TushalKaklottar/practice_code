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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomContainer(
              color: AppColors.oranges,
              height: heights * 0.30,
              width: double.infinity,
            ),
            const Divider(
              thickness: 4,
              color: Colors.black,
              height: 4,
            ),
            CustomContainer(
              color: AppColors.primary,
              height: heights * 0.30,
              width: double.infinity,
            ),
            const Divider(
              thickness: 4,
              color: Colors.black,
              height: 4,
            ),
            CustomContainer(
              color: AppColors.greens,
              height: heights * 0.30,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
