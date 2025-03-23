import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';

import '../../widgets/custom_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu_open_rounded,
          color: AppColors.background,
        ),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        title: const Text(
          "My App",
          style: TextStyle(color: AppColors.background),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
            ),
          ),
        ],
        actionsIconTheme: const IconThemeData(color: AppColors.background),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                  title: "Column Widget",
                  onPressed: () {
                    Navigator.pushNamed(context, '/columnWidget');
                  },
                ),
                CustomButton(
                  title: "Row Widget",
                  onPressed: () {
                    Navigator.pushNamed(context, '/row');
                  },
                ),
              ],
            ),
          )),
    );
  }
}
