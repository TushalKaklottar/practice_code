import 'package:untitled/app_exports.dart';

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
        body: Column(
          children: [
            Container(
              height: 100.h,
              color: Colors.blue,
              child: const Center(
                child: Text("Header"),
              ),
            ),
            Container(
                height: 200.h,
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(color: Colors.red, height: 100.h),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(color: Colors.green, height: 100.h),
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                color: Colors.black,
                child: const Center(
                    child: Text("Bottom Navigation",
                        style: TextStyle(color: Colors.white))),
              ),
            ),
          ],
        ));
  }
}
