import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';

import '../../widgtes/custom_button.dart';
import '../column/column_widget.dart';

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
          Icons.arrow_back_rounded,
          color: AppColors.background,
        ),
        backgroundColor: AppColors.primary,
        title: const Text(
          "My App",
          style: TextStyle(color: Colors.white),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const columnWidget()),
                    );
                  },
                ),
                CustomButton(
                  title: "Row Widget",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const columnWidget(),
                      ),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
