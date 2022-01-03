import 'package:flutter/material.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

import '../constants.dart';

class GridViewCompany extends StatefulWidget {
  const GridViewCompany({Key? key}) : super(key: key);

  @override
  _GridViewCompanyState createState() => _GridViewCompanyState();
}

class _GridViewCompanyState extends State<GridViewCompany> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlue1,
      // height: 850,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Container(
          //   color: AppColors.darkBlue1,
          //   height: 550,
          // ),
          Container(
            height: 500,
            child: GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              childAspectRatio: (1 / 1.3),
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(gridCompany.length, (index) {
                return Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: AppColors.grey, width: 3.0),
                  ),
                  child: Image.asset(gridCompany[index]),
                );
              }),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: ClipPath(
          //     clipper: WaveClipper(),
          //     child: Container(
          //       color: AppColors.darkBlue1,
          //       height: 200,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.moveTo(0, size.height * 0.55);
    // path.quadraticBezierTo(size.width * 0.25, size.height * 0.3, size.width * 0.6, size.height * 0.6);
    // path.quadraticBezierTo(size.width * 0.85, size.height * 0.8, size.width * 1.0, size.height * 0.6);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);
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
