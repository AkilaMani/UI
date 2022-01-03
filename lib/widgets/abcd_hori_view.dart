import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

import '../constants.dart';

class GameArrowView extends StatefulWidget {
  const GameArrowView({Key? key}) : super(key: key);

  @override
  _GameArrowViewState createState() => _GameArrowViewState();
}

class _GameArrowViewState extends State<GameArrowView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,

      decoration: BoxDecoration(
          color: AppColors.white,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.listWhite),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(100.0),
            bottomRight: Radius.circular(100.0),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: AppColors.grey),
            child: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          Container(
              width: 150.0,
              height: 70.0,
              child: Image.asset(
                gameABCDHoriImages[0],
              )),
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: AppColors.grey),
            child: Icon(
              Icons.navigate_next,
              color: AppColors.white,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
