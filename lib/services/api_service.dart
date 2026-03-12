import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/movie_model.dart';

class ApiService {
  // Usaremos una búsqueda genérica de películas de 'action'
  final String _baseUrl = "https://api.tvmaze.com/search/shows?q=action";

  Future<List<Movie>> fetchMovies() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.statusCode == 200 ? response.body : "");
        return body.map((dynamic item) => Movie.fromJson(item)).toList();
      } else {
        throw Exception("Failed to load movies");
      }
    } catch (e) {
      throw Exception("Error during REST request: $e");
    }
  }
}