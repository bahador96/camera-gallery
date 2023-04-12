import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CameraController extends GetxController {
  var imagePath = ''.obs;
  var imageSize = ''.obs;

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
      imageSize.value =
          '${((File(imagePath.value)).lengthSync() / 1024 / 1024).toStringAsFixed(2)}Mb';
    } else {
      Get.snackbar(
        'عکسی انتخاب نشد',
        'خطا',
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(20.0),
      );
    }
  }
}
