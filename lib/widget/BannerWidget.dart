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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: secondText,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: secondText,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                          width: 100.w,
                          height: 80.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: circleColor,
                                width: 19.w,
                                style: BorderStyle.solid
                            ),
                          )
                      ),
                      left: -40.w,
                      top: -20.h,
                    ),
                    Container(
                      // padding: EdgeInsets.all(14.h),
                      padding: EdgeInsets.only(top: 20.h, left: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                  padding:
                                      EdgeInsets.only(left: 20.w, right: 20.w),
                                  decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.all(
                                        Radius.circular(10.0)),
                                    gradient: new LinearGradient(
                                        colors: [
                                          const Color(0xFFFFC93C),
                                          const Color(0xFFFFA41B),
                                        ],
                                        begin: const FractionalOffset(0.0, 0.0),
                                        end: const FractionalOffset(1.0, 0.0),
                                        stops: [0.0, 1.0],
                                        tileMode: TileMode.clamp),
                                  ),
                                  height: 27.h,
                                  width: 140.w,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Upgrade Now",
                                    style: dm.copyWith(
                                        color: whiteText,
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
                    Positioned(
                      child: Container(
                          width: 120.w,
                          height: 150.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: circleColor,
                                width: 19.w,
                                style: BorderStyle.solid
                            ),
                          )
                      ),
                      right: -30.w,
                      bottom: -50.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 20.w),
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
