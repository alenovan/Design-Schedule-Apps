import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greggy_schedule/utils/Color.dart';
import 'package:greggy_schedule/utils/Images.dart';
import 'package:greggy_schedule/utils/Typography.dart';

class BannerWidget extends StatefulWidget {
  final Widget child;
  final String title;
  final String sub;

  BannerWidget({
    Key key,
    @required this.child,
    this.title,
    this.sub,
  }) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: secondText,
              ),
              child: Stack(
                children: [
                  Container(
                    // padding: EdgeInsets.all(14.h),
                    padding: EdgeInsets.only(top: 20.h,left: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${widget.title}",
                                style: dm.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: whiteText),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Text(
                                "${widget.sub}",
                                style: dm.copyWith(
                                    fontSize: 14.sp, color: Colors.white54),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                                decoration: new BoxDecoration(
                                  color: whiteText,
                                  borderRadius:
                                  new BorderRadius.all(Radius.circular(10.0)),
                                ),
                                height: 24.h,
                                width: 120.w,
                                alignment: Alignment.center,
                                child: Text(
                                  "Upgrade Now",
                                  style: dm.copyWith(
                                      color: secondText,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        Container(
                          child: Text(""),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      child: Image.asset(
                        circleRight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 30.w),
              child: Image.asset(
                plansIconsPng,
                height: 70.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
