import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

import '../constants.dart';

class RoundedRectangularGrid extends StatefulWidget {
  const RoundedRectangularGrid({Key? key}) : super(key: key);

  @override
  _RoundedRectangularGridState createState() => _RoundedRectangularGridState();
}

class _RoundedRectangularGridState extends State<RoundedRectangularGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      color:AppColors.darkBlue1,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0,bottom: 10.0),
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          childAspectRatio: (2.5 / 1),
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(gridData.length, (index) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 1.0,
                  primary: AppColors.darkBlue1,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(width: 3.0, color: AppColors.white),
                  )),
              onPressed: () {},
              child: Center(
                child: Text(gridData[index],
                    style: const TextStyle(
                      fontSize: 10.0,
                      // fontFamily: ,
                      color: Colors.white,
                    )),
              ),
              // ),
            );
          }),
        ),
      ),
    );
  }
}
