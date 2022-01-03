import 'package:flutter/material.dart';
import 'package:ui_nyx_wolves/constants.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Material(
              type: MaterialType.transparency,
              child: Container(
                  child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  bottomHeading[0],
                  style: TextStyle(fontSize: 10.0, color: AppColors.white),
                ),
              )),
            ),
            Container(
              width: 70.0,
              height: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(bottomImages[0]),
                ),
              ),
            ),
          ],
        ),
            Column(
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      bottomHeading[1],
                      style: TextStyle(fontSize: 10.0, color: AppColors.white),
                    ),
                  )),
                ),
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(bottomImages[1]),
                    ),
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      bottomHeading[2],
                      style: TextStyle(fontSize: 10.0, color: AppColors.white),
                    ),
                  )),
                ),
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(bottomImages[2]),
                    ),
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      bottomHeading[3],
                      style: TextStyle(fontSize: 10.0, color: AppColors.white),
                    ),
                  )),
                ),
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(bottomImages[3]),
                    ),
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      bottomHeading[4],
                      style: TextStyle(fontSize: 10.0, color: AppColors.white),
                    ),
                  )),
                ),
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(bottomImages[4]),
                    ),
                  ),
                ),
              ],
            ),


      ],
    );
  }
}
