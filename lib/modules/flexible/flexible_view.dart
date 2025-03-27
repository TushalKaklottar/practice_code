import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';

class FlexibleView extends StatefulWidget {
  const FlexibleView({super.key});

  @override
  State<FlexibleView> createState() => _FlexibleViewState();
}

class _FlexibleViewState extends State<FlexibleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.oranges,
        title: const Text(
          "Flexible Widget",
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: Row(
        children: [
          Flexible(
            child: Container(
              height: 100,
              color: Colors.blue,
              child: const Center(child: Text('Flexible 2x')),
            ),
          ),
          Flexible(
            child: Container(
              height: 100,
              color: Colors.green,
              child: const Center(child: Text('Flexible 1x')),
            ),
          ),
          Container(
            width: 100, // Fixed width
            height: 100,
            color: Colors.red,
            child: const Center(child: Text('Fixed')),
          ),
        ],
      ),
    );
  }
}
