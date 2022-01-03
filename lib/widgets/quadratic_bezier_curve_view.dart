import 'package:flutter/material.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

class QuadraticBezierCurveView extends StatefulWidget {
  const QuadraticBezierCurveView({Key? key}) : super(key: key);

  @override
  _QuadraticBezierCurveViewState createState() =>
      _QuadraticBezierCurveViewState();
}

class _QuadraticBezierCurveViewState extends State<QuadraticBezierCurveView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: AppColors.white,
            height: 210,
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: AppColors.darkBlue1,
            height: 200,
          ),
        ),
      ],
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


