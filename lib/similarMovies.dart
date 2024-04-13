// ignore_for_file: prefer_const_constructors

// import 'package:dashboard/data/data.dart';
// import 'package:dashboard/screens/kazi_zilizopita.dart';
// import 'package:dashboard/widgets/zilizopitaTester.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';
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
                color: Color.fromARGB(136, 218, 180, 180),
                border: Border(),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        similarMovies[index].movieTitle,
                        style: GoogleFonts.spaceMono(
                            color: Color.fromARGB(255, 75, 84, 99),
                            fontSize: 18),
                      ),
                      Text(
                        '${similarMovies[index].releaseYear}',
                        style: GoogleFonts.spaceMono(
                          fontSize: 18,
                          color: Color.fromARGB(255, 75, 84, 99),
                        ),
                      ),
                      Text(
                        '${similarMovies[index].movieRating}',
                        style: GoogleFonts.spaceMono(
                          fontSize: 18,
                          color: Colors.amber,
                        ),
                      ),
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
