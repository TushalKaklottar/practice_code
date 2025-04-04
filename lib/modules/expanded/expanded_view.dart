import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';

class ExpandedView extends StatefulWidget {
  const ExpandedView({super.key});

  @override
  State<ExpandedView> createState() => _ExpandedViewState();
}

class _ExpandedViewState extends State<ExpandedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.error,
        centerTitle: true,
        title: const Text("Expanded"),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.orange,
              width: 100,
              child: const Center(child: Text('Fixed')),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amberAccent,
              child: const Center(child: Text('Expanded')),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: const Center(child: Text('Fixed')),
            ),
          ),
        ],
      ),
    );
  }
}
