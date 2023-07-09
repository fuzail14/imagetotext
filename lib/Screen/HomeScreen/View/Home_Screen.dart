import 'dart:developer';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ocr/Screen/recognization_page.dart';

import '../../../Utils/image_cropper_page.dart';
import '../../../Utils/image_picker_class.dart';
import '../../../Widgets/modal_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //scaffold
        body: Container(),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.cameraswitch_sharp),
          backgroundColor: Color(0xff287057),
          onPressed: () {
            imagePickerModal(context, onCameraTap: () {
              log("Camera");
              pickImage(source: ImageSource.camera).then((value) {
                if (value != '') {
                  imageCropperView(value, context).then((value) {
                    if (value != '') {
                      Get.to(RecognizePage(path: value));
                    }
                  });
                }
              });
            }, onGalleryTap: () {
              log("Gallery");
              pickImage(source: ImageSource.gallery).then((value) {
                if (value != '') {
                  imageCropperView(value, context).then((value) {
                    if (value != '') {
                      Get.to(RecognizePage(path: value));
                    }
                  });
                }
              });
            });
          },
        ),
      ),
    );
  }
}
