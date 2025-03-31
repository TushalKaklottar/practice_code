import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';
import 'package:untitled/widgets/custom_container.dart';

class RowView extends StatelessWidget {
  const RowView({super.key});

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;
    double widths = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greens,
        title: const Text("Row"),
        leading: IconButton(
          color: AppColors.lightYellow,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(heights * 0.008),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: IntrinsicHeight(
            child: Row(
              verticalDirection: VerticalDirection.up,
              children: [
                CustomContainer(
                  color: AppColors.error,
                  width: widths * 0.30,
                  height: heights * 0.15,
                ),
                const VerticalDivider(
                  color: Colors.black,
                  thickness: 5,
                  width: 4,
                ),
                CustomContainer(
                  color: AppColors.primary,
                  width: widths * 0.30,
                  height: heights * 0.15,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomContainer(
                  color: AppColors.secondary,
                  width: widths * 0.30,
                  height: heights * 0.15,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomContainer(
                  color: AppColors.oranges,
                  width: widths * 0.30,
                  height: heights * 0.15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
