
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('TDD test',style: TextStyle(color: Colors.black),),
        elevation: 1.0,
      ),
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Center(
            child: TextButton(
              onPressed: (){},
              child: const Text('Fetch Movies'),
            ),
          ),
        ),
      ),
    );
  }
}