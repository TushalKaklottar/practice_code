import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AspectRatio Example"),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9, // Width : Height (16:9)
          child: Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                "16:9 Ratio Box",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
