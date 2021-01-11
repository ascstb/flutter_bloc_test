import 'package:flutter_arq_test/models/Movie.dart';
import 'package:flutter_arq_test/models/MovieResponse.dart';
import 'package:flutter_arq_test/networking/ApiHelper.dart';

import '../apiKey.dart';

class MovieRepository {
  final String _apiKey = apiKey;
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<Movie>> fetchMovieList() async {
    final response = await _helper.get("movie/popular?api_key=$_apiKey");
    return MovieResponse.fromJson(response).results;
  }
}
