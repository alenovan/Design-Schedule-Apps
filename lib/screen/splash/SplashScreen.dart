import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:greggy_schedule/utils/Color.dart';
import 'package:greggy_schedule/utils/Images.dart';
import 'package:greggy_schedule/utils/Typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.w,right: 10.h,bottom: 22.h),
              alignment: Alignment.center,
              child: Image.asset(splashIcons),
            ),
            // Container(
            //   margin: EdgeInsets.only(left: 10.w,right: 10.h,bottom: 10.h),
            //   alignment: Alignment.center,
            //   child: Text("Find your talent!",style: dm.copyWith(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 37.sp),),
            // ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left:20.w,bottom: 10.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Find Your",style: dm.copyWith(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 34.sp),),
                  DefaultTextStyle(
                    style: dm.copyWith(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 32.sp),
                    child: AnimatedTextKit(
                        animatedTexts: [
                            TypewriterAnimatedText(
                            ' Talent !',
                              textStyle: dm.copyWith(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 32.sp),
                              speed: const Duration(milliseconds: 100),
                          ),
                          TypewriterAnimatedText(
                            ' Passion !',
                            textStyle: dm.copyWith(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 32.sp),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.w,right: 40.w,bottom: 2.h),
              child: Text("By studying here, you can discover your hidden talents!",style: dm.copyWith(color: Colors.white54,fontSize: 19.sp,height: 1.3),textAlign: TextAlign.center,),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.w,right: 40.h,top: 50.h),
              height: 55.h,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.all(Radius.circular(20.0)),
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
              child: Text("Start Learning Now!",style: dm.copyWith(color: Colors.white,fontSize: 19.sp,height: 1.3,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    );
  }
}
