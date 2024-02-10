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
    MovieModel('Panguso', 2020, 4.0, 'images/Tafuta.png'),
    MovieModel('Chausiku', 2013, 4.6, 'images/Tafuta.png'),
    MovieModel('Gusa Unase', 2021, 4.9, 'images/Tafuta.png'),
    MovieModel('Mwana Ukome', 217, 4.6, 'images/Tafuta.png'),
    MovieModel('Mama Kimbo', 2020, 4.5, 'images/Tafuta.png'),
    MovieModel('Kuku Mgeni', 2023, 5.0, 'images/Tafuta.png'),
    MovieModel('Paka Shume', 2020, 4.3, 'images/Tafuta.png'),
    MovieModel('Ukiinama Ntiti ukiinuka Ntiti', 2021, 4.0, 'images/Tafuta.png'),
    MovieModel('Mama Kilakshal', 2020, 4.8, 'images/Tafuta.png'),
    MovieModel('Mama Mbelemende', 2013, 4.9, 'images/Tafuta.png'),
    MovieModel('Kijiwe Samli', 2024, 5.0, 'images/Tafuta.png'),
    MovieModel('Kijiji cha Tambua Haki', 2020, 4.8, 'images/Tafuta.png'),
    MovieModel('Anko JJ', 2021, 4.5, 'images/Tafuta.png'),
    MovieModel('Harakati za pimbi', 2020, 4.4, 'images/Tafuta.png'),
    MovieModel('Shumileta', 2013, 4.5, 'images/Tafuta.png'),
    MovieModel('Jini Kabula', 2024, 4.1, 'images/Tafuta.png'),
  ];

  void updateList(String value) {
    // We will filter our list of movies here
    setState(() {
      displayList = movieList
          .where((element) =>
              element.movieTitle!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  List<MovieModel> displayList = List.from(movieList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 47, 66),
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
                    onChanged: (value) => updateList(value),
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
                    child: ListView.builder(
                        itemCount: displayList.length,
                        itemBuilder: ((context, index) => ListTile(
                              contentPadding: EdgeInsets.all(4),
                              leading: Image.asset(
                                displayList[index].posterImage!,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                displayList[index].movieTitle!,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 195, 205, 211)),
                              ),
                              subtitle: Text(
                                '${displayList[index].releaseYear!}',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 92, 165, 202)),
                              ),
                              trailing: Text('${displayList[index].rating!}',
                                  style: TextStyle(color: Colors.amber)),
                            ))))
              ])),
    );
  }
}
