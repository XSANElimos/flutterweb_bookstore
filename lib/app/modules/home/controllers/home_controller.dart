import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var currentview = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void changeView(int $page) {
    currentview = $page.obs;
  }
}
