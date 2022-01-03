import 'package:flutter/material.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlue1,
      child: SafeArea(

        child: Stack(
          children: [
            ClipPath(
              clipper: ClippingClassTop(),
              child: Container(height: 150, color: Colors.white),
            ),
            ClipPath(
              clipper: ClippingClass(),
              child: Container(height: 140, color: AppColors.darkBlue1),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                //menu widget
                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: AppColors.white),
                  child: Icon(
                    Icons.menu,
                    color: AppColors.blue,
                  ),
                ),
                SizedBox(width: 10),
                //avatar widget
                Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.blue),
                      color: AppColors.white),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/man.jpg'),
                  ),
                ),
                // Flexible(
                //   flex: 1,
                //   fit:FlexFit.tight,
                //   child:
                Column(
                  children: [
                    SizedBox(
                      height: 50.0,
                      child: Stack(children: [
                        textWidget(20, AppColors.white),
                        textWidget(19, AppColors.blue)
                      ]),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          child: Stack(children: [
                            starIcon(20, AppColors.white),
                            starIcon(16, AppColors.blue),
                          ]),
                        ),
                        SizedBox(
                            width: 40,
                            child: Stack(children: [
                              numberWidget(20, AppColors.white),
                              numberWidget(19, AppColors.blue),
                            ])),
                      ],
                    )
                  ],
                ),
                // ),
                SizedBox(
                  height: 100.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Material(
                        type: MaterialType.transparency,
                        child: Container(
                          width: 70.0,
                          height: 20.0,
                          child: Center(
                            child: Text(
                              'Cash Mode',
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 12.0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 30.0,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/toggle.png'),
                          ),
                        ),
                      ),
                      Material(
                        type: MaterialType.transparency,
                        child: Container(
                          width: 70.0,
                          height: 20.0,
                          child: Center(
                            child: Text('Free Mode',
                                style: TextStyle(
                                    color: AppColors.white1, fontSize: 12.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80.0,
                  height: 90.0,
                  child: Center(
                    child: Stack(
                      children: [
                        Image.asset('assets/images/green_toggle.png'),
                        Positioned(
                          top: 10.0,
                          left: 10.0,
                          child: Container(
                            width: 70,
                            height: 30,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  'Rs',
                                  style: TextStyle(
                                      color: AppColors.blue, fontSize: 8.0),
                                ),
                                Text('2456',
                                    style: TextStyle(color: AppColors.blue,fontSize: 10.0)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget starIcon(double size, Color color) {
    return Container(
      height: 48,
      width: 48,
      alignment: Alignment.center,
      child: Icon(
        Icons.star,
        color: color,
        size: size,
      ),
    );
  }

  Widget textWidget(double size, Color color) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: 48,
        width: 48,
        alignment: Alignment.center,
        child: Text(
          'John Doe',
          style: TextStyle(color: color, fontSize: size),
        ),
      ),
    );
  }

  Widget numberWidget(double size, Color color) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: 48,
        width: 48,
        alignment: Alignment.center,
        child: Text(
          '10',
          style: TextStyle(color: color, fontSize: size),
        ),
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ClippingClassTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
