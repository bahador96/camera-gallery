import 'package:flutter/material.dart';
import 'package:flutter_application_1/bindings/bindings.dart';
import 'package:flutter_application_1/camera_and_gallery_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      getPages: [
        GetPage(
          name: '/camera',
          page: () => const CameraAndGalleryScreen(),
        ),
      ],
      initialRoute: '/camera',
    );
  }
}
