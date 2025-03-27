// difference between SizedBox vs Container
import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.all(6),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(22), // Andar ka gap
                    color: Colors.blue,
                    child: const Text('Hello'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.all(17), // Bahar ka gap
                    color: Colors.green,
                    child: Text('Hello'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 200,
                    width: 100,
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
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 200,
                    width: 100,
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
