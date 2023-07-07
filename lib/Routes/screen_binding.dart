import 'package:get/get.dart';
import 'package:ocr/Screen/HomeScreen/View/Home_Screen.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreen());
  }
}
