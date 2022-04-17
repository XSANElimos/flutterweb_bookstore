import 'package:get/get.dart';

import '../modules/booksheet/bindings/booksheet_binding.dart';
import '../modules/booksheet/views/booksheet_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/reader/bindings/reader_binding.dart';
import '../modules/reader/views/reader_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        transition: Transition.fade),
    GetPage(
        name: _Paths.BOOKSHEET,
        page: () => BooksheetView(),
        binding: BooksheetBinding(),
        transition: Transition.fade),
    GetPage(
        name: _Paths.READER,
        page: () => ReaderView(),
        binding: ReaderBinding(),
        transition: Transition.fade),
  ];
}
