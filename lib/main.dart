import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ocr/Routes/set_routes.dart';
import 'package:ocr/Screen/recognization_page.dart';
import 'package:ocr/Utils/image_cropper_page.dart';
import 'package:ocr/Utils/image_picker_class.dart';
import 'package:ocr/Widgets/modal_dialog.dart';

import 'Routes/route_managment.dart';
import 'Routes/screen_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: homescreen,
      getPages: RouteManagement.getPages(),
      initialBinding: ScreenBindings(),
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
    );
  }
}

