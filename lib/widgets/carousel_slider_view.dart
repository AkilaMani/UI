import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ui_nyx_wolves/values/app_colors.dart';

import '../constants.dart';

class CarouselSliderView extends StatefulWidget {
  const CarouselSliderView({Key? key}) : super(key: key);

  @override
  _CarouselSliderViewState createState() => _CarouselSliderViewState();
}

class _CarouselSliderViewState extends State<CarouselSliderView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      height: 300,
      child: Center(
        child: CarouselSlider.builder(
          options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            // autoPlay: true,
          ),
          itemCount: programmingNames.length,
          itemBuilder: (BuildContext context, int index, int realIndex) =>
              ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: AppColors.carouselSlider[index]),
              ),
              width: 1050,
              height: 350,
              child: Stack(
                children: [
                  Positioned(
                    left: 10.0,
                    child: Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.teal),
                          color: AppColors.tealAccent),
                    ),
                  ),
                  Positioned(
                    top: 40.0,
                    left: 30.0,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text(programmingNames[index],
                          style: TextStyle(
                              color: AppColors.white, fontSize: 35.0)),
                    ),
                  ),
                  Positioned(
                    bottom: 50.0,
                    left: 20.0,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Players in Pool:',
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 15.0)),
                          Text('231/350',
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 15.0)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 20.0,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Price Money',
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 15.0)),
                          Text('Rs. 500',
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
        ),
      ),
    );
  }
}
