import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

import '../constants.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({Key? key}) : super(key: key);

  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  String selectedLeaderBoard = 'Today';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grey,
      child: Column(
        children: [
          Material(
            type: MaterialType.transparency,
            child: Container(
              width: 250,
              child: Text('LEADER BOARD',
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.darkBlue1,
                  )),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            width: 350,
            margin: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedLeaderBoard = 'This Month';
                  });

                  print(selectedLeaderBoard);
                },
                child: Container(
                  width: 110,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: selectedLeaderBoard == leaderBoardTimeLine[0]
                          ? AppColors.darkBlue1
                          : AppColors.grey,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)
                      )),
                  child: Center(
                    child: Text(leaderBoardTimeLine[0],
                        style: TextStyle(
                            fontSize: 18,
                            color: selectedLeaderBoard ==
                                leaderBoardTimeLine[0]
                                ? AppColors.white
                                : AppColors.darkBlue1)),
                  ),
                ),
              ),
            ),
            Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedLeaderBoard = 'This Week';
                  });
                },
                child: Container(
                  width: 110,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: selectedLeaderBoard == leaderBoardTimeLine[1]
                          ? AppColors.darkBlue1
                          : AppColors.grey,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)
                      )),
                  child: Center(
                    child: Text(leaderBoardTimeLine[1],
                        style: TextStyle(
                            fontSize: 18,
                            color: selectedLeaderBoard ==
                                leaderBoardTimeLine[1]
                                ? AppColors.white
                                : AppColors.darkBlue1)),
                  ),
                ),
              ),
            ),
            Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedLeaderBoard = 'Today';
                  });
                },
                child: Container(
                  width: 110,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: selectedLeaderBoard == leaderBoardTimeLine[2]
                        ? AppColors.darkBlue1
                        : AppColors.grey,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)
                    ),),
                    child: Center(
                      child: Text(leaderBoardTimeLine[2],
                          style: TextStyle(
                              fontSize: 18,
                              color: selectedLeaderBoard ==
                                  leaderBoardTimeLine[2]
                                  ? AppColors.white
                                  : AppColors.darkBlue1)),
                    ),
                  ),
                ),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
