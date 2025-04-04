import 'package:flutter/material.dart';
import 'package:untitled/modules/aspectRatio/aspect_ratio_widget.dart';
import 'package:untitled/modules/expanded/expanded_view.dart';
import 'package:untitled/modules/hero/hero_widget.dart';
import 'package:untitled/modules/row/row_view.dart';
import 'package:untitled/modules/stateless_widget/stateless_view.dart';
import 'package:untitled/modules/visibility/visibility_widget.dart';
import 'core/app_color.dart';
import 'modules/IntrinsicWidget/Intrinsic_widget.dart';
import 'modules/column/column_widget.dart';
import 'modules/container_sizedBox/container_sizedBox.dart';
import 'modules/flexible/flexible_view.dart';
import 'modules/grid_widget/grid_view.dart';
import 'modules/home/home_view.dart';
import 'modules/inkwell/inkWell.dart';
import 'modules/listView/listView_widget.dart';
import 'modules/stack/stack_view.dart';
import 'modules/text/text_widget.dart';
import 'modules/toolTip_wrap/tool_wrap.dart';

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
        '/stack': (context) => const StackView(),
        '/listView': (context) => const ListviewWidget(),
        '/statelessView': (context) => LessView(),
        '/SizedVsContainer': (context) => const SizedVsContainer(),
        '/ExpandedView': (context) => const ExpandedView(),
        '/FlexibleView': (context) => const FlexibleView(),
        '/gridWidget': (context) => const GridWidget(),
        '/AspectRatio': (context) => const AspectRatioWidget(),
        '/HeroWidget': (context) => const HeroWidget(),
        '/IntrinsicWidget': (context) => const IntrinsicWidget(),
        '/textWidget': (context) => const TextWidget(),
        '/toolTip_wrap': (context) => const ToolTipWidget(),
        '/inkWell_Widget': (context) => const InkWellWidget(),
        '/visibility': (context) => const VisibilityWidget(),
      },
    );
  }
}
