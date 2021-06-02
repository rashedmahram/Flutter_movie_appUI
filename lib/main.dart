import 'package:flutter/material.dart';
import 'package:flutter_movie/constants.dart';

import 'package:flutter_movie/widgets/movie_carousel.dart';
import 'package:flutter_movie/widgets/movie_category.dart';


import 'widgets/genres_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(kDefaultPadding),
      body: Body(),
    );
  }

  AppBar buildAppBar(double padding) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.all(padding),
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ],
      leading: IconButton(
        icon: Padding(
          padding: EdgeInsets.all(padding),
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}

class Body extends StatelessWidget {
  Body({
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex:11,
            child: CategorySlider(),),
          Expanded(
            flex: 7,
            child: GenresList(),),
          Expanded(
            flex: 80,
            child: MovieCarousel(),
          ),
        ],
      ),
    );
  }
}