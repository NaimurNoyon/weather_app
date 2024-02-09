import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/Utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: AppColors.colorPrimary,
                size: 22.sp,
              ),
              Text(
                "Rajshahi, Bangladesh",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.colorPrimary,
                  spreadRadius: -2.0,
                  blurRadius: 10,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text("Sunday, 8 March 2024"),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          slider(),
          SizedBox(
            height: 40.h,
          ),
          Container(
            height: 100.h,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: AppColors.colorPrimary,
                  spreadRadius: -2.0,
                  blurRadius: 40,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            height: 180,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                if(index == 5){
                  return SizedBox(
                    width: 20,
                  );
                }
                else{
                  return Container(
                    height: 50.h,
                    width: 120.w,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }

  //CarouselSlider Widget
  Widget slider() {
    return CarouselSlider(
      items: [
        Container(
          height: 250,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.colorPrimary,
            gradient: LinearGradient(
              colors: [
                AppColors.colorPrimary,
                AppColors.colorPrimaryLight,
                AppColors.colorPrimaryLight,
                AppColors.colorPrimary,
              ],
              // Three colors: blue, green, and red
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              stops: [0.0, 0.3, 0.7, 0.9],
              // Adjust stops for a smooth transition
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        Container(
          height: 250,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.colorPrimary,
            gradient: LinearGradient(
              colors: [
                AppColors.colorPrimary,
                AppColors.colorPrimaryLight,
                AppColors.colorPrimaryLight,
                AppColors.colorPrimary,
              ],
              // Three colors: blue, green, and red
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              stops: [0.0, 0.3, 0.7, 0.9],
              // Adjust stops for a smooth transition
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        Container(
          height: 250,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.colorPrimary,
            gradient: LinearGradient(
              colors: [
                AppColors.colorPrimary,
                AppColors.colorPrimaryLight,
                AppColors.colorPrimaryLight,
                AppColors.colorPrimary,
              ],
              // Three colors: blue, green, and red
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              stops: [0.0, 0.3, 0.7, 0.9],
              // Adjust stops for a smooth transition
              tileMode: TileMode.clamp,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
          height: 200.h,
          enlargeCenterPage: true,
          autoPlay: false,
          aspectRatio: 9 / 16,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.65,
          onPageChanged: (index, reason) {
            /*setState(() {
              _currentPage = index;
            });*/
          }),
    );
  }
}
