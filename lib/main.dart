import 'package:flutter/material.dart';
import 'package:untitled/modules/row/row_view.dart';
import 'core/app_color.dart';
import 'modules/column/column_widget.dart';
import 'modules/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/columnWidget': (context) => const ColumnWidget(),
        '/row': (context) => const RowView(),
      },
    );
  }
}
