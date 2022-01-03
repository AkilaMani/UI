import 'package:flutter/material.dart';
import 'package:ui_nyx_wolves/screens/game_screen.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';
import 'package:ui_nyx_wolves/widgets/bottom_view.dart';
import 'package:ui_nyx_wolves/widgets/carousel_slider_bottom_view.dart';
import 'package:ui_nyx_wolves/widgets/grid_company.dart';
import 'package:ui_nyx_wolves/widgets/header.dart';
import 'package:ui_nyx_wolves/widgets/leader_board.dart';
import 'package:ui_nyx_wolves/widgets/movie_poster.dart';
import 'package:ui_nyx_wolves/widgets/quadratic_bezier_curve_view.dart';
import 'package:ui_nyx_wolves/widgets/recently_player.dart';
import 'package:ui_nyx_wolves/widgets/carousel_slider_view.dart';

import 'widgets/rounded_rectangular_quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      // home: Game(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('assets/images/background.png'),
      //   ),
      // ),
      color: AppColors.darkBlue1,
      child: ListView(
        children: [
          Header(),
          Container(
            height: 10,
            // color: AppColors.darkBlue1,
          ),
          MoviePoster(),
          Container(
            height: 10,
            // color: AppColors.darkBlue1,
          ),
          RoundedRectangularGrid(),
          Container(
            height: 10,
            // color: AppColors.darkBlue1,
          ),
          GridViewCompany(),
          QuadraticBezierCurveView(),
          Material(
            type: MaterialType.transparency,
            child: Container(
              color: AppColors.white,
              width: double.infinity,
              height: 100.0,
              padding: const EdgeInsets.only(
                bottom: 30.0,
              ),
              child: Center(
                child: Text(
                  'Recently Played',
                  style: TextStyle(color: AppColors.darkBlue1, fontSize: 40.0),
                ),
              ),
            ),
          ),
          RecentlyPlayed(),
          Container(
            height: 10.0,
            color: AppColors.white,
          ),
          Material(
            type: MaterialType.transparency,
            child: Center(
              child: Container(
                // margin: const EdgeInsets.only(
                //   bottom: 30.0,
                // ),
                width: double.infinity,
                color: AppColors.white,
                child: Text(
                  'Trending Tournament',
                  style: TextStyle(color: AppColors.darkBlue1, fontSize: 35.0),
                ),
              ),
            ),
          ),
          // Container(
          //   height: 10.0,
          //   color: AppColors.white,
          // ),
          CarouselSliderView(),
          Container(
            height: 10.0,
            color: AppColors.white,
          ),
          Container(
            height: 30.0,
            color: AppColors.grey,
          ),
          LeaderBoard(),
          CaraouselSliderBottomView(),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: double.infinity,
            height: 3.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: AppColors.listDarkRed,
              ),
            ),
          ),
          Bottom(),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 4, size.height / 4, size.width / 2, size.height - 100);

    path.quadraticBezierTo(size.width - (size.width / 4), size.height - 50,
        size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
