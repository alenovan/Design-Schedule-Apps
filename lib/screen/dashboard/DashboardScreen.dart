import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greggy_schedule/utils/Color.dart';
import 'package:greggy_schedule/utils/Images.dart';
import 'package:greggy_schedule/utils/Typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greggy_schedule/widget/AppsMenu.dart';
import 'package:greggy_schedule/widget/NewsCard.dart';
import 'package:unicons/unicons.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}


final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];


class _DashboardScreenState extends State<DashboardScreen> {

  final List<Widget> imageSliders = imgList.map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'No. ${imgList.indexOf(item)} image',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    ),
  )).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Container(
          margin: EdgeInsets.only(top: 50.h),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.w, right: 20.w),
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
                      Container(
                          margin: EdgeInsets.only(right: 5.w),
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
                          child: Icon(UniconsLine.search,color: primaryColor,size: 19.sp,)),
                      Container(
                          height: 30.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage("https://www.desktopbackground.org/download/1920x1080/2012/12/10/497152_abstract-colored-texture_1920x1200_h.jpg"),
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
                          aspectRatio: 2.2,
                          enlargeCenterPage: true,
                        ),
                        items: imageSliders,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.h, left: 20.w, right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Categories",style: dm.copyWith(color: primaryText,fontWeight: FontWeight.w700,fontSize: 20.sp),),
                          Text("See All",style: dm.copyWith(color: secondText,fontWeight: FontWeight.w700,fontSize: 17.sp),)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.h, left: 20.w, right: 20.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          new Expanded(
                            child: AppsMenu(
                              title: "Design",
                              icon: Boxicons.bxs_paint_roll,
                              child: Text("Aaa"),
                            ),
                            flex: 1,
                          ),
                          SizedBox(width: 6.w,),
                          new Expanded(
                            child: AppsMenu(
                              title: "Coding",
                              icon: Boxicons.bx_code,
                              child: Text("Aaa"),
                            ),
                            flex: 1,
                          ),
                          SizedBox(width: 6.w,),
                          new Expanded(
                            child: AppsMenu(
                              title: "Cooking",
                              icon: Boxicons.bxs_cookie,
                              child: Text("Aaa"),
                            ),
                            flex: 1,
                          ),
                          SizedBox(width: 6.w,),
                          new Expanded(
                            child: AppsMenu(
                              title: "Language",
                              icon: Boxicons.bxs_book,
                              child: Text("Aaa"),
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.h, left: 20.w, right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Popular Courses",style: dm.copyWith(color: primaryText,fontWeight: FontWeight.w700,fontSize: 20.sp),),
                          Text("See All",style: dm.copyWith(color: secondText,fontWeight: FontWeight.w700,fontSize: 17.sp),)
                        ],
                      ),
                    ),

                    Container(
                      height: 200.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 18.w),
                            child: NewsCard(
                              image:
                              "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                              title: "Peluncuran Program Bantuan Pemerintah 2020",
                              date: "21 Oktober 2020",
                            ),
                          ),
                          NewsCard(
                            image:
                            "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                            title: "Peluncuran Program Bantuan Pemerintah 2020",
                            date: "21 Oktober 2020",
                          ),
                          NewsCard(
                            image:
                            "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                            title: "Peluncuran Program Bantuan Pemerintah 2020",
                            date: "21 Oktober 2020",
                          ),
                          NewsCard(
                            image:
                            "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                            title: "Peluncuran Program Bantuan Pemerintah 2020",
                            date: "21 Oktober 2020",
                          ),
                          NewsCard(
                            image:
                            "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                            title: "Peluncuran Program Bantuan Pemerintah 2020",
                            date: "21 Oktober 2020",
                          ),
                          NewsCard(
                            image:
                            "https://ichef.bbci.co.uk/live-experience/cps/800/cpsprodpb/B1C9/production/_116831554_f4a67123-aade-49bb-adb8-77a123b3a0e1.jpg",
                            title: "Peluncuran Program Bantuan Pemerintah 2020",
                            date: "21 Oktober 2020",
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          )
        ));
  }
}

