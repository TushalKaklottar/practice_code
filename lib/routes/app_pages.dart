import 'package:untitled/app_exports.dart';

import '../modules/spacerWidget/spacer.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => const MyHomePage()),
    GetPage(name: AppRoutes.columnWidget, page: () => const ColumnWidget()),
    GetPage(name: AppRoutes.row, page: () => const RowView()),
    GetPage(name: AppRoutes.stack, page: () => const StackView()),
    GetPage(name: AppRoutes.listView, page: () => const ListviewWidget()),
    GetPage(name: AppRoutes.statelessView, page: () => LessView()),
    GetPage(
        name: AppRoutes.sizedVsContainer, page: () => const SizedVsContainer()),
    GetPage(name: AppRoutes.expandedView, page: () => const ExpandedView()),
    GetPage(name: AppRoutes.flexibleView, page: () => const FlexibleView()),
    GetPage(name: AppRoutes.gridWidget, page: () => const GridWidget()),
    GetPage(name: AppRoutes.aspectRatio, page: () => const AspectRatioWidget()),
    GetPage(name: AppRoutes.heroWidget, page: () => const HeroWidget()),
    GetPage(
        name: AppRoutes.intrinsicWidget, page: () => const IntrinsicWidget()),
    GetPage(name: AppRoutes.textWidget, page: () => const TextWidget()),
    GetPage(name: AppRoutes.toolTipWrap, page: () => const ToolTipWidget()),
    GetPage(name: AppRoutes.inkWell, page: () => const InkWellWidget()),
    GetPage(name: AppRoutes.visibility, page: () => const VisibilityWidget()),
    GetPage(name: AppRoutes.spacer, page: () => const SpacerWidget()),
  ];
}
