
import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greggy_schedule/utils/Color.dart';
import 'package:greggy_schedule/utils/Typography.dart';

class NewsCard extends StatefulWidget {
  final Widget child;
  final String date;
  final double star;
  final String title,review,lessons,time,starText;
  final String image;
  NewsCard({
    Key key,
    @required this.child,
    this.date,
    this.title,
    this.image,  this.review, this.lessons, this.time,  this.star, this.starText,
  }) : super(key: key);
  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
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
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 12.h),
              child: Text(
                widget.title,
                style: dm.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                    color: primaryText),
              ),
            ),
           Container(
             padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 12.h),
             child:  Row(
               children: [
                 Container(
                   child: Text(
                     "${widget.starText}",
                     style: dm.copyWith(
                         fontWeight: FontWeight.w700,
                         fontSize: 13.sp,
                         color: primaryText),
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.only(left: 4.w),
                   child: RatingBar.builder(
                     initialRating: widget.star,
                     minRating: 1,
                     glowColor: starColor,
                     direction: Axis.horizontal,
                     allowHalfRating: true,
                     itemCount: 5,
                     itemSize: 12.h,
                     itemBuilder: (context, _) => Icon(
                       FlevaIcons.star,
                       color: Colors.amber,
                     ),
                     onRatingUpdate: (rating) {
                       print(rating);
                     },
                   ),
                 ),
                 Container(
                   child: Text(
                     " (${widget.review} reviews)",
                     style: dm.copyWith(
                         fontSize: 13.sp,
                         color: reviewTextColor),
                   ),
                 ),
               ],
             ),
           ),
            Container(
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 12.h),
              child:  Row(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Icon(
                          FlevaIcons.file_text_outline,
                          color: iconUnColor,
                          size: 15.sp,
                        ),
                      ),
                      Container(
                        child: Text(
                          " ${widget.lessons} lessons",
                          style: dm.copyWith(
                              fontSize: 13.sp,
                              color: iconUnColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10.h,),
                  Row(
                    children: [
                      Container(
                        child: Icon(
                          FlevaIcons.clock_outline,
                          color: iconUnColor,
                          size: 15.sp,
                        ),
                      ),
                      Container(
                        child: Text(
                          " ${widget.time}",
                          style: dm.copyWith(
                              fontSize: 13.sp,
                              color: iconUnColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
