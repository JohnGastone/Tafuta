// ignore_for_file: prefer_const_constructors

// import 'package:dashboard/data/data.dart';
// import 'package:dashboard/screens/kazi_zilizopita.dart';
// import 'package:dashboard/widgets/zilizopitaTester.dart';
import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tafuta/data/similarMoviesData.dart';
import 'package:tafuta/model/similarMovies_model.dart';

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
              image: DecorationImage(
                  image: AssetImage(similarMovies[index].movieImage),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        similarMovies[index].movieTitle,
                        style: GoogleFonts.spaceMono(
                            color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        similarMovies[index].movieTitle,
                        style: GoogleFonts.spaceMono(color: Colors.white),
                      ),
                      // CircularPercentIndicator(
                      //   radius: 30,
                      //   lineWidth: 8,
                      //   animation: true,
                      //   animationDuration: 1500,
                      //   circularStrokeCap: CircularStrokeCap.round,
                      //   percent: similarMovies[index].percent / 100,
                      //   progressColor: Colors.white,
                      //   center: Text(
                      //     "${SimilarMovies[index].mo}%",
                      //     style: GoogleFonts.spaceMono(color: Colors.white),
                      //   ),
                      // )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset(
                      //   similarMovies[index].movieTitle,
                      //   height: 110,
                      // )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
