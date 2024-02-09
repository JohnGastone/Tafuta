// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tafuta/model/movie_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<MovieModel> movieList = [
    MovieModel('Panguso', 2020, 'images/Tafuta.png'),
    MovieModel('Chausiku', 2013, 'images/Tafuta.png'),
    MovieModel('Gusa Unase', 2021, 'images/Tafuta.png'),
    MovieModel('Mwana Ukome', 217, 'images/Tafuta.png'),
    MovieModel('Mama Kimbo', 2020, 'images/Tafuta.png'),
    MovieModel('Kuku Mgeni', 2023, 'images/Tafuta.png'),
    MovieModel('Paka Shume', 2020, 'images/Tafuta.png'),
    MovieModel('Ukiinama Ntiti ukiinuka Ntiti', 2021, 'images/Tafuta.png'),
    MovieModel('Mama Kilakshal', 2020, 'images/Tafuta.png'),
    MovieModel('Mama Mbelemende', 2013, 'images/Tafuta.png'),
    MovieModel('Kijiwe Samli', 2024, 'images/Tafuta.png'),
  ];

  void updateList(String value) {
    // We will filter our list of movies here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 200, 200),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0.4,
        centerTitle: true,
        title: Text(
          "Movies Arena",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Search for your favorite Movie',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 153, 174, 190),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Eg: Kijiji cha Tambua Haki",
                      suffixIcon: Icon(
                        Icons.search,
                      ),
                      suffixIconColor: Color.fromARGB(255, 46, 204, 209))),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView(
                children: [],
              ))
            ]),
      ),
    );
  }
}
