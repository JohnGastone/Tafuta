// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tafuta/model/movie_model.dart';
import 'package:gradient_coloured_buttons/gradient_coloured_buttons.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          GradientButton(
            text: "Rudi shimoni",
            textStyle:
                GoogleFonts.karla(fontWeight: FontWeight.bold, fontSize: 15),
            gradientColors: [Colors.blue, Colors.brown],
            height: 50,
            //borderRadius: 30.0,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),

          // child: IconButton(
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          //   icon: Icon(Icons.arrow_back),
          // )

          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: Image.asset(
              '${movie.posterImage}',
              height: 250,
              width: 250,
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 20),
                      child: Row(
                        children: [
                          Text('${movie.movieTitle}',
                              style: GoogleFonts.karla(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueGrey)),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
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
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 10,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  '01',
                                  style: TextStyle(
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
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 10,
                                ),
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
                      style: GoogleFonts.karla(
                        fontSize: 17,
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
                          'Size:   ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            for (int i = 1; i < 6; i++)
                              Container(
                                height: 20,
                                width: 20,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 8)
                                    ]),
                                child: Text(i.toString(),
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300)),
                              )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          'Color: ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              Container(
                                height: 20,
                                width: 20,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: clrs[i],
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 8)
                                    ]),
                              )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text("Share To a Friend",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.black)),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                // onTap: () async {
                //   const url =
                //       'https://www.facebook.com/sharer/sharer.php?u=<URL_TO_SHARE>';
                //   if (await canLaunchUrl(url)) {
                //     await launchUrl(url);
                //   } else {
                //     throw 'Could not launch $url';
                //   }
                // },
                child: Icon(
                  Icons.facebook,
                  color: Colors.blue,
                  size: 40,
                ),
              ),
              InkWell(
                // onTap: () async {
                //   const url =
                //       'https://telegram.me/share/url?url=<URL_TO_SHARE>&text=<TEXT_TO_SHARE>';
                //   if (await canLaunchUrl(url)) {
                //     await launchUrl(url);
                //   } else {
                //     throw 'Could not launch $url';
                //   }
                // },
                child: Icon(
                  Icons.telegram,
                  color: Color.fromARGB(255, 163, 113, 192),
                  size: 40,
                ),
              ),
              InkWell(
                // onTap: () async {
                //   const url = 'whatsapp://send?text=<TEXT_TO_SHARE>';
                //   if (await canLaunchUrl(url)) {
                //     await launchUrl(url);
                //   } else {
                //     throw 'Could not launch $url';
                //   }
                // },
                child: Icon(
                  Icons.whatsapp,
                  color: Colors.green,
                  size: 40,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
