// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
        title: Text(
          "Movie Arena",
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
                      suffixIconColor: Color.fromARGB(255, 46, 204, 209)))
            ]),
      ),
    );
  }
}
