import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';

class InkWellWidget extends StatefulWidget {
  const InkWellWidget({super.key});

  @override
  State<InkWellWidget> createState() => _InkWellWidgetState();
}

class _InkWellWidgetState extends State<InkWellWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text("InkWell"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                print("Tapped!");
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.blue,
                child:
                    const Text("Tap Me", style: TextStyle(color: Colors.white)),
              ),
            ),
            Ink(
                color: Colors.red, // Ink ke andar color diya
                child: InkWell(
                  onTap: () {
                    print("Tapped!");
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child:
                        Text("Tap Me", style: TextStyle(color: Colors.white)),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
