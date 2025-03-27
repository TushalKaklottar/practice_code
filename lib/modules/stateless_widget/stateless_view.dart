import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';

class LessView extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.greens,
          title: const Text("StateLess Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Counter: $counter"), // Ye value update nahi hogi
              ElevatedButton(
                onPressed: () {
                  counter++; // ❌ Error: Stateless widget data update nahi kar sakta
                },
                child: const Text("Increase"),
              ),
            ],
          ),
        ));
  }
}
