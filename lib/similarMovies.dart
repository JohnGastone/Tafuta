// ignore_for_file: library_private_types_in_public_api, prefer_const_declarations

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SimilarMoviesGrid extends StatefulWidget {
  const SimilarMoviesGrid({super.key});

  @override
  _SimilarMoviesGridState createState() => _SimilarMoviesGridState();
}

class _SimilarMoviesGridState extends State<SimilarMoviesGrid> {
  late List<Movie> movies;

  @override
  void initState() {
    super.initState();
    fetchSimilarMovies();
  }

  Future<void> fetchSimilarMovies() async {
    final apiKey = 'ba86efc390e57094a77b83946be6625c';
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/movie/550/similar?api_key=$apiKey'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> results = data['results'];
      setState(() {
        movies = results.map((json) => Movie.fromJson(json)).toList();
      });
    } else {
      throw Exception('Failed to load similar movies');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (movies == null) {
      return Center(child: CircularProgressIndicator());
    }

    return GridView.builder(
      itemCount: movies.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return MovieItem(movie: movies[index]);
      },
    );
  }
}

class MovieItem extends StatelessWidget {
  final Movie movie;

  MovieItem({required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap event
      },
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Movie {
  final String title;
  final String posterPath;

  Movie({required this.title, required this.posterPath});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      posterPath: json['poster_path'],
    );
  }
}
