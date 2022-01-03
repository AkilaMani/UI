import 'package:flutter/material.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

import '../constants.dart';
class MoviePoster extends StatefulWidget {
  const MoviePoster({Key? key}) : super(key: key);

  @override
  _MoviePosterState createState() => _MoviePosterState();
}

class _MoviePosterState extends State<MoviePoster> {
  @override
  Widget build(BuildContext context) {
    return  Stack(fit: StackFit.loose, children: [
      Container(
        width: double.infinity,
        height: 250,
        color:AppColors.darkBlue1,
        child: ListView.builder(
          itemCount: moviesPoster.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(moviesPoster[index]),
                  ),
                ),
                // child: Image.asset(moviesPoster[index])
                child: Stack(children: [
                  Positioned(
                    bottom: 8.0,
                    left: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, bottom: 10.0),
                      child: Material(
                        type: MaterialType.transparency,
                        child: Text(
                          rating[index],
                          style: TextStyle(
                              color: AppColors.white, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50.0,
                    left: 10.0,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text(
                        movieQuizNames[index],
                        style: TextStyle(
                            color: AppColors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40.0,
                    left: 10.0,
                    child: Container(
                      // padding: const EdgeInsets.all(8.0),
                      height: 5.0, width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: AppColors.redOrange,
                        ),
                        // color:Colors.lightGreenAccent,
                      ),
                    ),
                  )
                ]),
              ),
            );
          },
        ),
      ),
    ]);
  }
}
