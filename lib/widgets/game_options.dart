import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

import '../constants.dart';

class GameOptions extends StatefulWidget {
  const GameOptions({Key? key}) : super(key: key);

  @override
  _GameOptionsState createState() => _GameOptionsState();
}

class _GameOptionsState extends State<GameOptions> {
  String selectedOptions = 'SPORTS';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      // width: 150.0,
      color: AppColors.darkBlue1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: gameOptions.length,
        itemBuilder: (BuildContext context, int index) {
          return Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedOptions = gameOptions[index];
                });
              },
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  height: 200,
                  width: 110,
                  decoration: BoxDecoration(
                    color: selectedOptions == gameOptions[index]
                        ? AppColors.white70
                        : AppColors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                        color: selectedOptions == gameOptions[index]
                            ? AppColors.grey
                            : AppColors.white1,
                        width: 3.0),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.all(18.0),
                          margin: const EdgeInsets.only(left: 5.0,right: 5.0),
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            color: AppColors.grey,

                            shape: BoxShape.circle,
                          ),
                          child:Container(
                              width: 20.0,
                              height: 20.0,

                              decoration: BoxDecoration(
                                color: AppColors.white,
                                shape: BoxShape.circle,
                              )),),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              gameOptionsImages[index],
                            )),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 35.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: selectedOptions == gameOptions[index]
                                ? AppColors.yellow
                                : AppColors.darkBlue1,
                            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(17.0),
                                bottomRight: Radius.circular(17.0)),
                          ),

                          child: Center(
                            child: Text(gameOptions[index],
                            style: TextStyle(fontSize:18.0,color:selectedOptions == gameOptions[index]
                                ? AppColors.darkBlue1
                                : AppColors.white ),),
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
