// ignore_for_file: prefer_const_constructors, prefer_is_empty, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:tafuta/movieDescription.dart';
import 'package:tafuta/model/movie_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void updateList(String value) {
    // We will filter our list of movies here
    setState(() {
      displayList = MovieLists.movieList
          .where((element) =>
              element.movieTitle!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  List<MovieModel> displayList = List.from(MovieLists.displayList);

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
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
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
                    child: displayList.length == 0
                        ? Center(
                            child: Text(
                              'No movies with that name found',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        : ListView.builder(
                            itemCount: displayList.length,
                            itemBuilder: ((context, index) => InkWell(
                                  // Handle the tap event
                                  onTap: () {
                                    // Use Navigator to push a new route that displays the ItemPage
                                    // We pass the MovieModel object to the ItemPage to display the movie details
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ItemPage(movie: displayList[index]),
                                      ),
                                    );
                                  },
                                  child: ListTile(
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
                                          color: Color.fromARGB(
                                              255, 195, 205, 211)),
                                    ),
                                    subtitle: Text(
                                      '${displayList[index].releaseYear!}',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 92, 165, 202)),
                                    ),
                                    trailing: Text(
                                        '${displayList[index].rating!}',
                                        style: TextStyle(color: Colors.amber)),
                                  ),
                                ))))
              ])),
    );
  }
}
