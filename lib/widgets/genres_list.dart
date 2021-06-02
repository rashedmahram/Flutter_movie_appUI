import 'package:flutter/material.dart';

import '../constants.dart';

class GenresList extends StatefulWidget {
  const GenresList({
    Key? key,
  }) : super(key: key);

  @override
  _GenresListState createState() => _GenresListState();
}

class _GenresListState extends State<GenresList> {
  List<String> genres = ["Action", "Crime", "Comedy", "Drama", "Horror", "Animation"];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildButton(index),
        itemCount: genres.length,
      ),
    );
  }

  Container buildButton(int index) {
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genres[index],
        style: TextStyle(color: kTextColor.withOpacity(0.8), fontSize: 16),
      ),
    );
  }
}
