import 'package:get/get.dart';
import 'package:ocr/Routes/screen_binding.dart';
import 'package:ocr/Routes/set_routes.dart';

import '../Screen/HomeScreen/View/Home_Screen.dart';

class RouteManagement {
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: homescreen,
          page: () => HomeScreen(),
          binding: ScreenBindings(),
          transition: Transition.leftToRight),
    ];
  }
}
