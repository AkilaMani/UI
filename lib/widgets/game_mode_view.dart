import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

import '../constants.dart';

class GameModeView extends StatefulWidget {
  const GameModeView({Key? key}) : super(key: key);

  @override
  _GameModeViewState createState() => _GameModeViewState();
}

class _GameModeViewState extends State<GameModeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.only(left:30.0,right: 30.0),
      decoration: BoxDecoration(
          color: AppColors.white70,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: AppColors.cyanAccent, width: 3.0)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
                type: MaterialType.transparency,
                child: Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Text(gameMode[0],style: const TextStyle(fontSize: 20.0),))),
            Material(
                type: MaterialType.transparency,
                child: Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Text(gameMode[1],style: const TextStyle(fontSize: 20.0),))),
            Material(
                type: MaterialType.transparency,
                child: Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Center(child: Text(gameMode[2],style: const TextStyle(fontSize: 20.0),)))),
          ]),
    );
  }
}
