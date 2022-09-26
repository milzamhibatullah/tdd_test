
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdd_and_getx/controller/movie_controller.dart';

class HomeScreen extends StatelessWidget{
  final movieController = Get.put(MovieController());
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
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
              onPressed: ()async{
                await movieController.fetchMovies();
              },
              child: const Text('Fetch Movies'),
            ),
          ),
        ),
      ),
    );
  }
}