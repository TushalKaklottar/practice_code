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
          Container(
            color: Colors.orange,
            child: const Center(child: Text('Fixed')),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.amberAccent,
              child: const Center(child: Text('Expanded')),
            ),
          ),
          Expanded(
            flex: 6,
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
