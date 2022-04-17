import 'package:get/get.dart';

import '../controllers/booksheet_controller.dart';

class BooksheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BooksheetController>(
      () => BooksheetController(),
    );
  }
}
