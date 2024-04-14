// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tafuta/data/similarMoviesData.dart';

class SimilarMoviesGrid extends StatelessWidget {
  const SimilarMoviesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: similarMovies.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 7, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(135, 167, 161, 161),
                border: const Border(),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        similarMovies[index].movieTitle,
                        style: GoogleFonts.spaceMono(
                            color: const Color.fromARGB(255, 75, 84, 99),
                            fontSize: 18),
                      ),
                      Text(
                        '${similarMovies[index].releaseYear}',
                        style: GoogleFonts.spaceMono(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 75, 84, 99),
                        ),
                      ),
                      Text(
                        '${similarMovies[index].movieRating}',
                        style: GoogleFonts.spaceMono(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        similarMovies[index].genre,
                        style: GoogleFonts.spaceMono(),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Image.asset(similarMovies[index].movieImage,
                              height: 110, width: 124),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
