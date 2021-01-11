import 'package:flutter_arq_test/models/Movie.dart';
import 'package:flutter_arq_test/networking/ApiHelper.dart';

import '../apiKey.dart';

class MovieDetailRepository {
  final String _apiKey = apiKey;
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<Movie> fetchMovieDetail(int selectedMovie) async {
    final response = await _helper.get("movie/$selectedMovie?api_key=$_apiKey");
    return Movie.fromJson(response);
  }
}
