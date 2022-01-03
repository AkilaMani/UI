import 'package:flutter/material.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';
import 'package:ui_nyx_wolves/widgets/abcd_hori_view.dart';
import 'package:ui_nyx_wolves/widgets/game_mode_view.dart';
import 'package:ui_nyx_wolves/widgets/game_options.dart';
import 'package:ui_nyx_wolves/widgets/header.dart';
import 'package:ui_nyx_wolves/widgets/header_game.dart';
class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,

      color: AppColors.darkBlue1,
      child: ListView(
        children: [
          HeaderGame(),
          GameArrowView(),
          GameOptions(),
          Material(
            type: MaterialType.transparency,
            child: Container(
              height: 70.0,
              child:Center(child: Text('SELECT GAME MODE',style: TextStyle(color: AppColors.white,fontSize: 20.0),)),
            ),
          ),
          GameModeView(),

        ],
      ),
    );
  }
}
