import 'package:untitled/app_exports.dart';

class FlexibleView extends StatefulWidget {
  const FlexibleView({super.key});

  @override
  State<FlexibleView> createState() => _FlexibleViewState();
}

class _FlexibleViewState extends State<FlexibleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.oranges,
        title: const Text(
          "Flexible Widget",
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: Column(
        children: [
          /// 🔵 Fixed height header
          Container(
            height: 100.h,
            color: Colors.blue,
          ),

          Flexible(
            child: Container(
              color: Colors.red,
            ),
          ),

          /// 🟢 Fixed bottom bar
          Container(
            height: 300.h,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
