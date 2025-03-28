import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';

class IntrinsicWidget extends StatelessWidget {
  const IntrinsicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: const Text("IntrinsicWidget"),
        ),
        body: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(color: Colors.red, width: 100, height: 50),
              Container(color: Colors.green, width: 100, height: 100),
              Container(color: Colors.blue, width: 100, height: 150),
            ],
          ),
        ));
  }
}
