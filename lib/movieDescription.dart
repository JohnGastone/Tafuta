// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tafuta/model/movie_model.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:tafuta/similarMovies.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemPage extends StatelessWidget {
  List<Color> clrs = [
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.yellowAccent,
    Colors.orangeAccent
  ];
  final MovieModel movie;

  ItemPage({Key? key, required this.movie}) : super(key: key);

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    String encodedMovieTitle =
        Uri.encodeComponent(movie.movieTitle ?? 'Default Movie Title');
    String message =
        Uri.encodeComponent("Check out this movie: ${movie.movieTitle}!");
    String whatsappUrl = "https://wa.me/?text=${movie.movieTitle}";
    String twitterUrl = "https://twitter.com/intent/tweet?text=$message";
    String facebookUrl =
        "https://www.facebook.com/sharer/sharer.php?u=http://example.com/movies/$encodedMovieTitle";

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 219, 224),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: AnimatedButton(
              width: 250,
              text: 'Rudi Shimoni',
              selectedTextColor: Colors.black,
              transitionType: TransitionType.BOTTOM_TO_TOP,
              borderRadius: 15,
              textStyle: GoogleFonts.spaceGrotesk(
                  fontSize: 20,
                  letterSpacing: 5,
                  color: Color.fromARGB(255, 100, 90, 86),
                  fontWeight: FontWeight.w300),
              onPress: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: Image.asset(
              '${movie.posterImage}',
              height: 210,
              width: 250,
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.zero,
              child: Text(
                '${movie.movieTitle}',
                style: GoogleFonts.spaceGrotesk(
                    color: Colors.blueGrey,
                    fontSize: 35,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Genre',
                          style: GoogleFonts.spaceGrotesk(
                              color: Colors.blueGrey,
                              fontSize: 15,
                              fontWeight: FontWeight.w200),
                        ),
                        Text(
                          'Release Year',
                          style: GoogleFonts.spaceGrotesk(
                              color: Colors.blueGrey,
                              fontSize: 15,
                              fontWeight: FontWeight.w200),
                        ),
                        Text(
                          'Duration',
                          style: GoogleFonts.spaceGrotesk(
                              color: Colors.blueGrey,
                              fontSize: 15,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${movie.genre}',
                              style: GoogleFonts.spaceGrotesk(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueGrey)),
                          Text('${movie.releaseYear}',
                              style: GoogleFonts.spaceGrotesk(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueGrey)),
                          Text('${movie.runtime}',
                              style: GoogleFonts.spaceGrotesk(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueGrey)),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rate the movie',
                          style: GoogleFonts.spaceGrotesk(
                              color: Colors.blueGrey,
                              fontSize: 15,
                              fontWeight: FontWeight.w200),
                        ),
                        Text(
                          'Leave a heart',
                          style: GoogleFonts.spaceGrotesk(
                              color: Colors.blueGrey,
                              fontSize: 15,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: ((context, _) => Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.amber,
                                )),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3))
                                    ]),
                                child: Icon(CupertinoIcons.heart,
                                    size: 10, color: Colors.blueGrey),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  '01',
                                  style: GoogleFonts.spaceGrotesk(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.purpleAccent),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3))
                                    ]),
                                child: Icon(CupertinoIcons.heart_fill,
                                    size: 10, color: Colors.blueGrey),
                              )
                            ],
                          ),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '${movie.description}',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          'Number of Downloads: ',
                          style: GoogleFonts.spaceGrotesk(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey),
                        ),
                        Text(
                          '${movie.downloads}',
                          style: GoogleFonts.spaceGrotesk(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.purpleAccent),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          'Number of Recommendations: ',
                          style: GoogleFonts.spaceGrotesk(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey),
                        ),
                        Text(
                          '${movie.recommendations}',
                          style: GoogleFonts.spaceGrotesk(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.purpleAccent),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text("Recommend To a Friend",
                        style: GoogleFonts.spaceGrotesk(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.black)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlutterSocialButton(
                        onTap: () {
                          _launchURL(whatsappUrl);
                        },
                        buttonType: ButtonType.whatsapp,
                        mini: true,
                      ),
                      FlutterSocialButton(
                        onTap: () {
                          _launchURL(twitterUrl);
                        },
                        buttonType: ButtonType.twitter,
                        mini: true,
                      ),
                      FlutterSocialButton(
                        onTap: () {
                          _launchURL(facebookUrl);
                        },
                        buttonType: ButtonType.facebook,
                        mini: true,
                      ),
                      SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text("Similar Movies",
                        style: GoogleFonts.spaceGrotesk(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.black)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SimilarMoviesGrid(),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "All rights reserved @Shimoni",
                    style: GoogleFonts.spaceGrotesk(
                        color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
