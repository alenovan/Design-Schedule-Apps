import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greggy_schedule/utils/Color.dart';
import 'package:greggy_schedule/utils/Images.dart';
import 'package:greggy_schedule/utils/Typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greggy_schedule/widget/AppsMenu.dart';
import 'package:greggy_schedule/widget/BannerWidget.dart';
import 'package:greggy_schedule/widget/NewsCard.dart';
import 'package:unicons/unicons.dart';

class DashboardScreen extends StatelessWidget {
  final List<String> imgList = [
    'Upgrade Your Plan',
    'Get The Code',
    'Team work is important'
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map(
          (item) => BannerWidget(
            title: item,
            sub: "Education is important, so learn more to be successful!",
          ),
        )
        .toList();

    return Container(
      margin: EdgeInsets.only(top: 50.h),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.w),
                child: RichText(
                  text: TextSpan(
                    text: 'Hi, ',
                    style: dm.copyWith(color: primaryText, fontSize: 22.sp),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Greg!',
                          style: dm.copyWith(
                              color: primaryText,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      print("search button");
                    },
                    child: Container(
                        margin: EdgeInsets.only(right: 15.w),
                        height: 30.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(2, 6),
                                  color: greyVeryYoung)
                            ]),
                        child: Icon(
                          FlevaIcons.search,
                          color: primaryColor,
                          size: 25.sp,
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 10.w),
                      height: 30.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://www.desktopbackground.org/download/1920x1080/2012/12/10/497152_abstract-colored-texture_1920x1200_h.jpg"),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset: Offset(2, 6),
                                color: greyVeryYoung)
                          ]),
                      child: Text(""))
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20.h),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.5,
                      enlargeCenterPage: true,
                    ),
                    items: imageSliders,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(bottom: 20.h, left: 20.w, right: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: dm.copyWith(
                            color: primaryText,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp),
                      ),
                      Text(
                        "See All",
                        style: dm.copyWith(
                            color: secondText,
                            fontWeight: FontWeight.w700,
                            fontSize: 17.sp),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(bottom: 20.h, left: 20.w, right: 20.w),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      new Expanded(
                        child: AppsMenu(
                          title: "Design",
                          icon: Boxicons.bxs_paint_roll,
                          child: Text("Aaa"),
                        ),
                        flex: 1,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      new Expanded(
                        child: AppsMenu(
                          title: "Coding",
                          icon: Boxicons.bx_code,
                          child: Text("Aaa"),
                        ),
                        flex: 1,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      new Expanded(
                        child: AppsMenu(
                          title: "Cooking",
                          icon: Boxicons.bxs_cookie,
                          child: Text("Aaa"),
                        ),
                        flex: 1,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      new Expanded(
                        child: AppsMenu(
                          title: "Language",
                          icon: Boxicons.bxs_book,
                          child: Text(""),
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(bottom: 20.h, left: 20.w, right: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Courses",
                        style: dm.copyWith(
                            color: primaryText,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp),
                      ),
                      Text(
                        "See All",
                        style: dm.copyWith(
                            color: secondText,
                            fontWeight: FontWeight.w700,
                            fontSize: 17.sp),
                      )
                    ],
                  ),
                ),
                // BannerWidget(
                //   title: "Upgrade your plans",
                //   sub: "Education is important, so learn more to be successful!",
                // ),
                Container(
                  height: 215.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 18.w),
                        child: NewsCard(
                          image:
                              "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                          title: "User Interface Trends in 2020",
                          time: "4h 1m",
                          lessons: "5",
                          starText: "5.0",
                          review: "255",
                          star: 5.0,
                        ),
                      ),
                      NewsCard(
                        image:
                        "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                        title: "User Interface Trends in 2020",
                        time: "4h 1m",
                        lessons: "5",
                        starText: "5.0",
                        review: "255",
                        star: 5.0,
                      ),
                      NewsCard(
                        image:
                        "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                        title: "User Interface Trends in 2020",
                        time: "4h 1m",
                        lessons: "5",
                        starText: "5.0",
                        review: "255",
                        star: 5.0,
                      ),
                      NewsCard(
                        image:
                        "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                        title: "User Interface Trends in 2020",
                        time: "4h 1m",
                        lessons: "5",
                        starText: "5.0",
                        review: "255",
                        star: 5.0,
                      ),
                      NewsCard(
                        image:
                        "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                        title: "User Interface Trends in 2020",
                        time: "4h 1m",
                        lessons: "5",
                        starText: "5.0",
                        review: "255",
                        star: 5.0,
                      ),
                      NewsCard(
                        image:
                        "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                        title: "User Interface Trends in 2020",
                        time: "4h 1m",
                        lessons: "5",
                        starText: "5.0",
                        review: "255",
                        star: 5.0,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
