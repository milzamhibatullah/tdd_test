
import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:tdd_and_getx/services/api_services.dart';

import '../model/movie.dart';

class MovieController extends GetxController{
  var movies = Movie().obs;

 fetchMovies()async{
    try{
      var response = await apiService.get(url: 'api?s=batman');
      if(response!='error' && response!='timeout'){
        log('fetched data : $response');
        movies.value=Movie.fromJson(jsonDecode(response));
      }else{
        throw 'error/timeout';
      }
    }catch(e){
      log('error catch : $e');
      throw 'fatal error';
    }
  }

}