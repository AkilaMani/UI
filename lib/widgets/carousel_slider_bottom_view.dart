import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

import '../constants.dart';

class CaraouselSliderBottomView extends StatefulWidget {
  const CaraouselSliderBottomView({Key? key}) : super(key: key);

  @override
  _CaraouselSliderBottomViewState createState() =>
      _CaraouselSliderBottomViewState();
}

class _CaraouselSliderBottomViewState extends State<CaraouselSliderBottomView> {


  @override
  Widget build(BuildContext context) {

   int findMax(List<int> cashBottomGreater) {
     return cashBottomGreater.reduce(max);
   }
   print(findMax(cashBottomGreater));
    return Container(
      // width: 500,
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: peopleName.length,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Center(
              child: Container(
                width: cashBottomGreater[index] == findMax(cashBottomGreater) ? 120 : 100,
                height: cashBottomGreater[index] == findMax(cashBottomGreater) ? 160 : 130,
                margin: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey,width: 3.0),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: AppColors.carouselSliderBottom[index]),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left:15,
                      child: Material(
                        type: MaterialType.transparency,
                        child: Text(peopleName[index],
                            style: TextStyle(
                                color: AppColors.white, fontSize: 18.0)),
                      ),
                    ),
                    Positioned(
                      bottom: 30.0,
                      left: 20.0,
                      child: Material(
                        type: MaterialType.transparency,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Cash Won:',
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 15.0)),
                            Text('Rs.${cashBottom[index]}',
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 15.0)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
