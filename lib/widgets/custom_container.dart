import 'package:flutter/cupertino.dart';

class CustomContainer extends StatelessWidget {
  final Color? color;
  final double width;
  final double height;
  const CustomContainer({
    super.key,
    required this.color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
      height: height,
    );
  }
}
