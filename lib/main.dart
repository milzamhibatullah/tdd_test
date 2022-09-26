import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdd_and_getx/ui/home_screen.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => HomeScreen()),
    ],
  ));
}
