import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';

class VisibilityWidget extends StatefulWidget {
  const VisibilityWidget({super.key});

  @override
  State<VisibilityWidget> createState() => _VisibilityWidgetState();
}

class _VisibilityWidgetState extends State<VisibilityWidget> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightYellow,
        title: const Text("Visibility"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: isVisible, // true -> show, false -> hide
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blue,
              child: const Text("Hello, I am Visible!",
                  style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible; // Toggle visibility
              });
            },
            child: Text(isVisible ? "Hide" : "Show"),
          ),
        ],
      ),
    );
  }
}
