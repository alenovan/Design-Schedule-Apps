
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greggy_schedule/utils/Color.dart';
import 'package:greggy_schedule/utils/Typography.dart';

class NewsCard extends StatefulWidget {
  final Widget child;
  final int type;
  final String date;
  final String title;
  final String image;
  NewsCard({
    Key key,
    @required this.child,
    this.type,
    this.date,
    this.title,
    this.image,
  }) : super(key: key);
  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 1.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                topRight: const Radius.circular(10.0),
              ),
              child: Image.network(widget.image),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h),
              child: Text(
                widget.date,
                style: dm.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: primaryText),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 12.h),
              child: Text(
                widget.title,
                style: dm.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                    color: primaryText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
