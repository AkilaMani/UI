import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

import '../constants.dart';
class RecentlyPlayed extends StatefulWidget {
  const RecentlyPlayed({Key? key}) : super(key: key);

  @override
  _RecentlyPlayedState createState() => _RecentlyPlayedState();
}

class _RecentlyPlayedState extends State<RecentlyPlayed> {
  String recentlyPlayed = gridCompany[0];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      color: AppColors.white,
      child: ListView.builder(

        scrollDirection: Axis.horizontal,

        itemCount: gridCompany.length,
        itemBuilder: (BuildContext context, int index) {
          return Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: (){
                setState(() {
                  recentlyPlayed = gridCompany[index];
                });
              },
              child: Center(
                child: Container(
                  // margin: const EdgeInsets.only(top:30.0),
                  height: recentlyPlayed == gridCompany[index] ? 130:100.0,
                  width: recentlyPlayed == gridCompany[index] ? 110:80.0,
                  decoration: BoxDecoration(
                    color: recentlyPlayed == gridCompany[index] ? AppColors.deepOrange:AppColors.grey,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: recentlyPlayed == gridCompany[index] ?AppColors.grey:AppColors.white1, width: 3.0),
                  ),
                  child: Image.asset(gridCompany[index]),
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}
