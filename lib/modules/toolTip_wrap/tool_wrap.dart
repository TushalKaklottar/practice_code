import 'package:flutter/material.dart';

class ToolTipWidget extends StatelessWidget {
  const ToolTipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tooltip with Icon
            const Tooltip(
              message: "This is a Flutter Logo",
              child: Icon(Icons.flutter_dash, size: 50, color: Colors.blue),
            ),
            const SizedBox(height: 20),

            // Tooltip with ElevatedButton
            Tooltip(
              message: "Click to submit",
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Submit"),
              ),
            ),
            const SizedBox(height: 20),

            // Tooltip with Text
            Tooltip(
              message: "This is a sample text",
              textStyle: const TextStyle(color: Colors.white),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child:
                  const Text("Hover over me", style: TextStyle(fontSize: 18)),
            ),
            const Wrap(
              spacing: 10, // Horizontal gap
              runSpacing: 10, // Vertical gap
              children: [
                Chip(label: Text("Flutter Dart Flutter")),
                Chip(label: Text("Dart")),
                Chip(label: Text("GetX")),
                Chip(label: Text("Firebase")),
                Chip(label: Text("REST API")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
