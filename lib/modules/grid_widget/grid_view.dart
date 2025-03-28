import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightYellow,
        title: const Text("GridView"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 2 columns
            crossAxisSpacing: 10, // Columns ke beech ka gap
            mainAxisSpacing: 10, // Rows ke beech ka gap
            childAspectRatio: 1, // Width aur Height ka ratio
          ),
          itemCount: 20, // Total items
          itemBuilder: (context, index) {
            return Container(
              color: Colors.greenAccent,
              alignment: Alignment.center,
              child: Text('Item $index', style: TextStyle(color: Colors.black)),
            );
          },
        ),
      ),
    );
  }
}
