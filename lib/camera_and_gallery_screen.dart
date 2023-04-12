import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/camera_contoller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CameraAndGalleryScreen extends StatelessWidget {
  const CameraAndGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Camera and gallery"),
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Get.find<CameraController>().imagePath.value == ''
                    ? const CircularProgressIndicator()
                    : Image.file(
                        File(Get.find<CameraController>().imagePath.value));
              },
            ),
            Obx(() {
              return Text(Get.find<CameraController>().imageSize.value);
            }),
            ElevatedButton(
              onPressed: () {
                Get.find<CameraController>().getImage(ImageSource.camera);
              },
              child: const Text("Camera"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CameraController>().getImage(ImageSource.gallery);
              },
              child: const Text("Gallery"),
            )
          ],
        ),
      ),
    );
  }
}
