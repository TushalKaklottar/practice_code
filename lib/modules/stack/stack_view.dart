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
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.blue,
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
