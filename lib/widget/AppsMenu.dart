
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greggy_schedule/utils/Color.dart';
import 'package:greggy_schedule/utils/Typography.dart';

class AppsMenu extends StatefulWidget {
  final Widget child;
  final String title;
  final IconData icon;

  const AppsMenu({
    Key key,
    this.child,
    this.title,
    this.icon,
  }) : super(key: key);
  @override
  _AppsMenuState createState() => _AppsMenuState();
}

class _AppsMenuState extends State<AppsMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Container(
                height: 50.h,
                width: 60.w,
                child: Align(
                    child: Container(
                      width: 50.w,
                      height: 45.h,
                      child: ClipRRect(
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0),
                            bottomLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0),
                          ),
                          child: Icon(widget.icon,color: secondText,size: 28.sp,)),
                    ))),
            decoration: new BoxDecoration(
              color: boxColor,
              borderRadius: new BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.h),
            child: Text(
              "${widget.title}",
              style: dm.copyWith(
                  color: primaryText, fontWeight: FontWeight.w700, fontSize: 13.sp),
            ),
          )
        ],
      ),
    );
  }
}
