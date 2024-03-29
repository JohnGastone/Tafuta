// ignore_for_file: library_private_types_in_public_api, prefer_const_declarations, prefer_const_constructors, unnecessary_null_comparison, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

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
  late bool isLoading;
  late String errorMessage;

  @override
  void initState() {
    super.initState();
    isLoading = true; // Initially set loading to true
    errorMessage = ''; // Initially set error message to empty string
    fetchSimilarMovies(); // Fetch similar movies when widget is initialized
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
        isLoading = false; // Update loading state after fetching movies
      });
    } else {
      errorMessage =
          'Failed to load similar movies'; // Set error message if fetch fails
      isLoading = false; // Update loading state
    }
  }

  @override
  Widget build(BuildContext context) {
    // Handle different states: loading, error, and success
    if (isLoading) {
      return Center(
          child: CircularProgressIndicator()); // Show loading indicator
    }

    if (errorMessage.isNotEmpty) {
      return Center(child: Text(errorMessage)); // Show error message if present
    }

    if (movies == null) {
      return Center(
          child: Text(
              'No similar movies found')); // Show message if no movies found
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
