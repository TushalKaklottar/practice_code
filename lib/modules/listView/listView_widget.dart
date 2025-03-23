import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cyanShade,
        title: const Text("ListTile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Item ${index + 1}"),
              leading: const Icon(Icons.star),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: AppColors.cyanShade,
              thickness: 2,
            );
          },
        ),
      ),
    );
  }
}
