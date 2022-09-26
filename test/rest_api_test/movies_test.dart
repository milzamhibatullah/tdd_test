import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:tdd_and_getx/controller/movie_controller.dart';
import 'package:tdd_and_getx/model/movie.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:tdd_and_getx/services/api_services.dart';
void main() {
  /// test variable on movie model and search
  group('Movie Model Test', () {
    Movie movie = Movie(
      search: [],
    );
    Search search = Search(
        imdbID: 'id0', title: 'brandnew', year: '2022', poster: 'poster10');

    ///test to check if search data type on model movie is a list
    test('expect search data in movies model is list',
        () => expect(movie.search, isA<List<Search>>()));

    /// test to check data type on search model class
    test('expect imdbId is a string ',
        () => expect(search.imdbID, isA<String>()));
    test(
        'expect title is a string ', () => expect(search.title, isA<String>()));
    test('expect year is a string ', () => expect(search.year, isA<String>()));
    test('expect poster is a string ',
        () => expect(search.poster, isA<String>()));
  });

  group('getMovies Test ', () {

    test('return movies when http response is sucessfull',()async{
      late Movie movies;
      /// example of wrong fetcing
     // final response = await apiService.get(url: 'daiasd?s=batman');

      ///example of correct fetching
     final response = await apiService.get(url: 'api?s=batman');
      movies=Movie.fromJson(jsonDecode(response));
      expect(movies, isA<Movie>());
    });
  });
}
