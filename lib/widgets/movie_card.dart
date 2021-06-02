import 'package:flutter/material.dart';
import 'package:flutter_movie/model/mode.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class MovieCard extends StatefulWidget {
  MovieCard({Key? key, required this.movie}) : super(key: key);
  
  final Movie movie;
  @override
  _MovieCardState createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 80,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(widget.movie.poster),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ),
        Expanded(
          flex:10,
          child: Text(widget.movie.title,style:Theme.of(context).textTheme.headline3!.copyWith(color:Colors.black),),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.movie.rating <=8 ?
            SvgPicture.asset("assets/icons/star.svg"):
            SvgPicture.asset("assets/icons/star_fill.svg"),
            SizedBox(
              width: 20,
            ),
            Text("${widget.movie.rating}",style: Theme.of(context).textTheme.headline5,),
        ],
        ),
        SizedBox(
          height: kDefaultPadding*3,
        ),
      ],
      );
  }
}