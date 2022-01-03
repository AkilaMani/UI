import 'package:flutter/material.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';
import 'package:ui_nyx_wolves/widgets/quadratic_bezier_curve_view.dart';

import '../constants.dart';

class RoundeRectangularCompany extends StatefulWidget {
  const RoundeRectangularCompany({Key? key}) : super(key: key);

  @override
  _RoundeRectangularCompanyState createState() =>
      _RoundeRectangularCompanyState();
}

class _RoundeRectangularCompanyState extends State<RoundeRectangularCompany> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color:AppColors.darkBlue1,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Stack(

          children: [
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: AppColors.white,
                height: 200,
              ),
            ),
            GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              childAspectRatio: (1 / 1.3),
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(gridCompany.length, (index) {
                return Container(
                  // width: 50,
                  // height: 70,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: AppColors.grey, width: 3.0),
                  ),
                  child: Image.asset(gridCompany[index]),
                );
              }),
            ),

          ],
        ),
      ),
    );
  }
}
