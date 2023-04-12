import 'package:flutter_application_1/controllers/camera_contoller.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CameraController());
  }
}
