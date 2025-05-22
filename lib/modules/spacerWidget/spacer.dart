import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spacer vs SizedBox')),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            // ---------- Spacer Example ----------
            Text(
              'Using Spacer (Flexible)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.menu),
                Spacer(), // Pushes text to center
                Text('My App'),
                Spacer(), // Pushes icon to end
                Icon(Icons.notifications),
              ],
            ),

            SizedBox(height: 40), // gap between both examples

            // ---------- SizedBox Example ----------
            Text(
              'Using SizedBox (Fixed)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.menu),
                SizedBox(width: 50), // Fixed space
                Text('My App'),
                SizedBox(width: 50), // Fixed space
                Icon(Icons.notifications),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
